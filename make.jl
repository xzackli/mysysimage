#!/usr/bin/env julia

import Pkg
Pkg.add("PackageCompiler")
using PackageCompiler


packages = [
    :Revise, :OhMyREPL,
    :LaTeXStrings, :Plots
    # :FileIO, :JLD2, :DataFrames
]


create_sysimage(
    packages;
    precompile_statements_file = "precompile_statements.jl",
    # precompile_execution_file = "precompile_execution.jl",
    sysimage_path = "mysys.dylib",
    # script = "script.jl"
)
