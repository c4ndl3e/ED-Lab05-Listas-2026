program listas_ej2;

uses uListaEnlazadaSimple;

var
  lista,lista2: tListaSimple;

begin
    initialize(lista);// 2.1 Inicializar lista

    insert_at_end(lista,1);// 2.2 Insertar elementos al final y mostrar lista
    insert_at_end(lista,2);
    insert_at_end(lista,3);
    insert_at_end(lista,4);
    insert_at_end(lista,5);
    writeln('[ ',to_string(lista),']');

    writeln(first(lista),' - ',last(lista),' = ',first(lista)-last(lista));// 2.3 Obtener primer y último elemento, calcular diferencia

    writeln('[ ',to_string(lista),']'); // 2.4 Número de elementos, eliminar al inicio, limpiar lista
    delete_at_begin(lista);
    writeln('[ ',to_string(lista),']');
    clear(lista);
    writeln('[ ',to_string(lista),']');


    writeln(is_empty(lista));// 2.5 Verificar si la lista está vacía, copiar lista, eliminar al inicio
    insert_at_end(lista,1);
    copy(lista,lista2);
    delete_at_begin(lista2);
    writeln('[ ',to_string(lista),']');
    writeln('[ ',to_string(lista2),']');

    insert_at_begin(lista,0);// 2.6 Insertar al inicio
    writeln('[ ',to_string(lista),']');

    delete_at_end(lista);// 2.7 Eliminar al final;
    writeln('[ ',to_string(lista),']');

    insert_at_end(lista,3);
    writeln('[ ',to_string(lista),']');
    delete(lista,3);// 2.8 Eliminar un elemento específico
    writeln('[ ',to_string(lista),']');

    writeln(in_list(lista,2));// 2.9 Verificar si un elemento está en la lista

    writeln(first(lista) = last(lista));// 2.10 Verificar recursivamente si un elemento está en la lista


    readln;
end.
