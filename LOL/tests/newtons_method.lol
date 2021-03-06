##
Newton's method, a simple approach.
##
Number newtonSqrt(Number input, Number iterations)
{
    Number x := 1
    Number counter := 0
    repeat counter < iterations
    {
        x := ( x + input / x ) / 2
        counter := counter + 1
    }
    return x
}
Number newtonSqrtEpsilon(Number input)
{
    Number result := 0
    if input == 1
    {
        result := 1
    }
    else
    {
        result := newtonSqrt(input, 2000)
    }
    return result
}
Number invert(Number input)
{
    Number r := 0
    Number negativeOne := 0
    negativeOne := negativeOne - 1.0
    r := negativeOne * input
    return r
}
Number square(Number input)
{
    Number result := input ^ 2
    return result
}

print('going to attempt to calculate a square root of 168 number using 1500 iterations')

Number base := 168
Number iterations := 70
Number result := newtonSqrt(168, 1500)
println('')
print('result is: ', result)
println('lets take the opposite: ')
result := invert(result)
print(result)
println('Next we will let the computer do the heavy lifting to find the square root of 1426:')
base := 1426
result := newtonSqrtEpsilon(base)
println(result)
println('just to make sure lets square them: ')
result := square(result)
print(result, ' ', base)

