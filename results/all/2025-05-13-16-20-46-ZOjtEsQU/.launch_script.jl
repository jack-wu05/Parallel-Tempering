using Serialization
using Pigeons
using Turing
Pigeons.mpi_active_ref[] = true

pt_arguments = 
    try
        Pigeons.deserialize_immutables!(raw"/Users/jackwu/Desktop/research/results/all/2025-05-13-16-20-46-ZOjtEsQU/immutables.jls")
        deserialize(raw"/Users/jackwu/Desktop/research/results/all/2025-05-13-16-20-46-ZOjtEsQU/.pt_argument.jls")
    catch e
        println("Hint: probably missing dependencies, use the dependencies argument in MPIProcesses() or ChildProcess()")
        rethrow(e)
    end

pt = PT(pt_arguments, exec_folder = raw"/Users/jackwu/Desktop/research/results/all/2025-05-13-16-20-46-ZOjtEsQU")
pigeons(pt)
