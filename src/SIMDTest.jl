module SIMDTest

export saxp!, saxpsimd!


function saxp!(A::Matrix{FLoat64}, B::Matrix{FLoat64}, C::Matrix{FLoat64})
    @. A += B*C
end

function saxpsimd!(A::Matrix{FLoat64}, B::Matrix{FLoat64}, C::Matrix{FLoat64})
    @simd @. A += B*C
end

end
