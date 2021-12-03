function read_to_array(path::String, type::Type)
    result = []

    open(path) do f       
        # read till end of file
        while ! eof(f) 
       
            # read a new / next line for every iteration          
            s = readline(f)
            if type == String
                push!(result, s)
            else
                push!(result, parse(type, s))
            end
        end
    end

    result    
end
