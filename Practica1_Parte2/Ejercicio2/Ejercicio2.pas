// Exercise: "Realice un programa que lea 10 números e informe cuál fue el mayor número leído. Por ejemplo: si se lee la secuencia: 3 5 6 2 3 10 98 8 -12 9, deberá informar: El mayor número leído fue el 98"

program Ejercicio2;

var
  numeros: array[1..10] of Integer;
  i, mayor: Integer;

begin
  // Leemos los 10 números enteros
  writeln('Ingrese 10 numeros enteros:');
  for i := 1 to 10 do
  begin
    write('Numero ', i, ': ');
    readln(numeros[i]);
  end;

  // Suponemos que el primer número es el mayor
  mayor := numeros[1];

  // Buscamos el mayor número
  for i := 2 to 10 do
  begin
    if numeros[i] > mayor then
      mayor := numeros[i];
  end;

  // Mostramos el mayor número leído
  writeln('El mayor numero leido fue el ', mayor);

  readln;
end.
