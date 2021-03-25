using LaTeXStrings
using Plots

x = 0:0.01:4.0
y = sin.(x) .* exp.(x) .+ 0.1
p = plot(x, y, label="polarization", legend=:bottomleft)
plot!(x, y .* 2, label="temperature")
xlabel!(L"\textrm{Multipole moment, }\ell")
ylabel!(L"\textrm{Beam } B_{\!\ell}")
