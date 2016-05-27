<<<<<<< HEAD
int index = System.console().readLine('Enter index: ') as Integer

for(int i = 1; i <= 100; i++){
	if(index != i) continue
	if(i % 3 == 0 && i % 5 == 0) println 'FizzBuzz'
	else if(i % 3 == 0) println 'Fizz'
	else if(i % 5 == 0) println 'Buzz'
	else println i
=======
for(int i = 0; i <= 100000; i++){
	if(i % 3 == 0 && i % 2 == 0) print 'FizzBuzz';
	else if(i % 3 == 0) print 'Fizz';
	else if(i % 2 == 0) print 'Buzz';
	else print i;
>>>>>>> e825b702c5985e0dff387385c86f080ff15cdc80
}
