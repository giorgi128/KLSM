
import subprocess
import timeit
import shlex
NREPEATS = 5  #number of times to call Dijkstra in order to measure average time
version = "multiqC1"

#build kpqueue
cmd = "make"
args = shlex.split(cmd)
subprocess.call(args)

def Run(beta):
    
    cntthreads = [1,2,4,6,8,10,12]
    nthreads = 1
    seed = 0
    for nthreads in cntthreads:
        seed+=1
        
        cmd = "./build/src/bench/file_shortest_paths -n " + str(nthreads)+ \
            " -b "+str(1.0*beta/20)+          \
            " -s "+str(seed)+" -i roadNet-CA.txt "+version
        args = shlex.split(cmd)
        
        t = 0
        
        for i in range(0, NREPEATS):
            
            st = subprocess.check_output(args)
            t  += float(st)
    
        print version+" "+str(nthreads)+" "+str(t/NREPEATS)

version = "linden"
Run(0)

version = "klsm256"
Run(0)


version = "multiqC1"
beta = 0

while beta <= 20:
    
    print "beta="+str(1.0*beta/20)
    Run(beta)
   
    beta += 5

