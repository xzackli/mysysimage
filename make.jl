#!/usr/bin/env julia 

import Pkg
Pkg.add("PackageCompiler")
using PackageCompiler

packages = [
    :Revise, :OhMyREPL,
    :PyCall, :IJulia, :PyPlot,
    # :FileIO, :JLD2, :CSV, :DataFrames
]

# Pkg.update()
# for package in packages
#     Pkg.add(string(package))
# end

# add in the current python using the output of `which python`
# pythonbin = read(`which python`, String)
# pythonbin = replace(pythonbin, "\n" => "")
# ENV["PYTHON"] = pythonbin
# Pkg.build("PyCall")
# println("Python ", ENV["PYTHON"])
# Pkg.precompile()

create_sysimage(
    packages; 
    precompile_statements_file = "precompile_statements.jl",
    precompile_execution_file = "precompile_execution.jl", 
    sysimage_path = "mysys.dylib",
    script = "script.jl"
)
