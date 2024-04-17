// Exercise: "Modifique el ejercicio anterior para que, luego de leer el número X, se lean a lo sumo 10 números reales. La lectura deberá finalizar al ingresar un valor que sea el doble de X, o al leer el décimo número, en cuyo caso deberá informarse: No se ha ingresado el doble de X"

program Ejercicio5;

var
  X, numero: real;
  encontrado: boolean;
  contador: integer;

begin
  // Pedir al usuario que ingrese el número real X
  writeln('Ingrese un numero real X: ');
  readln(X);
  
  encontrado := false;
  contador := 0;
  
  // Leer hasta un máximo de 10 números reales o hasta encontrar uno que sea el doble de X
  while (contador < 10) and (not encontrado) do
  begin
    writeln('Ingrese un numero real: ');
    readln(numero);
    
    if numero = 2 * X then
    begin
      encontrado := true;
      writeln('Se ha encontrado un numero que es exactamente el doble de X: ', numero);
    end;
    
    contador := contador + 1;
  end;
  
  // Verificar si se encontró el número buscado
  if not encontrado then
    writeln('No se ha ingresado el doble de X.');
end.
