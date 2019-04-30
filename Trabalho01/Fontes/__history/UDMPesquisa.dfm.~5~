object DMPesquisa: TDMPesquisa
  OldCreateOrder = False
  Height = 208
  Width = 325
  object FDQPesquisa: TFDQuery
    Active = True
    Connection = DMConexao.FDConexao
    SQL.Strings = (
      'SELECT * FROM cad_carros'#13#10#10
      
        'INNER JOIN cad_marcas on cad_carros.id_marca = cad_marcas.id_mar' +
        'cas'#13#10#10
      'INNER JOIN cad_cores on cad_carros.id_cor = cad_cores.id_cor')
    Left = 120
    Top = 88
  end
end
