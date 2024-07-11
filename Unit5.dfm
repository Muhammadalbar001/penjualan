object Form5: TForm5
  Left = 409
  Top = 245
  Width = 682
  Height = 425
  Caption = 'SATUAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 75
    Top = 54
    Width = 43
    Height = 19
    Caption = 'NAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 75
    Top = 87
    Width = 78
    Height = 19
    Caption = 'DESKRIPSI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 75
    Top = 310
    Width = 124
    Height = 19
    Caption = 'MASUKAN NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 187
    Top = 54
    Width = 401
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 187
    Top = 86
    Width = 401
    Height = 21
    TabOrder = 1
  end
  object btnsimpan: TButton
    Left = 163
    Top = 126
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = btnsimpanClick
  end
  object btnedit: TButton
    Left = 251
    Top = 126
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 3
    OnClick = btneditClick
  end
  object btnhapus: TButton
    Left = 339
    Top = 126
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = btnhapusClick
  end
  object btnbatal: TButton
    Left = 427
    Top = 126
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 5
    OnClick = btnbatalClick
  end
  object DBGrid1: TDBGrid
    Left = 75
    Top = 174
    Width = 513
    Height = 120
    DataSource = DataModule4.dssatuan
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit3: TEdit
    Left = 211
    Top = 310
    Width = 377
    Height = 21
    TabOrder = 7
    OnChange = Edit3Change
  end
  object btnbaru: TButton
    Left = 75
    Top = 126
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 8
    OnClick = btnbaruClick
  end
  object btnlaporan: TButton
    Left = 515
    Top = 126
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 9
    OnClick = btnlaporanClick
  end
end
