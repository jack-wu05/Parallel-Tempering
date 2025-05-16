using Serialization
using Pigeons
include(raw"/Users/jackwu/Desktop/research/code")
Pigeons.mpi_active_ref[] = true

pt_arguments = 
    try
        Pigeons.deserialize_immutables!(raw"/Users/jackwu/Desktop/research/results/all/2025-05-13-22-36-37-FWFd4ZK4/immutables.jls")
        deserialize(raw"/Users/jackwu/Desktop/research/results/all/2025-05-13-22-36-37-FWFd4ZK4/.pt_argument.jls")
    catch e
        println("Hint: probably missing dependencies, use the dependencies argument in MPIProcesses() or ChildProcess()")
        rethrow(e)
    end

pt = PT(pt_arguments, exec_folder = raw"/Users/jackwu/Desktop/research/results/all/2025-05-13-22-36-37-FWFd4ZK4")
pigeons(pt)
