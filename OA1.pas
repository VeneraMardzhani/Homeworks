 const n = 30;
 type ar = array[1..n] of integer;               // объ€вление типа
 var
    a: ar;                                       // объ€вление переменных
    i: byte;
    p,q,e: integer;
 
 procedure filling(b: ar; min,max: integer);     // процедура заполнени€ массива
    var k: byte;
    begin
        randomize;                               // генератор случайных чисел
        for k:=1 to n do                         // цикл дл€ k от 1 до n
        b[k] := random(max-min) + min;
    end;
 
 procedure search(var c: ar; elem: integer);     // процдура поиска элемента
    var m,i,j: integer; 
    begin
        m := n div 2;                            // m присвоить целую часть от елени€ числа n на 2
        i := 1;                                  // i присвоить 1
        j := n;                                  // j присвоить n
        while (c[m] <> elem) and (i <= j) do     // пока c[m] не равно elem и i меньше или равно j,делать
          begin                     
            if elem > c[m] then                  // если elem больше c[m],тогда 
            i := m + 1                           // i присвоить m + 1
            else 
            j := m - 1;                          // иначе j присвоить m - 1
            m := (i+j) div 2;                    // m присвоить целую часть от делени€ (i+j) на 2
          end;
        if i > j then                            // если i больше j, то
        writeln('no')                            // вывести на экран no
        else 
        writeln('yes');                          // иначе вывести на экран yes
    end;
 
 procedure sorting(c: ar; elem: integer);        // процедура сортировки массива
    var j,k,m,l: byte;
    begin
        m := n;                                  // m присвоить n
        while m > 1 do                           // пока m больше единицы, делать
           begin
            l := 1;                              // l присвоить единицу
            for j := 2 to m do                   // цикл дл€ j от 2 до m
                if c[j] > c[l] then              // если c[j] больше c[l], тогда
                l := j;                          // l присвоить j
              k := c[l];                         // k присвоить c[l]
              c[l] := c[m];                      // c[l] присвоить c[m]
              c[m] := k;                         // c[m] присвоить k
              m := m - 1;                        // m присвоить m - 1
           end; 
        search(c,elem);                          // вызов процеуры поиска элемента в массиве                   
    end;
 
  begin
    write('min: ');                              // вывести min: на экран
    readln(p);                                   // считывание p 
    write('max: ');                              // вывести max: на экран
    readln(q);                                   // считывание q
    write('element: ');                          // вывести element: на экран
    readln(e);                                   // считывание e
    filling(a, p,q);                             // вызов процедуры заполнени€ массива
    sorting(a, e);                               // вызов процедуры сортировки массива
    for i:=1 to n do                             // цикл дл€ i от 1 до n 
    write(a[i],' ');                             // выводить a[i] на экран   
    writeln;
  end.