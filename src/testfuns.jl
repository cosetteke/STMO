#=
Created on Monday 13 January 2020
Last update: -

@author: Michiel Stock
michielfmstock@gmail.com

Test functions for optimization
=#

module TestFuns

using LinearAlgebra

# Branin function
function branin((x1,x2); a=1, b=5.1/(4pi^2), c=5/pi, r=6, s=10, t=1/8pi)
    return a * (x2 - b * x1^2 + c * x1 - r)^2 + s * (1 - t) * cos(x1) + s
end

booth((x1, x2)) = (x1+2x2-7)^2 + (2x1+x2-5)^2

# Rosenbrock
rosenbrock((x1, x2); a=1, b=5) = (a-x1)^2 + b*(x2-x1^2)^2

rastrigine(x; A=10) = length(x) * A + sum(x.^2 .+ A * cos.(2pi*x))

function flower(x; a=1, b=1, c=4)
    return a * norm(x) + b * sin(c*atan(x[2], x[1]))
end

export branin, rosenbrock, rastrigine, flower
end  # module TestFuns
