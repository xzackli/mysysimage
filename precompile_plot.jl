#!/usr/bin/env julia 

@time begin
    println(Threads.nthreads())
    using Plots
    x = 1:10; y = rand(10); # These are the plotting data
    plot(x, y)
end

@time begin
    using StatsPlots
    histogram(rand(100))
end

##
