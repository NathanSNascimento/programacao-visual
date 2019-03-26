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
      'C:\Users\nathan22\Dropbox\TADS\2019_1\Programa'#231#227'o Visual\Ativida' +
      'des\Atividade02\fontes\Win32\Debug'
    Left = 224
    Top = 32
  end
  object FDQAlunos: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM CAD_ALUNO')
    Left = 80
    Top = 120
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
    object FDQAlunoscidade: TWideStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object FDQAlunosuf: TWideStringField
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
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
  end
  object DSAlunos: TDataSource
    AutoEdit = False
    DataSet = FDQAlunos
    Left = 232
    Top = 144
  end
end
