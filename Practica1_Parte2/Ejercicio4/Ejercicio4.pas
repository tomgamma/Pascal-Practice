program Ejercicio4;

var
  numero, min1, min2: Integer;
  contador: Integer;

begin
  // Inicializamos los mínimos con valores grandes para asegurar que cualquier número ingresado sea menor
  min1 := MaxInt;
  min2 := MaxInt;

  // Variable contador para llevar la cuenta de cuántos números hemos leído
  contador := 0;

  // Leemos los números hasta que se ingrese el número 0
  writeln('Ingrese los numeros (ingrese 0 para finalizar):');
  repeat
    write('Numero ', contador + 1, ': ');
    readln(numero);

    // Procesamos el número si es diferente de 0 y si no es el primer número leído
    if (numero <> 0) and (contador > 0) then
    begin
      // Si el número es menor que el mínimo actual, actualizamos los mínimos
      if numero < min1 then
      begin
        min2 := min1;
        min1 := numero;
      end
      else if numero < min2 then
        min2 := numero;

      // Incrementamos el contador
      contador := contador + 1;
    end
    else if contador = 0 then
    begin
      // Si es el primer número leído, simplemente incrementamos el contador
      contador := contador + 1;
    end;
  until numero = 0;

  // Mostramos los dos números mínimos leídos si se ingresaron al menos dos números después del primero
  if contador >= 3 then
  begin
    writeln('Los dos numeros minimos son: ', min1, ' y ', min2);
  end
  else
  begin
    writeln('Se necesitan al menos dos numeros distintos de cero para encontrar los dos minimos.');
  end;

  readln;
end.
