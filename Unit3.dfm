object Form3: TForm3
  Left = 402
  Top = 212
  Width = 463
  Height = 370
  Caption = 'KATEGORI'
  Color = clOlive
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 61
    Top = 37
    Width = 33
    Height = 16
    Caption = 'NAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 53
    Top = 267
    Width = 94
    Height = 16
    Caption = 'MASUKAN NAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 157
    Top = 37
    Width = 121
    Height = 21
    TabOrder = 0
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 165
    Top = 269
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 157
    Top = 69
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 237
    Top = 69
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 319
    Top = 69
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 301
    Top = 269
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 54
    Top = 107
    Width = 320
    Height = 120
    DataSource = DataModule4.dskategori
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
