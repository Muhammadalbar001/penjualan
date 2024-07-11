object Form6: TForm6
  Left = 500
  Top = 123
  Width = 624
  Height = 540
  Caption = 'KUSTOMER'
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
    Left = 52
    Top = 36
    Width = 25
    Height = 18
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 52
    Top = 68
    Width = 40
    Height = 18
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 52
    Top = 100
    Width = 33
    Height = 18
    Caption = 'TELP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 52
    Top = 132
    Width = 42
    Height = 18
    Caption = 'EMAIL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 52
    Top = 164
    Width = 56
    Height = 18
    Caption = 'ALAMAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 52
    Top = 196
    Width = 58
    Height = 18
    Caption = 'MEMBER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 52
    Top = 444
    Width = 111
    Height = 18
    Caption = 'MASUKAN NAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object diskon: TLabel
    Left = 284
    Top = 204
    Width = 64
    Height = 18
    Caption = 'DISKON :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 180
    Top = 36
    Width = 389
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 180
    Top = 68
    Width = 389
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 180
    Top = 100
    Width = 389
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 180
    Top = 132
    Width = 389
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 180
    Top = 444
    Width = 389
    Height = 21
    TabOrder = 4
    OnChange = Edit5Change
  end
  object Button6baru: TButton
    Left = 52
    Top = 236
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 5
    OnClick = Button6baruClick
  end
  object Button1simpan: TButton
    Left = 140
    Top = 236
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = Button1simpanClick
  end
  object Button2ubah: TButton
    Left = 228
    Top = 236
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 7
    OnClick = Button2ubahClick
  end
  object Button3hapus: TButton
    Left = 316
    Top = 236
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = Button3hapusClick
  end
  object Button5batal: TButton
    Left = 404
    Top = 236
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 9
    OnClick = Button5batalClick
  end
  object Edit6: TEdit
    Left = 180
    Top = 164
    Width = 389
    Height = 21
    TabOrder = 10
  end
  object DBGrid1: TDBGrid
    Left = 52
    Top = 276
    Width = 517
    Height = 153
    DataSource = DataModule4.dskustomer
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Button4laporan: TButton
    Left = 492
    Top = 236
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 12
    OnClick = Button4laporanClick
  end
  object cbb1: TComboBox
    Left = 184
    Top = 200
    Width = 81
    Height = 21
    ItemHeight = 13
    TabOrder = 13
    Text = '=-PILIH-='
    OnChange = cbb1Change
    Items.Strings = (
      'Yes'
      'No')
  end
end
