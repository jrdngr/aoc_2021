function read_to_array(path::String, type::Type)
    result = []

    open(path) do f       
        # read till end of file
        while ! eof(f) 
       
            # read a new / next line for every iteration          
            s = readline(f)
            input = parse(type, s)
            push!(result, input)
        end
    end

    result    
end
