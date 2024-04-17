// Exercise: "Un local de ropa desea analizar las ventas realizadas en el último mes. Para ello se lee por cada día del mes, los montos de las ventas realizadas. La lectura de montos para cada día finaliza cuando se lee el monto 0. Se asume un mes de 31 días. Informar la cantidad de ventas por cada día, y el monto total acumulado en ventas de todo el mes.
//              a. Modifique el ejercicio anterior para que además informe el día en el que se realizó la mayor cantidad de ventas"

program Ejercicio8;

const
  MAX_DIAS = 31;

var
  ventasPorDia: array[1..MAX_DIAS] of Integer;
  monto, totalVentas, maxVentas, diaMaxVentas: Integer;
  dia: Integer;

begin
  // Inicializamos el arreglo de ventas por día
  for dia := 1 to MAX_DIAS do
    ventasPorDia[dia] := 0;

  // Inicializamos las variables
  totalVentas := 0;
  maxVentas := 0;
  diaMaxVentas := 0;

  // Leemos las ventas para cada día del mes
  writeln('Ingrese las ventas para cada dia del mes (ingrese 0 para finalizar la lectura):');
  for dia := 1 to MAX_DIAS do
  begin
    writeln('Dia ', dia, ':');
    repeat
      write('Monto de la venta (ingrese 0 para finalizar el dia): ');
      readln(monto);
      if monto <> 0 then
      begin
        ventasPorDia[dia] := ventasPorDia[dia] + 1; // Incrementamos la cantidad de ventas para este día
        totalVentas := totalVentas + monto; // Sumamos el monto de la venta al total del mes
      end;
    until monto = 0;

    // Actualizamos el día en el que se realizaron la mayor cantidad de ventas
    if ventasPorDia[dia] > maxVentas then
    begin
      maxVentas := ventasPorDia[dia];
      diaMaxVentas := dia;
    end;
  end;

  // Mostramos la cantidad de ventas por día
  writeln('Cantidad de ventas por cada dia del mes:');
  for dia := 1 to MAX_DIAS do
    writeln('Dia ', dia, ': ', ventasPorDia[dia]);

  // Mostramos el monto total acumulado en ventas de todo el mes
  writeln('Monto total acumulado en ventas de todo el mes: ', totalVentas);

  // Mostramos el día en el que se realizó la mayor cantidad de ventas
  writeln('Dia en el que se realizo la mayor cantidad de ventas: Dia ', diaMaxVentas, ' con ', maxVentas, ' ventas.');

  readln;
end.
