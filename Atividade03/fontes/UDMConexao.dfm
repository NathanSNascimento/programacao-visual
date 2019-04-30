object DMConexao: TDMConexao
  OldCreateOrder = False
  Height = 259
  Width = 356
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=Aula02'
      'User_Name=postgres'
      'Password=admin'
      'DriverID=PG')
    Connected = True
    Left = 56
    Top = 32
  end
  object FDPgDriverLink: TFDPhysPgDriverLink
    VendorHome = 
      'C:\Users\nathan22\Documents\programacao-visual\Atividade03\fonte' +
      's\Win32\Debug'
    Left = 152
    Top = 32
  end
  object FDQMestre: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from mestre')
    Left = 56
    Top = 96
    object FDQMestreid_mestre: TIntegerField
      FieldName = 'id_mestre'
      Origin = 'id_mestre'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQMestreds_mestre: TWideStringField
      FieldName = 'ds_mestre'
      Origin = 'ds_mestre'
      Size = 200
    end
  end
  object FDQDetalhes: TFDQuery
    MasterSource = DSMestre
    MasterFields = 'id_mestre'
    DetailFields = 'id_mestre'
    Connection = FDConnection
    SQL.Strings = (
      'select * from detalhe where id_mestre = :id_mestre')
    Left = 256
    Top = 32
    ParamData = <
      item
        Name = 'ID_MESTRE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQDetalhesid_detalhe: TIntegerField
      FieldName = 'id_detalhe'
      Origin = 'id_detalhe'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQDetalhesid_mestre: TIntegerField
      FieldName = 'id_mestre'
      Origin = 'id_mestre'
    end
    object FDQDetalhesvalor: TFMTBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 9
      Size = 9
    end
  end
  object DSDetalhe: TDataSource
    DataSet = FDQDetalhes
    Left = 152
    Top = 96
  end
  object DSMestre: TDataSource
    DataSet = FDQMestre
    Left = 256
    Top = 96
  end
  object FRReport: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43584.933471956000000000
    ReportOptions.LastChange = 43584.933471956000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 57
    Top = 168
    Datasets = <
      item
        DataSet = FRDMestre
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FRDetalhe
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        DataSet = FRDetalhe
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1id_mestre: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'id_mestre'
          DataSet = FRDMestre
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."id_mestre"]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 128.504020000000000000
        Width = 718.110700000000000000
        DataSet = FRDMestre
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1id_mestre1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'id_mestre'
          DataSet = FRDMestre
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."id_mestre"]')
        end
        object frxDBDataset1ds_mestre: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 68.031540000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'ds_mestre'
          DataSet = FRDMestre
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."ds_mestre"]')
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 204.094620000000000000
          Width = 317.480520000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio Mestre e Detalhe')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 718.110700000000000000
        object frxDBDataset2valor: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'valor'
          DataSet = FRDetalhe
          DataSetName = 'frxDBDataset2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."valor"]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 347.716760000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 393.071120000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object FRDMestre: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = FDQMestre
    BCDToCurrency = False
    Left = 152
    Top = 168
  end
  object FRDetalhe: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = FDQDetalhes
    BCDToCurrency = False
    Left = 256
    Top = 168
  end
end
