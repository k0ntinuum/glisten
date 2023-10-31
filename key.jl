function key(n) rand(1:b, n, n) end

function key(n)
    k = zeros(Int64, n, n)
    for i in 1:n
        k[i,:] = Random.randperm(n)
    end
    k
end

function text(n)  rand(1:b, n) end

function spinrows(k)
    for j in 1:size(k)[begin]
            k[j,:] = circshift(k[j,:],k[j,j]+1)
    end
end

function spincols(k)
    for j in 1:size(k)[begin]
        k[:,j] = circshift(k[:,j],k[j,j]+1)
    end 
end



function spin(q,n)
    R = vec(q)
    l =  length(R)
    k = copy(q)
    for i in 1:n
        p = R[guard(i,l)]
        k[p,:] = map(x -> roll(x,p), k[p,:])
    end
    k
end
