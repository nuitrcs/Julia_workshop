function findpi(n)
           inside = 0
           for i = 1:n
               x, y = rand(2) * 2 - 1
               if (x^2 + y^2 <= 1)
                   inside +=1
               end
           end
           pi = 4.0 * inside / n
           println("pi: $pi")
       end


function parallel_findpi(n)
           inside = @parallel (+) for i = 1:n
               x, y = rand(2) * 2 - 1
               x^2 + y^2 <= 1 ? 1 : 0
           end
           pi = 4.0 * inside / n
           println("pi: $pi")
       end
x=nprocs()
println("number of procs : $x")
if x == 1
	@time findpi(100000000)
else
	@time parallel_findpi(100000000)
end
