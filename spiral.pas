Program pair_count;
Const   m=5;
        mas: array[1..5,1..5] of integer=((2,-6,0,1,14),(-7,5,2,1,1),(1,-2,5,13,21),(-17,5,4,-1,-1),(2,4,6,-4,-2));

Procedure spiral(st,en:integer);
  Var i:integer;
  Begin
  for i:=st to en do write(mas[st,i],' ');
  for i:=st+1 to en do write(mas[i,en],' ');
  for i:=en-1 downto st do write(mas[en,i],' ');
  for i:=en-1 downto st+1 do write(mas[i,st],' ');
  if en-st>3 then spiral(st+1,en-1)
  else if en-st=2 then write(mas[st+1,en-1])
  else write(mas[st+1,st+1],' ',mas[st+1,st+2],' ',mas[st+2,st+2],' ',mas[st+2,st+1]);

  end;

 Begin
 spiral(1,m);
 readln;
 end.
