// Exercise: "Realizar un programa que lea el número de legajo y el promedio de cada alumno de la facultad. La lectura finaliza cuando se ingresa el legajo -1, que no debe procesarse. 
//              Por ejemplo: se lee la siguiente secuencia:
//                33423
//                8.40
//                19003
//                6.43
//                -1
//              En el ejemplo anterior, se leyó el legajo 33422, cuyo promedio fue 8.40, luego se leyó el legajo 19003, cuyo promedio fue 6.43, y finalmente el legajo -1 (para el cual no es necesario leer un promedio).
//              Al finalizar la lectura, informar:
//                a. La cantidad de alumnos leída (en el ejemplo anterior, se debería informar 2).
//                b. La cantidad de alumnos cuyo promedio supera 6.5 (en el ejemplo anterior, se debería informar 1).
//                c. El porcentaje de alumnos destacados (alumnos con promedio mayor a 8.5) cuyo legajo sean menor al valor 2500 (en el ejemplo anterior, se debería informar 0%)."

program Ejercicio6;

var
  legajo: integer;
  promedio, sumaPromedios: real;
  cantidadAlumnos, alumnosSuperan6_5, alumnosDestacadosMenor2500: integer;
  porcentajeDestacadosMenor2500: real;

begin
  sumaPromedios := 0;
  cantidadAlumnos := 0;
  alumnosSuperan6_5 := 0;
  alumnosDestacadosMenor2500 := 0;
  
  // Leer el número de legajo y el promedio de cada alumno hasta que se ingrese -1 como legajo
  repeat
    // Pedir al usuario que ingrese el número de legajo
    writeln('Ingrese el numero de legajo del alumno (o -1 para salir): ');
    readln(legajo);
    
    // Verificar si se debe procesar este legajo
    if legajo <> -1 then
    begin
      // Pedir al usuario que ingrese el promedio del alumno
      writeln('Ingrese el promedio del alumno ', legajo, ': ');
      readln(promedio);
      
      // Sumar el promedio al total y aumentar la cantidad de alumnos
      sumaPromedios := sumaPromedios + promedio;
      cantidadAlumnos := cantidadAlumnos + 1;
      
      // Contar la cantidad de alumnos cuyo promedio supera 6.5
      if promedio > 6.5 then
        alumnosSuperan6_5 := alumnosSuperan6_5 + 1;
      
      // Verificar si el alumno es destacado y tiene un legajo menor a 2500
      if (promedio > 8.5) and (legajo < 2500) then
        alumnosDestacadosMenor2500 := alumnosDestacadosMenor2500 + 1;
    end;
  until legajo = -1; // Salir del bucle cuando se ingrese -1 como legajo
  
  // Calcular el porcentaje de alumnos destacados cuyo legajo es menor a 2500
  if cantidadAlumnos > 0 then
    porcentajeDestacadosMenor2500 := (alumnosDestacadosMenor2500 / cantidadAlumnos) * 100
  else
    porcentajeDestacadosMenor2500 := 0;
  
  // Mostrar los resultados
  writeln('La cantidad de alumnos leida es: ', cantidadAlumnos);
  writeln('La cantidad de alumnos cuyo promedio supera 6.5 es: ', alumnosSuperan6_5);
  writeln('El porcentaje de alumnos destacados cuyo legajo es menor a 2500 es: ', porcentajeDestacadosMenor2500:0:2, '%');
end.
