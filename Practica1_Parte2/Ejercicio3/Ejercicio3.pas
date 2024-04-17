// Exercise: "Realizar un programa que lea desde teclado la información de alumnos ingresantes a la carrera Analista en TIC. De cada alumno se lee nombre y nota obtenida en el módulo EPA (la nota es un número entre 1 y 10).
//              La lectura finaliza cuando se lee el nombre “Zidane Zinedine“, que debe procesarse. Al finalizar la lectura informar:
//                ● La cantidad de alumnos aprobados (nota 8 o mayor).
//                ● La cantidad de alumnos que obtuvieron un 7 como nota"

program Ejercicio3;

var
  nombre: string;
  nota, aprobados, siete: Integer;

begin
  // Inicializamos los contadores
  aprobados := 0;
  siete := 0;

  writeln('Ingrese el nombre y la nota obtenida en el modulo EPA de cada alumno (Ingrese "Zidane Zinedine" para finalizar):');

  // Leemos la información de cada alumno hasta que se ingrese "Zidane Zinedine"
  repeat
    // Leemos el nombre
    write('Nombre del alumno: ');
    readln(nombre);

    // Verificamos si se debe finalizar la lectura
    if nombre <> 'Zidane Zinedine' then
    begin
      // Leemos la nota
      write('Nota obtenida: ');
      readln(nota);

      // Verificamos si el alumno aprobó (nota mayor o igual a 8)
      if nota >= 8 then
        aprobados := aprobados + 1;

      // Verificamos si el alumno obtuvo un 7 como nota
      if nota = 7 then
        siete := siete + 1;
    end;
  until nombre = 'Zidane Zinedine';

  // Mostramos los resultados
  writeln('Cantidad de alumnos aprobados: ', aprobados);
  writeln('Cantidad de alumnos que obtuvieron un 7 como nota: ', siete);

  readln;
end.
