unit Unit3checkbox;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, MaskEdit;

type

  { TForm1 }

  TForm1 = class(TForm)
    CheckBox1: TCheckBox;
    chkCash: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    RadioGroup1: TRadioGroup;
    btMulai: TButton;
    btSelesai: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure btMulaiClick(Sender: TObject);
    procedure btSelesaiClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Edit4.Enabled:=False;
  Edit4.Color:=clBtnFace;
  Edit5.Enabled:=False;
  Edit5.Color:=clBtnFace;
  Edit6.Enabled:=False;
  Edit6.Color:=clBtnFace;
end;

procedure TForm1.Edit2Change(Sender: TObject);
var
  SJumlah, SDisc, SBersih             : String[30];
  Harga, Banyak, Jumlah, Disc, Bersih : Single;
  Kode                                : Integer;
begin
  val(Edit2.Text,Harga,Kode);
  val(Edit3.Text,Banyak,Kode);
  Jumlah:=Harga*Banyak;
  if chkAnggota.Checked then
    Disc:=0.1*Jumlah
  else
    Disc:=0;

  if chkCash.Checked then
    Disc:=Disc+0.1*Jumlah
  else
    Disc:=Disc;

  Bersih:=Jumlah-Disc;
  str(Jumlah:20:0,SJumlah);
  str(Disc:20:0,SDisc);
  str(Bersih:20:0,SBersih);
  Edit4.Text:=SJumlah;
  Edit5.Text:=SDisc;
  Edit6.Text:=SBersih;
end;

procedure TForm1.btMulaiClick(Sender: TObject);
begin
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
  Edit5.Text:='';
  Edit6.Text:='';
  Edit1.SetFocus;
  chkAnggota.Checked := False;
  chkCash.Checked := False;
end;

procedure TForm1.btSelesaiClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
