// Exercise: "Realizar un programa que lea un número real X. Luego, deberá leer números reales hasta que se ingrese uno cuyo valor sea exactamente el doble de X (el primer número leído)."

program BusquedaDoble;

var
  X, numero: real;
  encontrado: boolean;

begin
  // Pedir al usuario que ingrese el número real X
  writeln('Ingrese un numero real X: ');
  readln(X);
  
  encontrado := false;
  
  // Pedir al usuario que ingrese números reales hasta encontrar uno que sea el doble de X
  repeat
    writeln('Ingrese un numero real: ');
    readln(numero);
    
    if numero = 2 * X then
    begin
      encontrado := true;
      writeln('Se ha encontrado un numero que es exactamente el doble de X: ', numero);
    end;
  until encontrado or (numero = 0); // Salir del bucle si se encuentra el número buscado o si se ingresa 0
  
  if not encontrado then
    writeln('No se ha encontrado un numero que sea exactamente el doble de X.');
end.
