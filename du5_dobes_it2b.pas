program du5_dobes_it2b;
uses Crt;

var a, b, x : real;
     o, mes : integer;

procedure vypis_operace(var mes: integer);
begin
    clrscr;
    if (mes=1) then begin
         WriteLn('Nezanama operace! Zadejte kod operace znovu.');
         WriteLn('********************************************');
      end;
      WriteLn('Zadej cislo operace kterou chces provest');
      WriteLn('1 - scitani');
      WriteLn('2 - odcitani');
      WriteLn('3 - nasobeni');
      WriteLn('4 - deleni');
end;

function scitani(a,b:real): real;
begin
    x:=a+b;
    scitani:=x;
end;
function odecitani(a,b:real): real;
begin
    x:=a+b;
    odecitani:=x;
end;
function nasobeni(a,b:real): real;
begin
    x:=a+b;
    nasobeni:=x;
end;
function deleni(a,b:real): real;
begin
    if b = 0 then WriteLn('Nulou delit nelze!')
             else x := a / b;
   deleni:=x;
end;

begin
  mes:=0;
  repeat
    vypis_operace(mes);
    ReadLn(o);
    mes:=1;
  until (o > 0) and (o < 5);

  WriteLn('Zadej prvni cislo:');
  ReadLn(a);
  WriteLn('Zadej druhe cislo:');
  ReadLn(b);
  if (o=1)then writeln ('vysledek scitani je ',scitani(a,b):0:2);
  if (o=2)then writeln ('vysledek odcitani je ',odecitani(a,b):0:2);
  if (o=3)then writeln ('vysledek nasobeni je ',nasobeni(a,b):0:2 );
  if (o=4)then writeln ('vysledek deleni je ',deleni (a,b):0:2 );
  readln;
end.


