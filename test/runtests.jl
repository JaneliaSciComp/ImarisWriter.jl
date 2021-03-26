using ImarisWriter
using Test

@testset "ImarisWriter.jl" begin
    include("SimpleTestProgram.jl")
    @test filesize("out_0.ims") != 0
    @test filesize("out_0.ims") > 780000
    @test filesize("out_1.ims") != 0
    @test filesize("out_1.ims") > 780000
    @test filesize("out_2.ims") != 0
    @test filesize("out_2.ims") > 780000

    rm("out_0.ims")
    rm("out_1.ims")
    rm("out_2.ims")
end
