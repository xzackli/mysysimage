#!/usr/bin/env julia 

@time begin
    println(Threads.nthreads())
    using Plots
    x = 1:0.1:10; y = sin.(x);
    plot(x, y)
end

##

@time begin
    using StatsPlots
    histogram(rand(100))
end

##

@time begin
    using DataFrames, CSV
    df = DataFrame(A = 1:4, B = ["M", "F", "F", "M"])
    CSV.write("example.csv", df)
    df = CSV.read("example.csv")
    run(`rm example.csv`)
end

##

@time begin
    using JLD2, FileIO
    hello = "world"
    foo = :bar
    bar = [1.0, 2.0, 5.0]
    JLD2.@save "example.jld2" hello foo bar
    run(`rm example.jld2`)
end


