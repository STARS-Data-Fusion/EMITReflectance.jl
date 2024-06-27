module EMITReflectance

# open `EMITL2ARFL_concept_ID.txt` from the same directory as this `.jl` file
const EMITL2ARFL_concept_ID = open(joinpath(dirname(@__FILE__), "EMITL2ARFL_concept_ID.txt")) do file
    read(file, String)
end

end # module EMITReflectance
