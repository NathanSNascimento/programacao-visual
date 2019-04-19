object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 245
  Width = 386
  object FDConexao: TFDConnection
    Params.Strings = (
      'Database=avaliacao_pv'
      'User_Name=postgres'
      'Password=admin'
      'DriverID=PG')
    Connected = True
    Left = 56
    Top = 48
  end
  object FDPgDriverLink: TFDPhysPgDriverLink
    VendorHome = 
      'C:\Users\nathan22\Documents\programacao-visual\Avaliacao01\Fonte' +
      's\Win32\Debug'
    Left = 184
    Top = 88
  end
end
