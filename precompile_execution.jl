
##
using PyPlot

plt.clf()
x = range(0; stop = 2 * pi, length = 1000); y = sin.(3 * x + 4 * cos.(2 * x));
plt.plot(x, y, color = "red", linewidth = 2.0, linestyle = "--")
plt.title("A sinusoidally modulated sinusoid")
plt.gcf()

##
using DataFrames, CSV
df = DataFrame(A = 1:4, B = ["M", "F", "F", "M"])
CSV.write("example.csv", df)
df = CSV.read("example.csv")
run(`rm example.csv`)

##
using JLD2, FileIO
hello = "world"
foo = :bar
bar = [1.0, 2.0, 5.0]
@save "example.jld2" hello foo bar
run(`rm example.jld2`)

