#!/usr/bin/python3.5

def getFuzz(x):
    if x % 3 == 0 and x % 5 != 0:
        return "Fizz"
    elif x % 3 != 0 and x % 5 == 0:
        return "Buzz"
    elif x % 3 == 0 and x % 5 == 0:
        return "FizzBuzz"
    else:
        return x

for x in range(1,101):
    print(getFuzz(x))
