#!/usr/bin/env julia
 
#Start Test Script
using LP
using Base.Test
 
# Run tests
 
tic()
println("Test 1")
@test LP.result[1] ≈ 0.459 atol = 0.01
@test LP.result[2] ≈ 0 atol = 0.01
@test LP.result[3] ≈ 0 atol = 0.01
@test LP.result[4] ≈ 0.5467 atol = 0.01
toc()