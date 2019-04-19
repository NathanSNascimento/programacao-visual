object DMConnCor: TDMConnCor
  OldCreateOrder = False
  Height = 192
  Width = 336
  object FDQCores: TFDQuery
    Active = True
    Connection = DMConexao.FDConexao
    SQL.Strings = (
      'select * from cad_cores')
    Left = 104
    Top = 32
    object FDQCoresid_cor: TIntegerField
      FieldName = 'id_cor'
      Origin = 'id_cor'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQCoresnm_cor: TWideStringField
      FieldName = 'nm_cor'
      Origin = 'nm_cor'
      Size = 50
    end
  end
  object DSCores: TDataSource
    DataSet = FDQCores
    Left = 192
    Top = 56
  end
  object FDQComboCores: TFDQuery
    Connection = DMConexao.FDConexao
    SQL.Strings = (
      'select * from cad_cores')
    Left = 40
    Top = 104
  end
end
