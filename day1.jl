include("./utils.jl")

# read file contents, one line at a time

inputs = read_to_array("inputs/1_1")

total = 0
last = inputs[1]

for input in inputs[2:end]
    global total
    global last
    if input > last
        total += 1
    end
    last = input
end

println("Increases in depth: $total")


