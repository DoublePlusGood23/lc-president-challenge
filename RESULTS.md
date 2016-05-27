#### Results

Measured with `time [program]` or `time cat ../wap.txt | [program]` 

`user` is the amount of CPU time that the process itself used.

`sys` is the amount of CPU time that the kernel spent on behalf of the process.

###### DISEMVOWELER

`python3.5 disemvoweler.py > ../results/disv-py.txt  0.46s user 0.00s system 99% cpu 0.459 total`

`groovy disemvoweler.groovy  1862.01s user 4.57s system 108% cpu 28:35.72 total`

###### FIZZBUZZ

`python3.5 fizzbuzz.py > ../results/fizz-py.txt  0.08s user 0.00s system 98% cpu 0.085 total`

`groovy fizzbuzz.groovy > ../results/fizz-groovy.txt  1.25s user 0.44s system 145% cpu 1.159 total`

###### ROVARSPRAKET

`python3.5 rovarspraket.py > ../results/rov-py.txt  0.70s user 0.01s system 99% cpu 0.713 total`

#### Winner

I have to give the win to Alex here. He finished first and his programs seem more performant. The biggest takeaway, in my opinion, is that Chris should really stop using Groovy.
