module SIMDTest

export saxp!, saxpsimd!


function saxp!(A::Matrix{Float64}, B::Matrix{Float64}, C::Matrix{Float64})
    @. A += B*C
end

function saxpsimd!(A::Matrix{Float64}, B::Matrix{Float64}, C::Matrix{Float64})
    @. A += B*C
end

end
