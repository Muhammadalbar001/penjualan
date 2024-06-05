object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 191
  Top = 137
  Height = 235
  Width = 361
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\User\Downloads\libmysql.dll'
    Left = 32
    Top = 40
  end
  object Zkategori: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from  kategori')
    Params = <>
    Left = 136
    Top = 48
  end
  object dskategori: TDataSource
    DataSet = Zkategori
    Left = 136
    Top = 120
  end
end
