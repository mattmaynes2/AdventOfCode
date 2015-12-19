i: "J"$"x" vs/: read0 `:input.txt;
p1:{sum {min[d]+2*sum d:last prds flip x@(0 1;1 2;2 0)} each x};
p2:{sum {prd[x]+2*min last sums flip x@(0 1;1 2;2 0)} each x};
