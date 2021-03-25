ENV["JULIA_REVISE_POLL"] = "1"
ENV["PLOTS_DEFAULT_BACKEND"] = "GR"
ENV["GKSwstype"]="nul"

if length(ENV["PATH"]) > 0
    ENV["PATH"]="/usr/local/texlive/2020/bin/x86_64-linux:"*ENV["PATH"]
else
    ENV["PATH"]="/usr/local/texlive/2020/bin/x86_64-linux:"
end

const PLOTS_DEFAULTS = Dict(
    :theme=>:default,
    :palette=>:seaborn_colorblind,
    :fontfamily => "Computer Modern",
		:linewidth=>1.5, :dpi=>150, :size=>(400,250),
		:grid=>false, :frame=>:box, :foreground_color_legend=>nothing,
		:legendfontsize=>10
        )

using Revise
using OhMyREPL
using Plots

enable_autocomplete_brackets(false)
user_defaults = Plots._plots_defaults()
Plots.theme(pop!(user_defaults, :theme); user_defaults...)
