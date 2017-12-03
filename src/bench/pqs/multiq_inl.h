/*
 *  Copyright 2015 Jakob Gruber
 *
 *  This file is part of kpqueue.
 *
 *  kpqueue is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  kpqueue is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with kpqueue.  If not, see <http://www.gnu.org/licenses/>.
 */

static thread_local kpq::xorshf96 local_rng;
static thread_local bool isFirstDelMin = 1;
static thread_local std::mt19937 rng;
static thread_local std::uniform_real_distribution<float> rnd_f(0.0, 1.0);

template <class K, class V, int C>
multiq<K, V, C>::multiq(const size_t num_threads, const double beta) :
    m_num_threads(num_threads), m_beta(beta)
{
    m_queues = new local_queue[num_queues()]();
    m_locks = new local_lock[num_queues()]();
}

template <class K, class V, int C>
multiq<K, V, C>::~multiq()
{
    delete[] m_queues;
    delete[] m_locks;
}

template <class K, class V, int C>
bool
multiq<K, V, C>::delete_min(K &key, V &value)
{
    if (isFirstDelMin)
    {
        rng.seed(local_rng() % 1000000000);
    }
    isFirstDelMin = 0;
    
    const int nqueues = num_queues();
    size_t i, j;
    int retry_count = 0;
    while (true) {
        if (rnd_f(rng) <= m_beta) //with probability m_beta
        {
            /*pick two queues at random and lock the one with a minimum value on top*/
            do {
                i = local_rng() % nqueues;
                j = local_rng() % nqueues;

                if (m_queues[i].m_top > m_queues[j].m_top) {
                    std::swap(i, j);
                }
            } while (!lock(i));
        }
        else //with probability 1-m_beta
        {
            /*pick one queue at random and lock it*/
            do {
                i = local_rng() % nqueues;
            } while (!lock(i));
        }
        auto &pq = m_queues[i].m_pq;
        const auto item = pq.top();

        if (item.key == SENTINEL_KEY) {
            // Empty queue, retry a few times.
            // TODO: Not a permanent solution
            unlock(i);
            if (retry_count == 0) {
                return false;
            } else {
                retry_count--;
                continue;
            }
        } else {
            key = item.key;
            value = item.value;
            pq.pop();
            unlock(i);
            return true;
        }
    }

    assert(false);  // Never reached.
    return false;
}


template <class K, class V, int C>
bool
multiq<K, V, C>::delete_min(V &value)
{
    K key;
    return delete_min(key, value);
}

template <class K, class V, int C>
void
multiq<K, V, C>::insert(const K &key,
                        const V &value)
{
    /* Lock a random priority queue and insert into it. */

    const int nqueues = num_queues();
    size_t i;

    do {
        i = local_rng() % nqueues;
    } while (!lock(i));

    m_queues[i].m_pq.emplace(key, value);
    m_queues[i].m_top = m_queues[i].m_pq.top().key;

    unlock(i);
}

template <class K, class V, int C>
bool
multiq<K, V, C>::lock(const size_t ix)
{
    bool expected = false;
    return m_locks[ix].m_is_locked.compare_exchange_strong(
            expected, true, std::memory_order_relaxed);
}

template <class K, class V, int C>
void
multiq<K, V, C>::unlock(const size_t ix)
{
    bool expected = true;
    const bool succeeded = m_locks[ix].m_is_locked.compare_exchange_strong(
                    expected, false, std::memory_order_relaxed);
    assert(succeeded), (void)succeeded;
}

template <class K, class V, int C>
void multiq<K, V, C>::print() const
{
    /* NOP */
}
