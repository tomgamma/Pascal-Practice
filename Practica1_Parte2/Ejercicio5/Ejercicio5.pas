program Ejercicio5;

var
  numero, maximo, minimo, suma: Integer;
  primerNumero: Boolean;

begin
  // Inicializamos las variables
  maximo := Low(Integer);
  minimo := High(Integer);
  suma := 0;
  primerNumero := True;

  // Leemos los números hasta que se ingrese el número 100
  writeln('Ingrese numeros enteros (ingrese 100 para finalizar):');
  repeat
    write('Numero: ');
    readln(numero);

    // Procesamos el número si es diferente de 100
    if numero <> 100 then
    begin
      // Actualizamos el máximo y el mínimo
      if numero > maximo then
        maximo := numero;
      if numero < minimo then
        minimo := numero;

      // Sumamos el número a la suma total
      suma := suma + numero;

      // Actualizamos la bandera del primer número leído
      if primerNumero then
        primerNumero := False;
    end;
  until numero = 100;

  // Mostramos los resultados si se ingresaron al menos dos números después del primer número
  if not primerNumero then
  begin
    writeln('El numero maximo leido es: ', maximo);
    writeln('El numero minimo leido es: ', minimo);
    writeln('La suma total de los numeros leidos es: ', suma);
  end
  else
  begin
    writeln('Se necesita al menos un numero distinto de 100 para procesar.');
  end;

  readln;
end.
