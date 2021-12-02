function read_to_array(file)
    result = []

    open(file) do f       
        # read till end of file
        while ! eof(f) 
       
            # read a new / next line for every iteration          
            s = readline(f)
            input = parse(Int64, s)
            push!(result, input)
        end
    end

    result    
end
