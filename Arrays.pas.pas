 uses crt; 
 const 
 n = 10;                                  // ���������� ���������� 
 var 
 array1, array2: array[1..n] of integer;  // ������ ��� �������,����������� ��������� 
 i,j: Byte;                               // ����� �� 0 �� 255
  begin 
   writeln('��������� ������ ������:'); 
   for i := 1 to n do 
   read(array1[i]);                       // ���������� ������� �������
   writeln('��������� ������ ������:'); 
   for i := 1 to n do 
   read(array2[i]);                       // ���������� ������� ������� 
    begin  
     j:=0;                                // j ���������� ������� 
     i:=1;  
     while(i<=n)and(j=0) do              
     if array1[i]=array2[1] then          // ���� ����� �� ������� ������� ����� ������� ����� �� �������,�� j ��������� i
     j:=i
     else i:=i+1;                         // ����� ��������� i �� ������� � ����� ��������� � while
     write(j,'  ');                       // ����� ������� � ������ �������,������� ����� ������� �������
     end; 
  end.                                