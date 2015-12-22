i: read0 `:input.txt;
v:"aeiou";
b: "*",/:cut[2;"abcdpqxy"],\:"*";
p1:{sum{not[any x like/:b]&any[x=next x]&2<(+//)v=\:x}@'x};

