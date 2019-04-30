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
    Left = 32
    Top = 32
  end
  object FRPesquisaCarros: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43579.865229513900000000
    ReportOptions.LastChange = 43579.887502951400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 216
    Top = 48
    Datasets = <
      item
        DataSet = FRDSPesquisaCarros
        DataSetName = 'FRDSPesquisaCarros'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = -3.779530000000000000
          Width = 287.244280000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RELATORIOS DE VEICULOS')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CHASSI')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'MODELO')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'MARCA')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 340.157700000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'COR')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ANO')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        DataSet = FRDSPesquisaCarros
        DataSetName = 'FRDSPesquisaCarros'
        RowCount = 1
        object FRDSPesquisaCarrosnr_chassi: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'nr_chassi'
          DataSet = FRDSPesquisaCarros
          DataSetName = 'FRDSPesquisaCarros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[FRDSPesquisaCarros."nr_chassi"]')
          ParentFont = False
        end
        object FRDSPesquisaCarrosano: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 453.543600000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'ano'
          DataSet = FRDSPesquisaCarros
          DataSetName = 'FRDSPesquisaCarros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[FRDSPesquisaCarros."ano"]')
          ParentFont = False
        end
        object FRDSPesquisaCarrosmodelo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 117.165430000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'modelo'
          DataSet = FRDSPesquisaCarros
          DataSetName = 'FRDSPesquisaCarros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[FRDSPesquisaCarros."modelo"]')
          ParentFont = False
        end
        object FRDSPesquisaCarrosnm_marcas: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 226.771800000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'nm_marcas'
          DataSet = FRDSPesquisaCarros
          DataSetName = 'FRDSPesquisaCarros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[FRDSPesquisaCarros."nm_marcas"]')
          ParentFont = False
        end
        object FRDSPesquisaCarrosnm_cor: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 340.157700000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'nm_cor'
          DataSet = FRDSPesquisaCarros
          DataSetName = 'FRDSPesquisaCarros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[FRDSPesquisaCarros."nm_cor"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
        end
        object Time: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 117.165430000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
        end
        object TotalPages: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 317.480520000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[TotalPages#]')
        end
      end
    end
  end
  object FRDSPesquisaCarros: TfrxDBDataset
    UserName = 'FRDSPesquisaCarros'
    CloseDataSource = False
    DataSet = FDQPesquisa
    BCDToCurrency = False
    Left = 232
    Top = 128
  end
end
