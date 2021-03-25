#!/usr/bin/env julia

import Pkg
Pkg.add("PackageCompiler")
using PackageCompiler

packages = [
    :Revise, :OhMyREPL, :LanguageServer,
    :LaTeXStrings, :Plots
    # :FileIO, :JLD2, :DataFrames
]

# Pkg.update()
# for package in packages
#     Pkg.add(string(package))
# end


create_sysimage(
    packages;
    precompile_statements_file = "precompile_statements.jl",
    # precompile_execution_file = "precompile_execution.jl",
    sysimage_path = "mysys.dylib",
    # script = "script.jl"
)
