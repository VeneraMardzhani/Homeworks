program Proga;
uses crt;
const
    b = -1.5;
    h = 0.24;
    n = 8;
    a: Array[1..3] Of Single = (-14.8, 0, 10);
function F(const a, x: Single): Real;
begin
    if (a >= 0)
    then
        Result := x * Cos(a - x + 1)
    else
        Result := 2 * Cos(a + x);
    F := Result;
end;
var
    FI, PSI, x, y: Real;
    i, j: Byte;
begin
    for i := 1 to 3 do
    begin
        WriteLn('При a=', a[i]:0:1);
        for j := 1 to n do
        begin
            x := b + j * h;
            y := F(a[i], x);
            if (j = 1)
            then
            begin
                FI :=y;
                PSI :=(n+1)*y;
            end
            else
                if (y < FI)
                then
                    FI :=y
                else
                    if (y > PSI)
                    then
                        PSI :=(n+1)*y;
            WriteLn('x=', x:0:2, #9, #9, 'y=', y:0:2);
        end;
        WriteLn('FI=', FI:0:4, #9, 'PSI=', PSI:0:4);
        end;
end.