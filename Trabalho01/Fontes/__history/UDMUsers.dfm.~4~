object DMUsers: TDMUsers
  OldCreateOrder = False
  Height = 227
  Width = 386
  object FDQUsers: TFDQuery
    Active = True
    Connection = DMConexao.FDConexao
    SQL.Strings = (
      'select * from cad_usuario')
    Left = 80
    Top = 56
    object FDQUserslogin: TWideStringField
      FieldName = 'login'
      Origin = '"login"'
      Size = 50
    end
    object FDQUserssenha: TWideStringField
      FieldName = 'senha'
      Origin = 'senha'
    end
    object FDQUsersnivel_acesso: TWideStringField
      FieldName = 'nivel_acesso'
      Origin = 'nivel_acesso'
      Size = 3
    end
    object FDQUsersid_usuario: TIntegerField
      FieldName = 'id_usuario'
      Origin = 'id_usuario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
end
