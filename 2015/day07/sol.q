fns:{
    $[`NOT~x 0;
        {not y x}x 1;
    `AND~x 1;
        {$[`1~x;z[y];z[x]&z[y]]}. x 0 2;
    `OR~x 1;
        {z[x]|z[y]}. x 0 2;
    `LSHIFT~x 1;
        {(y _ z[x]),y#0b}[x 0;"J"$($)x 2];
    `RSHIFT~x 1;
        {(y#0b),neg[y]_ z x}[x 0;"J"$($)x 2];
        {[x;y] -16#0b vs x}"J"$($)x 0
        ]
    };

i:read0 `:input.txt;
x1:{(fns "S"$" " vs x 0;"S"$x 1)}@'" -> " vs/: i;
y1:w!count[w:distinct x1@'1]#enlist 16#0b;
p1:{0b sv/: (16#0b),/:{@[x;y 1;:;y[0] x]} over enlist[y],x};






.q.NOT      : {{not y x}x};
.q.AND      : {{$[1~x;z[y];z[x]&z[y]]}[x;y]};
.q.OR       : {{z[x]|z[y]}[x;y]};
.q.LSHIFT   : {{(y _ z[x]),y#0b}[x;y]};
.q.RSHIFT   : {{(y#0b),neg[y]_ z x}[x;y]};

i: read0 `:.matt.saving/tmp.txt;
t:(!). flip {{("S"$x 1;($["S"];value)@'{$[y[0]in .Q.a;(x[0],(,)y;x[1]," `",y);(x 0;x[1]," ",y)]}over((,)(();())),-4!x 0)}@'" -> "vs/:x} i
v:{0b sv(16#0b),x};
s:{$[0<v y z;
        y;
    -7h~type x[z]1;
        @[y;z;:;-16#0b vs x[z]1];
        @[y;z;:;x[z][1]y:.z.s[x]over((,)y),x[z]0]
        ]
    };
v @[;`lx] s[t;w:k!{16#0b}@'k:key[t]] `lx
