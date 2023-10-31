function encrypt(p, q, r)
    R = vec(q)
    for i in 1:r
        #k = spin(q,i)
        p = encode(p,k,R[i])
        p = reverse(p)
    end
    p
end

function decrypt(p, q, r)
    R = vec(q)
    for i in 1:r
        #k = spin(q,r + 1 - i)
        p = reverse(p)
        p = decode(p,k,R[r + 1 - i])
    end
    p
end