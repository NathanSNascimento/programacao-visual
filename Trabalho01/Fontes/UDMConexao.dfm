object DMConexao: TDMConexao
  OldCreateOrder = False
  Height = 186
  Width = 295
  object FDConexao: TFDConnection
    Params.Strings = (
      'Database=Trabalho1'
      'User_Name=postgres'
      'Password=admin'
      'DriverID=pG')
    Connected = True
    Left = 32
    Top = 32
  end
  object FDQCarros: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'select * from cad_carros')
    Left = 104
    Top = 32
    object FDQCarrosnr_chassi: TIntegerField
      FieldName = 'nr_chassi'
      Origin = 'nr_chassi'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQCarrosid_marca: TIntegerField
      FieldName = 'id_marca'
      Origin = 'id_marca'
    end
    object FDQCarrosid_cor: TIntegerField
      FieldName = 'id_cor'
      Origin = 'id_cor'
    end
    object FDQCarrosmodelo: TWideStringField
      FieldName = 'modelo'
      Origin = 'modelo'
      Size = 50
    end
    object FDQCarrosqtde_portas: TIntegerField
      FieldName = 'qtde_portas'
      Origin = 'qtde_portas'
    end
    object FDQCarrosano: TIntegerField
      FieldName = 'ano'
      Origin = 'ano'
    end
    object FDQCarrosdescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 255
    end
  end
  object FDDriverLink: TFDPhysPgDriverLink
    VendorHome = 
      'C:\Users\nathan22\Documents\programacao-visual\Trabalho01\Fontes' +
      '\Win32\Debug'
    Left = 168
    Top = 32
  end
  object DSCarros: TDataSource
    DataSet = FDQCarros
    Left = 232
    Top = 32
  end
  object FDQComboCor: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'select * from cad_marcas')
    Left = 32
    Top = 112
  end
  object FDQNivel: TFDQuery
    Connection = FDConexao
    Left = 96
    Top = 112
  end
end
