module SIMDTest

export saxp!, saxpsimd!


function saxp!(A::Matrix{Float64}, B::Matrix{Float64}, C::Matrix{Float64})
    for _ in 1:size(A, 1)
        @. A += B*C
    end
    return A
end

function saxpsimd!(A::Matrix{Float64}, B::Matrix{Float64}, C::Matrix{Float64})
    @simd for _ in 1:size(A, 1)
        @. A += B*C
    end
    return A
end

end
