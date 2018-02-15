method fibonacci(n: nat) returns (f: nat)

{

// For index 0 or 1 just return result directly

if (n < 2) { return n; }

 

/*

Otherwise compute result by iterating. Start

by initializing state for loop, with fib0 and

fib1 containing the last two known values of

the sequence and i being the index of the last

computed value.

*/

var fib0 := 0;

var fib1 := 1;

var i := 1;

 

/*

Given that we maintain the "invariant" that i

is always the index of the last computed value

and that we want to compute fib(n), we want our

loop to stop when i==n. To accomplish this, we

use a loop condition (i < n). Given that we are

starting with i definitely less than n (as i is 1 at

this point in the code, n is at least 2, otherwise

we would have returned already), we know that

the loop will eventually hit a state where i==n, at

that point it will stop, and fib1 will contain the value

of fib(i), but because i==n, this will be fib(n), and

that is the result we will return.

*/

while (i < n)

{

/*

Within each iteration of the loop (right

here) we compute the next value in the

Fibonacci sequence (as fib0+fib1), then

we update fib0 to be the current (fib1)

and next (fib0+fib1) values for the next

iteration possible iteration of the loop.

*/

var fib2 := fib0 + fib1;
fib0 := fib1;
fib1 := fib2;

/*

And we increment i, re-establishing the

invariant that outside of the loop body,

i is always the index of the last computed

value of the function.

*/

i := i + 1;

}

/*

At this point we know that i is the index of

the last computed Fibonacci value, that fib1

is fib(i), that i == n, and therefore that

fib1 is fib(n), which is the result we want

to return!

*/

return fib1;

}

method Main()
{
    var fib1 := fibonacci(1);
    print "fibonacci(1) is ", fib1, "\n";
    var fib5 := fibonacci(5);
    print "fibonacci(5) is ", fib5, "\n";
    var fib45 := fibonacci(45);
    print "fibonacci(45) is ", fib45, "\n";
}





