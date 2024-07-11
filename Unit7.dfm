object Form7: TForm7
  Left = 413
  Top = 188
  Width = 663
  Height = 570
  Caption = 'SUPPLIER'
  Color = clHotLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 66
    Top = 27
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl2: TLabel
    Left = 66
    Top = 59
    Width = 28
    Height = 13
    Caption = 'NAME'
  end
  object lbl3: TLabel
    Left = 66
    Top = 91
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object lbl4: TLabel
    Left = 66
    Top = 123
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object lbl5: TLabel
    Left = 66
    Top = 155
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object lbl6: TLabel
    Left = 66
    Top = 187
    Width = 67
    Height = 13
    Caption = 'PERUSAHAAN'
  end
  object lbl7: TLabel
    Left = 66
    Top = 219
    Width = 58
    Height = 13
    Caption = 'NAMA BANK'
  end
  object lbl8: TLabel
    Left = 66
    Top = 251
    Width = 56
    Height = 13
    Caption = 'AKUN BANK'
  end
  object lbl9: TLabel
    Left = 66
    Top = 283
    Width = 74
    Height = 13
    Caption = 'NO AKUN BANK'
  end
  object lbl10: TLabel
    Left = 66
    Top = 491
    Width = 86
    Height = 13
    Caption = 'MASUKKAN NAMA'
  end
  object edt1: TEdit
    Left = 162
    Top = 19
    Width = 417
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 162
    Top = 51
    Width = 417
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 162
    Top = 83
    Width = 417
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 162
    Top = 115
    Width = 417
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 162
    Top = 147
    Width = 417
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 162
    Top = 179
    Width = 417
    Height = 21
    TabOrder = 5
  end
  object edt7: TEdit
    Left = 162
    Top = 211
    Width = 417
    Height = 21
    TabOrder = 6
  end
  object edt8: TEdit
    Left = 162
    Top = 243
    Width = 417
    Height = 21
    TabOrder = 7
  end
  object edt9: TEdit
    Left = 162
    Top = 275
    Width = 417
    Height = 21
    TabOrder = 8
  end
  object btn1: TButton
    Left = 154
    Top = 315
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 9
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 242
    Top = 315
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 10
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 330
    Top = 315
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 11
    OnClick = btn3Click
  end
  object dbgrd1: TDBGrid
    Left = 66
    Top = 355
    Width = 513
    Height = 120
    DataSource = DataModule4.dssupplier
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt10: TEdit
    Left = 170
    Top = 491
    Width = 409
    Height = 21
    TabOrder = 13
    OnChange = edt10Change
  end
  object btn5: TButton
    Left = 418
    Top = 315
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 14
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 66
    Top = 315
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 15
    OnClick = btn6Click
  end
  object btn4: TButton
    Left = 506
    Top = 315
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 16
    OnClick = btn4Click
  end
end
