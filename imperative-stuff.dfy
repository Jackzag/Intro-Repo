function method sum_squares(n: nat): nat
{
    if n == 0 then 0
    else n * n + sum_squares( n - 1 )
}

method pathFun()
{
    assert 1 == 1;
    var x := 1;
    if ( x == 1 )
    {
        x := 2;
    } 
    else
    {

    }
    assert x == 2;
}
 method sum_squares_verified(n: nat) returns (f: nat)
    ensures f == sum_squares(n)
 {
     if ( n == 0 )
     {
         return 0;
     }

     assert n > 0;

     var i := n;
     var a := 0;

     assert sum_squares(i) + a == sum_squares(n);

     while( i > 0 )
        invariant 0 <= i <= n; //Not necessary
        invariant a + sum_squares(i) == sum_squares(n);
     {
        a := a + ( i * i );
        i := i - 1;
     }

     assert !( i > 0 );
     assert !( i > 0 ) ==> ( i == 0 );
     assert ( i == 0 );
     assert a  + sum_squares(i) == sum_squares(n);
     assert ( i == 0 ) && a + sum_squares(i) == sum_squares(n) ==> a == sum_squares(n);
     assert a == sum_squares(n);

     return a;
 }

method Main()
{
    print "sum_squares(5) is ", sum_squares(5), "\n";
    var att := sum_squares_verified(5);
    print "sum_squares_verified(5) is ", att, "\n";
}
