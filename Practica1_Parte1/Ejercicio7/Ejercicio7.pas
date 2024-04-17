program Ejercicio7;

var
  codigo: integer;
  precioActual, nuevoPrecio: real;

begin
  // Leer el código, el precio actual y el nuevo precio de cada producto
  repeat
    // Pedir al usuario que ingrese el código del producto
    writeln('Ingrese el codigo del producto (o 32767 para salir): ');
    readln(codigo);
    
    // Verificar si se debe procesar este producto
    if codigo <> 32767 then
    begin
      // Pedir al usuario que ingrese el precio actual del producto
      writeln('Ingrese el precio actual del producto ', codigo, ': ');
      readln(precioActual);
      
      // Pedir al usuario que ingrese el nuevo precio del producto
      writeln('Ingrese el nuevo precio del producto ', codigo, ': ');
      readln(nuevoPrecio);
      
      // Verificar si el nuevo precio supera en un 10% al precio actual
      if nuevoPrecio > (precioActual * 1.1) then
        writeln('El nuevo precio del producto ', codigo, ' supera en un 10% al precio actual.')
      else
        writeln('El nuevo precio del producto ', codigo, ' no supera en un 10% al precio actual.');
    end;
  until codigo = 32767; // Salir del bucle cuando se ingrese 32767 como código de producto
end.
