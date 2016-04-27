program prg_23;
uses Crt;

const n=5;
var pole :array [1..n,1..n] of real;
  i,j : integer;

procedure vypis;
begin
  writeln;
  for i:= 1 to n do
  for j:=1 to n do
  begin
    write(pole[i,j]:4:0);
    if (j=n) then writeln
  end;
end;
procedure vyber;
var a : string;
begin
  writeln ('chcete zadat cisla rucne? (y/n)');
  read (a);
  if (a<>'y') then for i:=1 to n do for j:=1 to n do pole[i,j]:=random (100)+1
  else for i:=1 to n do for j:=1 to n do begin
  writeln ('zadej ',i,'-',j,', cislo');
  readln (pole[i,j]);
   end;
end;

begin
randomize;
vyber;
vypis;
repeat until keypressed;
end.