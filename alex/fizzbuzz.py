def get_fizzbuzz(num):
    if num % 5 == 0 and num % 3 == 0:
        return 'fizzbuzz'
    elif num % 3 == 0:
        return 'fizz'
    elif num % 5 == 0:
        return 'buzz'
    else:
        return str(num)

for x in range(1, 100001):
	print(get_fizzbuzz(x))
