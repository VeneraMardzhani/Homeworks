Var
mas: array [1..9, 1..9] of integer;       // матрица целых чисел макс.размерности 9x9
i, j, a, max, min, kol: integer;          
begin
writeln('matrix:');                       // генератор случайных чисел
for i:= 1 to 9 do                         // цикл для i от 1 до 9
	begin                         
	for j:= 1 to 9 do                       // цикл для j от 1 до 9
		begin
		mas[i, j]:= integer(random(9));       // матрица заполняется целыми числами от 0до 9
		write(mas[i, j], ' ');                // вывод матрицы на экран 
		end;
	writeLn;
	end;
for i:= 1 to 9 do                         // цикл для i от 1 до 9
	begin
	max:= mas[i, 1];                        // max присваиваем mas[i, 1]
	for a:= 2 to 9 do                       // цикл для a от 2 до 9
	if mas[i, a] > max                      // если mas[i, a] больше max
		then max:= mas[i, a];                 // то max приваиваем mas[i, a]
	for j:= 1 to 9 do                       // цикл для j от 1 до 9
		begin
		if mas[i, j] = max then               // если mas[i, j] равно max, тогда
			begin
			min:= 1;                            // min присвоить единицу
			for a:= 1 to 9 do                   // цикл для a от 1 до 9
			if mas[a, j] < mas[i, j]            // если mas[a, j] меньше mas[i, j]
				then min:= 0;                     // то min приваиваем ноль
			if min = 1                          // если min равен 1 
				then kol:= 1;                     // то kol присваиваем также единицу
			if min = 1                          // если min равен единице 
				then writeln('sedlo mas[', i, ',', j, ']=', mas[i, j]);   //выводим на экран sedlo mas[', i, ',', j, ']=', mas[i, j]
			end;
		end;
	end;
if kol = 0 then                            // если kol равно нулю
	writeln('no');                           // выводим на экран no
readln;
end.