program Ejercicio7;

var
  piloto: array[1..100] of string;
  tiempo: array[1..100] of Real;
  i: Integer;
  primerPuesto, segundoPuesto, ultimoPuesto, penultimoPuesto: string;
  primerTiempo, segundoTiempo, ultimoTiempo, penultimoTiempo: Real;

begin
  // Leemos la información de los autos de carrera
  writeln('Ingrese la informacion de los autos de carrera:');
  for i := 1 to 100 do
  begin
    writeln('Auto ', i, ':');
    write('Nombre del piloto: ');
    readln(piloto[i]);
    write('Tiempo total de la carrera: ');
    readln(tiempo[i]);
  end;

  // Inicializamos los tiempos de los primeros y últimos puestos con los valores iniciales de los tiempos de los autos
  primerTiempo := tiempo[1];
  primerPuesto := piloto[1];
  segundoTiempo := tiempo[2];
  segundoPuesto := piloto[2];
  ultimoTiempo := tiempo[1];
  ultimoPuesto := piloto[1];
  penultimoTiempo := tiempo[2];
  penultimoPuesto := piloto[2];

  // Buscamos los nombres de los pilotos en los primeros y últimos puestos
  for i := 2 to 100 do
  begin
    // Verificamos los primeros puestos
    if tiempo[i] < primerTiempo then
    begin
      segundoTiempo := primerTiempo;
      segundoPuesto := primerPuesto;
      primerTiempo := tiempo[i];
      primerPuesto := piloto[i];
    end
    else if tiempo[i] < segundoTiempo then
    begin
      segundoTiempo := tiempo[i];
      segundoPuesto := piloto[i];
    end;

    // Verificamos los últimos puestos
    if tiempo[i] > ultimoTiempo then
    begin
      penultimoTiempo := ultimoTiempo;
      penultimoPuesto := ultimoPuesto;
      ultimoTiempo := tiempo[i];
      ultimoPuesto := piloto[i];
    end
    else if tiempo[i] > penultimoTiempo then
    begin
      penultimoTiempo := tiempo[i];
      penultimoPuesto := piloto[i];
    end;
  end;

  // Mostramos los resultados
  writeln('Los dos pilotos en los dos primeros puestos son: ', primerPuesto, ' y ', segundoPuesto);
  writeln('Los dos pilotos en los dos ultimos puestos son: ', ultimoPuesto, ' y ', penultimoPuesto);

  readln;
end.
