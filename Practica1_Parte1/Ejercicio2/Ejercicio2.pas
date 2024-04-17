program Ejercicio2;

var
  numero, valorAbsoluto: real;

begin
  // Solicitar al usuario que ingrese el número real
  writeln('Ingrese un numero real: ');
  readln(numero);
  
  // Calcular el valor absoluto del número
  if numero >= 0 then
    valorAbsoluto := numero
  else
    valorAbsoluto := -numero;
  
  // Mostrar el valor absoluto en pantalla
  writeln('El valor absoluto de ', numero, ' es ', valorAbsoluto);
end.
