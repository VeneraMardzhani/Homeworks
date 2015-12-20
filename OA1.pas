 const n = 30;
 type ar = array[1..n] of integer;               // ���������� ����
 var
    a: ar;                                       // ���������� ����������
    i: byte;
    p,q,e: integer;
 
 procedure filling(b: ar; min,max: integer);     // ��������� ���������� �������
    var k: byte;
    begin
        randomize;                               // ��������� ��������� �����
        for k:=1 to n do                         // ���� ��� k �� 1 �� n
        b[k] := random(max-min) + min;
    end;
 
 procedure search(var c: ar; elem: integer);     // �������� ������ ��������
    var m,i,j: integer; 
    begin
        m := n div 2;                            // m ��������� ����� ����� �� ������ ����� n �� 2
        i := 1;                                  // i ��������� 1
        j := n;                                  // j ��������� n
        while (c[m] <> elem) and (i <= j) do     // ���� c[m] �� ����� elem � i ������ ��� ����� j,������
          begin                     
            if elem > c[m] then                  // ���� elem ������ c[m],����� 
            i := m + 1                           // i ��������� m + 1
            else 
            j := m - 1;                          // ����� j ��������� m - 1
            m := (i+j) div 2;                    // m ��������� ����� ����� �� ������� (i+j) �� 2
          end;
        if i > j then                            // ���� i ������ j, ��
        writeln('no')                            // ������� �� ����� no
        else 
        writeln('yes');                          // ����� ������� �� ����� yes
    end;
 
 procedure sorting(c: ar; elem: integer);        // ��������� ���������� �������
    var j,k,m,l: byte;
    begin
        m := n;                                  // m ��������� n
        while m > 1 do                           // ���� m ������ �������, ������
           begin
            l := 1;                              // l ��������� �������
            for j := 2 to m do                   // ���� ��� j �� 2 �� m
                if c[j] > c[l] then              // ���� c[j] ������ c[l], �����
                l := j;                          // l ��������� j
              k := c[l];                         // k ��������� c[l]
              c[l] := c[m];                      // c[l] ��������� c[m]
              c[m] := k;                         // c[m] ��������� k
              m := m - 1;                        // m ��������� m - 1
           end; 
        search(c,elem);                          // ����� �������� ������ �������� � �������                   
    end;
 
  begin
    write('min: ');                              // ������� min: �� �����
    readln(p);                                   // ���������� p 
    write('max: ');                              // ������� max: �� �����
    readln(q);                                   // ���������� q
    write('element: ');                          // ������� element: �� �����
    readln(e);                                   // ���������� e
    filling(a, p,q);                             // ����� ��������� ���������� �������
    sorting(a, e);                               // ����� ��������� ���������� �������
    for i:=1 to n do                             // ���� ��� i �� 1 �� n 
    write(a[i],' ');                             // �������� a[i] �� �����   
    writeln;
  end.