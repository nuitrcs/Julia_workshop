x=nprocs()
y=workers()
println("number of procs: $x ")
println("workers: $y")

W1 = workers()[1];
P1 = remotecall(x -> factorial(x),W1,20)
result=fetch(P1)
println("remote result: $result ")

P2 = @spawnat W1 rand() * result
result2 = fetch(P2)
println("remote result modified: $result2 ")
