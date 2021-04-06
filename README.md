# ImarisWriter.jl

Julia bindings for ImarisWriter. The resulting file is a valid HDF5 file.
https://github.com/JaneliaSciComp/ImarisWriter (forked from https://github.com/imaris/ImarisWriter)

The package was created by Mark Kittisopikul for the lab of Philipp Keller at the Janelia Research Campus on behalf of Janelia Scientific Computing.

## ImarisWriter Introduction

From ImarisWriter:

ImarisWriter is a high performance file writer for microscopy images. It creates image files suitable for high performance visualization and analysis in the Imaris5 File Format. The library facilitates writing of very large image data that exceed a computer’s RAM by “streaming” the data to the library in small blocks. The library is capable of writing data with high speed. The library takes care of all the details of multi-resolution resampling, chunking, compression, multi-threading, etc and delivers its functionality to the user in a simple to use way.

See https://github.com/imaris/ImarisWriter for more details.

## Installation

ImarisWriter.jl has been added to the general Julia registry. It can be installed from the Julia REPL using the following commands.

```julia
julia> using Pkg; Pkg.add("ImarisWriter")
```

## Example Code and Usage

Example code is provided in in [test/SimpleTestProgram.jl](test/SimpleTestProgram.jl). ImarisWriter.jl exposes the C API and also creates a Julian wrapper around the C API. The C API was originally generated Clang.jl.

The progress callback from C++ to Julia is difficult due to multithreading issues. Set `mEnableLogProgress = false` to avoid these issues at the cost of not receiving feedback. To ensure proper file writing make sure to complete the finish and destroy steps.

## DLLs (Shared Libraries) required

1. bpImarisWriter96.dll
2. hdf5.dll
3. zlib.dll
3. lz4.dll

These are supplied by [ImarisWriter_jll](https://github.com/JuliaBinaryWrappers/ImarisWriter_jll.jl), which is a BinaryBuilder.jl package. Distribution of the binaries are limited by the distribution of HDF5_jll which is only available on some platforms due to the lack of cross-compilation support and compatability with the BinaryBuilder.jl system.