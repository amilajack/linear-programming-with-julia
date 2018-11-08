using LP
using Test
 
@testset "LP: Example 1" begin
    println("Example 1")
    @test LP.result[1] ≈ 0.459 atol = 0.01
    @test LP.result[2] ≈ 0 atol = 0.01
    @test LP.result[3] ≈ 0 atol = 0.01
    @test LP.result[4] ≈ 0.5467 atol = 0.01
end