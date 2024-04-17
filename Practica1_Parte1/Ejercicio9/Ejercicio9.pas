// Exercise: "Realizar un programa que lea un carácter, que puede ser “+” (suma) o “-” (resta); si se ingresa otro carácter, debe informar un error y finalizar. Una vez leído el carácter de suma o resta, deberá leerse una secuencia de números enteros que finaliza con 0. El programa deberá aplicar la operación leída con la secuencia de números, e imprimir el resultado final.
//              Por ejemplo:
//                Si se lee el carácter “-” y la secuencia 4 3 5 -6 0 , deberá imprimir: 2 (4 – 3 – 5 - (-6) )
//                Si se lee el carácter “+” y la secuencia -10 5 6 -1 0, deberá imprimir: 0 (-10 + 5 + 6 + (-1))"

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
