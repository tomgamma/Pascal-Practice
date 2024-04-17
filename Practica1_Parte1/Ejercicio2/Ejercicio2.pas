// Exercise: "Realizar un programa que lea un número real e imprima su valor absoluto. El valor absoluto de un número X, se escribe |X| y se define como:
//            |X| = X cuando X es mayor o igual a cero
//            |X| = -X cuando X es menor a cero

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
