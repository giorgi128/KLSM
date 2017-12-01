
import subprocess
import timeit
import shlex


NREPEATS = 5  #number of times to call  in order to measure average time
version = "multiqC1"

#build kpqueue
cmd = "make"
args = shlex.split(cmd)
subprocess.call(args)

def Run(beta):
    
    cntthreads = [1, 2, 4, 6, 8, 10, 12, 14, 16]
    nthreads = 1
    for nthreads in cntthreads:
        #run concurrent Dijkstra with betanthreads #threads
        
        cmd = "./build/src/bench/random          -i 10000000"+ " -p " + str(nthreads)+ \
            " -b "+str(1.0*beta/20)+          \
                " " + version
        args = shlex.split(cmd)
        
        t = 0.0
        
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
