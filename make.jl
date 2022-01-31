#!/usr/bin/env julia

import Pkg
Pkg.update()
Pkg.add("PackageCompiler")

using PackageCompiler


packages = [
    :Revise, :OhMyREPL, :PyCall, :IJulia,
    :Plots,
    :FileIO, :JLD2, :DataFrames,
    :CSV, :BenchmarkTools,
    :StaticArrays
]


create_sysimage(
    packages;
    precompile_statements_file = "precompile_statements.jl",
    precompile_execution_file = "precompile_execution.jl",
    sysimage_path = "mysys.dylib",
    # script = "script.jl"
)
