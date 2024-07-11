object Form3: TForm3
  Left = 718
  Top = 164
  Width = 583
  Height = 357
  Caption = 'KATEGORI'
  Color = clTeal
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
    Left = 42
    Top = 36
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
    Left = 34
    Top = 266
    Width = 94
    Height = 16
    Caption = 'MASUKAN NAME'
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 138
    Top = 36
    Width = 393
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 146
    Top = 260
    Width = 385
    Height = 21
    TabOrder = 1
    OnChange = Edit2Change
  end
  object bsimpan: TButton
    Left = 114
    Top = 76
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = bsimpanClick
  end
  object bubah: TButton
    Left = 202
    Top = 76
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 3
    OnClick = bubahClick
  end
  object bhapus: TButton
    Left = 284
    Top = 76
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = bhapusClick
  end
  object DBGrid1: TDBGrid
    Left = 35
    Top = 122
    Width = 496
    Height = 120
    DataSource = DataModule4.dskategori
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object bbatal: TButton
    Left = 370
    Top = 76
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 6
  end
  object Bbaru: TButton
    Left = 34
    Top = 76
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 7
    OnClick = BbaruClick
  end
  object Button1: TButton
    Left = 458
    Top = 76
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 8
    OnClick = Button1Click
  end
end
