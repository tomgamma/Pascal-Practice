// Exercise: "Realizar un programa que lea tres caracteres, e informe si los tres eran letras vocales o si al menos uno de ellos no lo era. 
//              Por ejemplo:
//                Si se leen los caracteres “a e o”, deberá informar: Los tres son vocales
//                Si se leen los caracteres “z a g”, deberá informar: Al menos un carácter no era vocal"

program Ejercicio8;

var
  char1, char2, char3: char;
  sonVocales: boolean;

begin
  // Pedir al usuario que ingrese tres caracteres
  writeln('Ingrese el primer caracter: ');
  readln(char1);
  
  writeln('Ingrese el segundo caracter: ');
  readln(char2);
  
  writeln('Ingrese el tercer caracter: ');
  readln(char3);
  
  // Verificar si los tres caracteres son vocales
  sonVocales := (char1 in ['a', 'e', 'i', 'o', 'u']) and
                (char2 in ['a', 'e', 'i', 'o', 'u']) and
                (char3 in ['a', 'e', 'i', 'o', 'u']);
  
  // Informar el resultado
  if sonVocales then
    writeln('Los tres caracteres ingresados son vocales.')
  else
    writeln('Al menos uno de los caracteres ingresados no es una vocal.');
end.
