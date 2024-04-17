// Exercise: "Realizar un programa que lea información de 200 productos de un supermercado. De cada producto se lee código y precio (cada código es un número entre 1 y 200). Informar en pantalla:
//              ● Los códigos de los dos productos más baratos.
//              ● La cantidad de productos de más de 16 pesos con código par"

program Ejercicio6;

var
  codigo, precio, codigoMasBarato1, codigoMasBarato2, cantidadProductosCarosPar: Integer;
  precioMasBarato1, precioMasBarato2: Real;
  i: Integer;

begin
  // Inicializamos las variables para los productos más baratos
  codigoMasBarato1 := 0;
  codigoMasBarato2 := 0;
  precioMasBarato1 := 999999;
  precioMasBarato2 := 999999;

  // Inicializamos el contador de productos caros con código par
  cantidadProductosCarosPar := 0;

  // Leemos la información de los productos
  writeln('Ingrese informacion de los productos:');
  for i := 1 to 200 do
  begin
    writeln('Producto ', i, ':');
    write('Codigo: ');
    readln(codigo);
    write('Precio: ');
    readln(precio);

    // Verificamos si es uno de los dos productos más baratos
    if precio < precioMasBarato1 then
    begin
      precioMasBarato2 := precioMasBarato1;
      precioMasBarato1 := precio;
      codigoMasBarato2 := codigoMasBarato1;
      codigoMasBarato1 := codigo;
    end
    else if precio < precioMasBarato2 then
    begin
      precioMasBarato2 := precio;
      codigoMasBarato2 := codigo;
    end;

    // Verificamos si el producto tiene precio mayor a 16 y código par
    if (precio > 16) and (codigo mod 2 = 0) then
      cantidadProductosCarosPar := cantidadProductosCarosPar + 1;
  end;

  // Mostramos los resultados
  writeln('Los codigos de los dos productos mas baratos son: ', codigoMasBarato1, ' y ', codigoMasBarato2);
  writeln('La cantidad de productos de mas de 16 pesos con codigo par es: ', cantidadProductosCarosPar);

  readln;
end.
