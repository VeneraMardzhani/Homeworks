Var
mas: array [1..9, 1..9] of integer;       // ������� ����� ����� ����.����������� 9x9
i, j, a, max, min, kol: integer;          
begin
writeln('matrix:');                       // ��������� ��������� �����
for i:= 1 to 9 do                         // ���� ��� i �� 1 �� 9
	begin                         
	for j:= 1 to 9 do                       // ���� ��� j �� 1 �� 9
		begin
		mas[i, j]:= integer(random(9));       // ������� ����������� ������ ������� �� 0�� 9
		write(mas[i, j], ' ');                // ����� ������� �� ����� 
		end;
	writeLn;
	end;
for i:= 1 to 9 do                         // ���� ��� i �� 1 �� 9
	begin
	max:= mas[i, 1];                        // max ����������� mas[i, 1]
	for a:= 2 to 9 do                       // ���� ��� a �� 2 �� 9
	if mas[i, a] > max                      // ���� mas[i, a] ������ max
		then max:= mas[i, a];                 // �� max ���������� mas[i, a]
	for j:= 1 to 9 do                       // ���� ��� j �� 1 �� 9
		begin
		if mas[i, j] = max then               // ���� mas[i, j] ����� max, �����
			begin
			min:= 1;                            // min ��������� �������
			for a:= 1 to 9 do                   // ���� ��� a �� 1 �� 9
			if mas[a, j] < mas[i, j]            // ���� mas[a, j] ������ mas[i, j]
				then min:= 0;                     // �� min ���������� ����
			if min = 1                          // ���� min ����� 1 
				then kol:= 1;                     // �� kol ����������� ����� �������
			if min = 1                          // ���� min ����� ������� 
				then writeln('sedlo mas[', i, ',', j, ']=', mas[i, j]);   //������� �� ����� sedlo mas[', i, ',', j, ']=', mas[i, j]
			end;
		end;
	end;
if kol = 0 then                            // ���� kol ����� ����
	writeln('no');                           // ������� �� ����� no
readln;
end.