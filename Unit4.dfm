object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 346
  Top = 347
  Height = 235
  Width = 436
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
  object Zsatuan: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 201
    Top = 48
  end
  object dssatuan: TDataSource
    DataSet = Zsatuan
    Left = 201
    Top = 120
  end
  object Zsupplier: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from supplier')
    Params = <>
    Left = 257
    Top = 48
  end
  object dssupplier: TDataSource
    DataSet = Zsupplier
    Left = 257
    Top = 120
  end
  object Zkustomer: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kustomer')
    Params = <>
    Left = 323
    Top = 48
  end
  object dskustomer: TDataSource
    DataSet = Zkustomer
    Left = 323
    Top = 120
  end
end
