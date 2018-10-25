unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    edPanjang: TEdit;
    edLebar: TEdit;
    edLuas: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    sbPanjang: TScrollBar;
    sbLebar: TScrollBar;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbPanjangChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  sbLebar.Min:=0;
  sbLebar.Max:=10000;
  sbLebar.SmallChange:=1;
  sbLebar.LargeChange:=1000;

  sbPanjang.Min:=0;
  sbPanjang.Max:=10000;
  sbPanjang.SmallChange:=1;
  sbPanjang.LargeChange:=1000;
  sbLebar.OnChange:=sbPanjang.OnChange;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.sbPanjangChange(Sender: TObject);
begin
  edPanjang.Text:=Format('%18.2n',[sbPanjang.Position / 100]);
  edLebar.Text:= Format('%18.2n',[sbLebar.Position / 100]);
  edLuas.Text:= Format('%18.2n',[sbPanjang.Position / 100 * sbLebar.Position / 100]);
end;

end.

