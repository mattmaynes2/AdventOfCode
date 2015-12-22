s:" "vs/:ssr[;"toggle";"turn toggle"]@'read0 `:input.txt;
i:"J"$"," vs/:/:@[;2 4]@'s;

x1:1000 1000#0b;
y1:({$["toggle"~x 1;not;{[x;y]x}"on"~x 1]}@'s),'i;
p1:{(+//){.[x;;:;y[0]x . w]w:y[1]_'til@'1+y 2}over enlist[x],y};

x2:1000 1000#0;
y2:({$["toggle"~x 1;+[2];"on"~x 1;+[1];{x+neg signum x}]}@'s),'i;
p2:p1;
