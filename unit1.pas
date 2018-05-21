unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Button1Click(Sender: TObject);
var f:textFile;
    n,i:integer;
    a:array[0..100]of integer;
begin
  n:=strTOint(Edit1.text);
  a[1]:=0;
  a[2]:=1;
  for i:=3 to n do a[i]:=a[i-2]+a[i-1];
  assignFile(f,'Fibonacci.txt');
  rewrite(f);
  for i:=1 to n do writeln(f,a[i]);
  closeFile(f);
end;

end.

