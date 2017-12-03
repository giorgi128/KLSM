# CMake generated Testfile for 
# Source directory: /home/giorgi128/KLSM/test
# Build directory: /home/giorgi128/KLSM/build/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(pq-par-test "/home/giorgi128/KLSM/build/test/pq-par-test")
ADD_TEST(pq-seq-test "/home/giorgi128/KLSM/build/test/pq-seq-test")
ADD_TEST(relaxed-pq-seq-test "/home/giorgi128/KLSM/build/test/relaxed-pq-seq-test")
SUBDIRS(shared_lsm)
SUBDIRS(util)
