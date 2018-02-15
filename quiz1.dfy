/**** Problem 1 ****/

/* We define cost_fib(n) recursively with two base cases and a recursive
case to mirror fib(n). The first base case: if n == 0 then 1. The second
base case: if n == 0 then 1. If n > 1 then 1 + cost_fib(n - 1) + cost_fib(n - 2). */

/**** Problem 2 ****/

function method cost_fib(n: nat): nat
{
    if n < 2 then 1
    else 1 + cost_fib( n - 1 )+ cost_fib( n - 2 )

}

/**** Problem 3 ****/

method Main()
{
    print "The value of cost_fib(30) is ", cost_fib(30), "\n";
}