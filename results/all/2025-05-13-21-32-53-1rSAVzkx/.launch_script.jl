using Serialization
using Pigeons
include(raw"/Users/jackwu/Desktop/research/Pigeons")
include(raw"/Users/jackwu/Desktop/research/Turing")
include(raw"/Users/jackwu/Desktop/research/DynamicPPL")
include(raw"/Users/jackwu/Desktop/research/Distributions")
include(raw"/Users/jackwu/Desktop/research/Random")
Pigeons.mpi_active_ref[] = true

pt_arguments = 
    try
        Pigeons.deserialize_immutables!(raw"/Users/jackwu/Desktop/research/results/all/2025-05-13-21-32-53-1rSAVzkx/immutables.jls")
        deserialize(raw"/Users/jackwu/Desktop/research/results/all/2025-05-13-21-32-53-1rSAVzkx/.pt_argument.jls")
    catch e
        println("Hint: probably missing dependencies, use the dependencies argument in MPIProcesses() or ChildProcess()")
        rethrow(e)
    end

pt = PT(pt_arguments, exec_folder = raw"/Users/jackwu/Desktop/research/results/all/2025-05-13-21-32-53-1rSAVzkx")
pigeons(pt)
