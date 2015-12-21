i: first read0 `:input.txt;
p1:{1+count distinct sums flip ((">"=x)-"<"=x;("^"=x)-"v"=x)};
p2:{count distinct raze {sums flip ((">"=x)-"<"=x;("^"=x)-"v"=x)}@'flip 0N 2#x};
