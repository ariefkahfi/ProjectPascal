object Form1: TForm1
  Left = 948
  Top = 125
  Width = 419
  Height = 332
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 65
    Height = 13
    Caption = 'Nama Barang'
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 66
    Height = 13
    Caption = 'Harga Satuan'
  end
  object Label3: TLabel
    Left = 16
    Top = 80
    Width = 36
    Height = 13
    Caption = 'Banyak'
  end
  object Label4: TLabel
    Left = 16
    Top = 112
    Width = 33
    Height = 13
    Caption = 'Jumlah'
  end
  object Label5: TLabel
    Left = 16
    Top = 144
    Width = 42
    Height = 13
    Caption = 'Discount'
  end
  object Label6: TLabel
    Left = 16
    Top = 176
    Width = 65
    Height = 13
    Caption = 'Jumlah Bersih'
  end
  object Edit1: TEdit
    Left = 112
    Top = 16
    Width = 177
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 112
    Top = 48
    Width = 129
    Height = 21
    TabOrder = 1
    OnChange = Edit2Change
  end
  object Edit3: TEdit
    Left = 112
    Top = 80
    Width = 129
    Height = 21
    TabOrder = 2
    OnChange = Edit2Change
  end
  object Edit4: TEdit
    Left = 112
    Top = 112
    Width = 129
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 112
    Top = 144
    Width = 129
    Height = 21
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 112
    Top = 176
    Width = 129
    Height = 21
    TabOrder = 5
  end
  object RadioGroup1: TRadioGroup
    Left = 272
    Top = 72
    Width = 113
    Height = 81
    Caption = 'Discount'
    TabOrder = 6
  end
  object btMulai: TButton
    Left = 72
    Top = 232
    Width = 89
    Height = 25
    Caption = 'Mulai'
    TabOrder = 7
    OnClick = btMulaiClick
  end
  object btSelesai: TButton
    Left = 240
    Top = 232
    Width = 89
    Height = 25
    Caption = 'Selesai'
    TabOrder = 8
    OnClick = btSelesaiClick
  end
  object chkAnggota: TCheckBox
    Left = 280
    Top = 96
    Width = 97
    Height = 17
    Caption = 'Kartu Anggota'
    TabOrder = 9
    OnClick = Edit2Change
  end
  object chkCash: TCheckBox
    Left = 280
    Top = 120
    Width = 97
    Height = 17
    Caption = 'Cash'
    TabOrder = 10
    OnClick = Edit2Change
  end
end
