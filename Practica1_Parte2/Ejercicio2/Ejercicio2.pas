// Exercise: "Realice un programa que lea 10 números e informe cuál fue el mayor número leído. Por ejemplo: si se lee la secuencia: 3 5 6 2 3 10 98 8 -12 9, deberá informar: El mayor número leído fue el 98"
//              a. Modifique el programa anterior para que, además de informar el mayor número leído, se informe el número de orden, dentro de la secuencia, en el que fue leído. Por ejemplo: si se lee la misma secuencia: 3 5 6 2 3 10 98 8 -12 9, deberá informar: El mayor número leído fue el 98, en la posición 7

program Ejercicio2;

var
  numeros: array[1..10] of Integer;
  i, maximo, posicion: Integer;

begin
  // Leer los 10 números
  writeln('Ingrese 10 numeros:');
  for i := 1 to 10 do
    readln(numeros[i]);
  
  // Encontrar el mayor número y su posición
  maximo := numeros[1];
  posicion := 1;
  for i := 2 to 10 do
  begin
    if numeros[i] > maximo then
    begin
      maximo := numeros[i];
      posicion := i;
    end;
  end;
  
  // Mostrar el resultado
  writeln('El mayor numero leido fue el ', maximo, ', en la posicion ', posicion);
  
end.
