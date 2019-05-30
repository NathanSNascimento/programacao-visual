object DMVenda: TDMVenda
  OldCreateOrder = False
  Height = 222
  Width = 376
  object FDQVendas: TFDQuery
    Connection = DMConexao.FDConexao
    SQL.Strings = (
      'select * from mov_vendas')
    Left = 40
    Top = 40
    object FDQVendasid_venda: TIntegerField
      FieldName = 'id_venda'
      Origin = 'id_venda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQVendasdt_venda: TDateField
      FieldName = 'dt_venda'
      Origin = 'dt_venda'
    end
    object FDQVendastotal: TIntegerField
      FieldName = 'total'
      Origin = 'total'
    end
    object FDQVendasid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
    end
  end
  object FDQItens: TFDQuery
    Connection = DMConexao.FDConexao
    SQL.Strings = (
      'select * from itens_venda where id_venda= :id_venda'
      ' ')
    Left = 120
    Top = 40
    ParamData = <
      item
        Name = 'ID_VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQItensid_venda: TIntegerField
      FieldName = 'id_venda'
      Origin = 'id_venda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQItensid_produto: TIntegerField
      FieldName = 'id_produto'
      Origin = 'id_produto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQItensqtde: TIntegerField
      FieldName = 'qtde'
      Origin = 'qtde'
    end
    object FDQItensvl_unitario: TBCDField
      FieldName = 'vl_unitario'
      Origin = 'vl_unitario'
      Precision = 10
      Size = 2
    end
  end
  object FDQProduto: TFDQuery
    Connection = DMConexao.FDConexao
    SQL.Strings = (
      'select * from cad_produtos')
    Left = 208
    Top = 40
    object FDQProdutoid_produto: TIntegerField
      FieldName = 'id_produto'
      Origin = 'id_produto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQProdutonm_produto: TWideStringField
      FieldName = 'nm_produto'
      Origin = 'nm_produto'
      Size = 100
    end
    object FDQProdutovalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 10
      Size = 2
    end
    object FDQProdutoqtde: TIntegerField
      FieldName = 'qtde'
      Origin = 'qtde'
    end
    object FDQProdutoqtd_minima: TIntegerField
      FieldName = 'qtd_minima'
      Origin = 'qtd_minima'
    end
  end
  object FDQCliente: TFDQuery
    Connection = DMConexao.FDConexao
    SQL.Strings = (
      'select * from cad_cliente')
    Left = 144
    Top = 144
    object FDQClienteid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQClientenm_cliente: TWideStringField
      FieldName = 'nm_cliente'
      Origin = 'nm_cliente'
      Size = 150
    end
    object FDQClientedt_nasc: TDateField
      FieldName = 'dt_nasc'
      Origin = 'dt_nasc'
    end
  end
end
