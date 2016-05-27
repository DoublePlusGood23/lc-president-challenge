<<<<<<< HEAD
int index = System.console().readLine('Enter index: ') as Integer

for(int i = 1; i <= 100; i++){
	if(index != i) continue
	if(i % 3 == 0 && i % 5 == 0) println 'FizzBuzz'
	else if(i % 3 == 0) println 'Fizz'
	else if(i % 5 == 0) println 'Buzz'
	else println i
}
