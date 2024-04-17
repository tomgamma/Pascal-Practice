program Ejercicio1;

var
  numeros: array[1..10] of Integer;
  i, suma, cantMayoresA5: Integer;

begin
  // Inicializamos la suma y la cantidad de números mayores a 5
  suma := 0;
  cantMayoresA5 := 0;

  // Leemos los 10 números enteros
  writeln('Ingrese 10 numeros enteros:');
  for i := 1 to 10 do
  begin
    write('Numero ', i, ': ');
    readln(numeros[i]);

    // Sumamos el número a la suma total
    suma := suma + numeros[i];

    // Verificamos si el número es mayor a 5 y aumentamos el contador en caso afirmativo
    if numeros[i] > 5 then
      cantMayoresA5 := cantMayoresA5 + 1;
  end;

  // Mostramos la suma total y la cantidad de números mayores a 5
  writeln('La suma total de los numeros es: ', suma);
  writeln('La cantidad de numeros mayores a 5 es: ', cantMayoresA5);

  readln;
end.
