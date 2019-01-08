##
Newton's method, a simple approach.
##

Number Sqrt(Number input, Number iterations)
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
Number SqrtEpsilon(Number input)
{
    Number result := 0
    if input == 1
    {
        result := 1
    }
    else
    {
        result := Sqrt(input, 2000)
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

print('lets do some math')

Number core := 130
Number it := 20
Number result := Sqrt(130, 1500)
println('')
print('solution: ', result)
println('lets invert it: ')
result := invert(result)
print(result)
println('now let solve for the square root of 144:')
base := 144
result := SqrtEpsilon(base)
println(result)
println('lets verify: ')
result := square(result)
print(result, ' ', base)

