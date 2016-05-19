program zasobnik;
uses crt;
const n=5;
var A: array [1..n] of integer;
    k,x,i:integer;

procedure seznam;
begin
  writeln('1) Pridat cislo');
  writeln('2) Odebrat cislo');
  writeln('0) Ukoncit program');
end;
procedure pridej;
begin
  if k>n-1 then begin
    writeln('Zadne cislo uz nejde pridat, zasobnik je plny');
    readkey;
  end
  else begin
  k:=k+1;
  writeln('Zadej cislo ktere chces pridat');
  read(A[k]);
  end;
end;
procedure odeber;
begin
  if k<1 then begin
    writeln('Nenalezeno zadne cislo k odebrani, zasobnik je prazdny.');
    readkey;
  end
  else begin
    A[k]:=0;
    k:=k-1;
    end;
end;
procedure zobraz;
begin
  write('Cisla v zasobniku jsou: ');
for i:=1 to n do write(A[i],', ');
writeln;
end;
begin
repeat
  zobraz;
  writeln('--------------------------------------------------------------------------------');
  seznam;
  read(x);
  case x of
  1:pridej;
  2:odeber;
  end;
  if x<0 then begin writeln('Zadano spatne cislo'); readkey; end;
  if x>2 then begin writeln('Zadano spatne cislo'); readkey; end;
  clrscr;
until x=0;
end.

