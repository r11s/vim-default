{ Testdatei: Kommentar in Klammern }
program Sample;
(* Block-Kommentar *)
uses SysUtils, Math;

const
  MaxItems = 16;
  Ratio    = 3.14159;
  Mask     = $FF;
  Greeting = 'Hallo, ''Welt''';

type
  TPoint = record
    X, Y: Double;
  end;

  TShape = class
  private
    FName: string;
  public
    constructor Create(const AName: string);
    function Area: Double; virtual; abstract;
    property Name: string read FName;
  end;

function Total(const Xs: array of Integer): Integer;
var
  I: Integer;
begin
  Result := 0;
  for I := Low(Xs) to High(Xs) do
    if Xs[I] > 0 then Inc(Result, Xs[I]);   // Zeilenkommentar
end;

var
  P: TPoint;
begin
  P.X := 1.5; P.Y := Ratio * 2;
  WriteLn(Greeting, ' ', Total([1, 2, 3]), #9, 'x');
end.
