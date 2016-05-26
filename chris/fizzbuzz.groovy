for(int i = 0; i <= 100000; i++){
	if(i % 3 == 0 && i % 2 == 0) print 'FizzBuzz';
	else if(i % 3 == 0) print 'Fizz';
	else if(i % 2 == 0) print 'Buzz';
	else print i;
}
