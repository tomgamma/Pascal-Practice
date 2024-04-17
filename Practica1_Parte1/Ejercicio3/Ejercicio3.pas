program Ejercicio3;

var
  num1, num2, num3, temp: integer;

begin
  // Pedir al usuario que ingrese los tres números enteros
  writeln('Ingrese el primer numero entero: ');
  readln(num1);
  
  writeln('Ingrese el segundo numero entero: ');
  readln(num2);
  
  writeln('Ingrese el tercer numero entero: ');
  readln(num3);
  
  // Ordenar los números en orden descendente
  if num1 < num2 then
  begin
    temp := num1;
    num1 := num2;
    num2 := temp;
  end;
  
  if num2 < num3 then
  begin
    temp := num2;
    num2 := num3;
    num3 := temp;
  end;
  
  if num1 < num2 then
  begin
    temp := num1;
    num1 := num2;
    num2 := temp;
  end;
  
  // Mostrar los números en orden descendente
  writeln('Los numeros en orden descendente son: ', num1, ' ', num2, ' ', num3);
end.
