# Install Plots.jl if you haven't already (uncomment and run once in REPL)
# using Pkg
# Pkg.add("Plots")

# Import the Plots package
using Plots

# Define data for plotting
x = 1:10  # A range from 1 to 10
y = sin.(x) # Apply the sine function to each element of x

# Create the plot
plot(x, y, 
     label="Sine Wave", 
     title="Simple Sine Wave Plot", 
     xlabel="X-axis", 
     ylabel="Y-axis",
     linewidth=2, 
     linecolor=:blue)

# To display the plot interactively, you can use `gui()` or ensure the plot object is returned.
# In a script, you might want to save it.
savefig("sine_wave_plot.png") 


