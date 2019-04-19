object DMConexao: TDMConexao
  OldCreateOrder = False
  Height = 236
  Width = 346
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=Aula1'
      'User_Name=postgres'
      'Password=admin'
      'DriverID=PG')
    Connected = True
    Left = 40
    Top = 24
  end
  object FDDriverLink: TFDPhysPgDriverLink
    VendorHome = 
      'C:\Users\nathan22\Documents\programacao-visual\Atividade02\fonte' +
      's\Win32\Debug'
    Left = 192
    Top = 24
  end
  object FDQAlunos: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM CAD_ALUNO')
    Left = 120
    Top = 24
    object FDQAlunosid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
    end
    object FDQAlunosname: TWideStringField
      FieldName = 'name'
      Origin = 'name'
      Size = 40
    end
    object FDQAlunosdt_nasc: TDateField
      FieldName = 'dt_nasc'
      Origin = 'dt_nasc'
    end
    object FDQAlunoscpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      EditMask = '!000.000.000-00;1;_'
      Size = 14
    end
    object FDQAlunoscep: TWideStringField
      FieldName = 'cep'
      Origin = 'cep'
      EditMask = '00000-000;1;_'
      Size = 9
    end
    object FDQAlunosendereco: TWideStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 50
    end
    object FDQAlunosbairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
    end
    object FDQAlunoscelular: TWideStringField
      FieldName = 'celular'
      Origin = 'celular'
      EditMask = '(00) \90000-0000;1;_'
      Size = 11
    end
    object FDQAlunosfone: TWideStringField
      FieldName = 'fone'
      Origin = 'fone'
      EditMask = '(00) 0000-0000;1;'
      Size = 15
    end
    object FDQAlunosid_cidade: TIntegerField
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
    end
  end
  object DSAlunos: TDataSource
    AutoEdit = False
    DataSet = FDQAlunos
    Left = 264
    Top = 24
  end
  object FDQEstados: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM CAD_ESTADOS')
    Left = 40
    Top = 88
    object FDQEstadosid_estado: TIntegerField
      FieldName = 'id_estado'
      Origin = 'id_estado'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQEstadossigla_uf: TWideStringField
      FieldName = 'sigla_uf'
      Origin = 'sigla_uf'
      Size = 2
    end
    object FDQEstadosnm_estado: TWideStringField
      FieldName = 'nm_estado'
      Origin = 'nm_estado'
      Size = 50
    end
  end
  object FDQCidades: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM CAD_CIDADES')
    Left = 120
    Top = 88
    object FDQCidadesid_cidade: TIntegerField
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQCidadesid_estado: TIntegerField
      FieldName = 'id_estado'
      Origin = 'id_estado'
    end
    object FDQCidadesnm_cidade: TWideStringField
      FieldName = 'nm_cidade'
      Origin = 'nm_cidade'
      Size = 100
    end
  end
  object FDQComboEstados: TFDQuery
    Active = True
    OnCalcFields = FDQComboEstadosCalcFields
    Connection = FDConnection
    SQL.Strings = (
      'select * from cad_estados')
    Left = 192
    Top = 88
    object FDQComboEstadosid_estado: TIntegerField
      FieldName = 'id_estado'
      Origin = 'id_estado'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQComboEstadossigla_uf: TWideStringField
      FieldName = 'sigla_uf'
      Origin = 'sigla_uf'
      Size = 2
    end
    object FDQComboEstadosnm_estado: TWideStringField
      FieldName = 'nm_estado'
      Origin = 'nm_estado'
      Size = 50
    end
    object FDQComboEstadossigla_nome: TStringField
      FieldKind = fkCalculated
      FieldName = 'sigla_nome'
      Size = 50
      Calculated = True
    end
  end
  object FDQComboCidades: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from cad_cidades where id_estado = :pestado')
    Left = 264
    Top = 88
    ParamData = <
      item
        Name = 'PESTADO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQComboCidadesid_cidade: TIntegerField
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQComboCidadesid_estado: TIntegerField
      FieldName = 'id_estado'
      Origin = 'id_estado'
    end
    object FDQComboCidadesnm_cidade: TWideStringField
      FieldName = 'nm_cidade'
      Origin = 'nm_cidade'
      Size = 100
    end
  end
end
