#If we list all the natural numbers below 20 that are multiples of 3 or 5 but not multiples both
#of 3 and 5, we get 3, 5, 6, 9, 10, 12, 18. The sum of these multiples is 63. Write a function,
#sum_multiples_3_5, that returns the sum of the multiples of 3 and 5 less than N.

function sum_multiples_3_5(N)
    if typeof(N) == BigInt
        sumTot::BigInt = (sum(0:3:N-1) + sum(0:5:N-1)) - 2*sum(0:lcm(3,5):N-1)
        return sumTot
    else
        return -1  #returning -1 for invalid inputs
    end
end
