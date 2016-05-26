def getFizz(num):
    if num % 5 == 0 and num % 3 == 0:
        return 'fizzbuzz'
    elif num % 3 == 0:
        return 'fizz'
    elif num % 5 == 0:
        return 'buzz'
    else:
        return str(num)

num = eval(input())

print(getFizz(num))