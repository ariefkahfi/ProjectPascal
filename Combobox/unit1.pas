unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ComboBox1Change(Sender: TObject);
var
  kurs, jumlah, rupiah : Single;
  kode : Integer;
begin
  if ComboBox1.Text='US $' then kurs:=6950;
  if ComboBox1.Text='JPY' then kurs:=64.4862;
  if ComboBox1.Text='SGD' then kurs:=3953.36;
  if ComboBox1.Text='AUD' then kurs:=4253.12;
  Edit3.Text:=Format('%25.2n', [kurs]);
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Edit3Change(Sender: TObject);
var
  kurs, jumlah, rupiah : Single;
  kode : Integer;
  sKurs, sJumlah : String[30];
begin
  sKurs:=Edit3.Text;
  while Pos(',', sKurs) > 0 Do Delete(sKurs, Pos(',', sKurs), 1);
  while Pos(',', sJumlah) > 0 Do Delete(sJumlah, Pos(',', sJumlah), 1);
  val(sKurs, kurs, kode);
  val(sJumlah, jumlah, kode);
  rupiah:=kurs*jumlah;
  Edit2.Text:=Format('%n', [rupiah]);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ComboBox1.Items.Append('US $');
  ComboBox1.Items.Append('JPY');
  ComboBox1.Items.Append('SGD');
  ComboBox1.Items.Append('AUD');
  Edit1.OnChange:=Edit3.OnChange;
end;

end.

