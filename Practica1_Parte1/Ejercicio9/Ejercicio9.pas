program Ejercicio9;

var
  operacion: char;
  numero, resultado: integer;

begin
  // Leer el carácter de operación (+ o -)
  writeln('Ingrese la operacion a realizar (+ o -): ');
  readln(operacion);
  
  // Verificar si la operación es válida (solo se permiten + o -)
  if (operacion <> '+') and (operacion <> '-') then
  begin
    writeln('Error: La operacion ingresada es invalida.');
    exit; // Finalizar el programa
  end;
  
  // Leer la secuencia de números enteros hasta que se ingrese 0
  resultado := 0;
  repeat
    writeln('Ingrese un numero entero (0 para terminar): ');
    readln(numero);
    
    // Aplicar la operación a cada número de la secuencia
    if operacion = '+' then
      resultado := resultado + numero
    else
      resultado := resultado - numero;
  until numero = 0; // Salir del bucle cuando se ingrese 0 como número
  
  // Imprimir el resultado final
  writeln('El resultado de la operacion es: ', resultado);
end.
