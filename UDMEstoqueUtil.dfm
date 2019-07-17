object DMEstoqueUtil: TDMEstoqueUtil
  OldCreateOrder = False
  Left = 404
  Top = 224
  Height = 360
  Width = 555
  object sdsEstoque_Mov: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * '#13#10'FROM ESTOQUE_MOV'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 32
  end
  object dspEstoque_Mov: TDataSetProvider
    DataSet = sdsEstoque_Mov
    Left = 112
    Top = 32
  end
  object cdsEstoque_Mov: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque_Mov'
    Left = 152
    Top = 32
    object cdsEstoque_MovID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEstoque_MovFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsEstoque_MovID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsEstoque_MovID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsEstoque_MovDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object cdsEstoque_MovTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      FixedChar = True
      Size = 1
    end
    object cdsEstoque_MovTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 5
    end
    object cdsEstoque_MovNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsEstoque_MovID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsEstoque_MovVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsEstoque_MovQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsEstoque_MovPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsEstoque_MovPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsEstoque_MovVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsEstoque_MovUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsEstoque_MovQTD2: TFloatField
      FieldName = 'QTD2'
    end
    object cdsEstoque_MovTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsEstoque_MovPERC_TRIBUTACAO: TFloatField
      FieldName = 'PERC_TRIBUTACAO'
    end
    object cdsEstoque_MovVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
    end
    object cdsEstoque_MovID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsEstoque_MovID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsEstoque_MovSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsEstoque_MovUNIDADE_ORIG: TStringField
      FieldName = 'UNIDADE_ORIG'
      Size = 6
    end
    object cdsEstoque_MovVLR_UNITARIOORIG: TFloatField
      FieldName = 'VLR_UNITARIOORIG'
    end
    object cdsEstoque_MovQTD_ORIG: TFloatField
      FieldName = 'QTD_ORIG'
    end
    object cdsEstoque_MovVLR_DESCONTOORIG: TFloatField
      FieldName = 'VLR_DESCONTOORIG'
    end
    object cdsEstoque_MovMERCADO: TStringField
      FieldName = 'MERCADO'
      Size = 1
    end
    object cdsEstoque_MovID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
    end
    object cdsEstoque_MovQTD_ENT: TFloatField
      FieldName = 'QTD_ENT'
    end
    object cdsEstoque_MovQTD_SAI: TFloatField
      FieldName = 'QTD_SAI'
    end
    object cdsEstoque_MovTESTE: TStringField
      FieldName = 'TESTE'
      Size = 10
    end
    object cdsEstoque_MovID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object cdsEstoque_MovID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
    end
    object cdsEstoque_MovNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
    object cdsEstoque_MovGERAR_CUSTO: TStringField
      FieldName = 'GERAR_CUSTO'
      FixedChar = True
      Size = 1
    end
  end
  object dsEstoque_Mov: TDataSource
    DataSet = cdsEstoque_Mov
    Left = 192
    Top = 32
  end
  object sdsEstoque_Atual: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT E.*'#13#10'FROM ESTOQUE_ATUAL E'#13#10'WHERE E.FILIAL = :FILIAL'#13#10'  AN' +
      'D E.ID_PRODUTO = :ID_PRODUTO'#13#10'  AND E.ID_COR = :ID_COR'#13#10'  AND E.' +
      'TAMANHO = :TAMANHO'#13#10'  AND E.ID_LOCAL_ESTOQUE = :ID_LOCAL_ESTOQUE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_COR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TAMANHO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_LOCAL_ESTOQUE'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 88
    object sdsEstoque_AtualFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object sdsEstoque_AtualID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object sdsEstoque_AtualID_COR: TIntegerField
      FieldName = 'ID_COR'
      Required = True
    end
    object sdsEstoque_AtualTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object sdsEstoque_AtualID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
      Required = True
    end
    object sdsEstoque_AtualQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 6
    end
    object sdsEstoque_AtualNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
  end
  object dspEstoque_Atual: TDataSetProvider
    DataSet = sdsEstoque_Atual
    Left = 112
    Top = 88
  end
  object cdsEstoque_Atual: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque_Atual'
    Left = 152
    Top = 96
    object cdsEstoque_AtualFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object cdsEstoque_AtualID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsEstoque_AtualID_COR: TIntegerField
      FieldName = 'ID_COR'
      Required = True
    end
    object cdsEstoque_AtualTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object cdsEstoque_AtualID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
      Required = True
    end
    object cdsEstoque_AtualQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 6
    end
    object cdsEstoque_AtualNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
    end
  end
  object dsEstoque_Atual: TDataSource
    DataSet = cdsEstoque_Atual
    Left = 192
    Top = 88
  end
  object qParametros_Prod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select p.usa_lote_prod'
      'from parametros_prod p')
    SQLConnection = dmDatabase.scoDados
    Left = 264
    Top = 240
    object qParametros_ProdUSA_LOTE_PROD: TStringField
      FieldName = 'USA_LOTE_PROD'
      FixedChar = True
      Size = 1
    end
  end
  object sdsEstoque_Lote: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT E.*'#13#10'FROM ESTOQUE_LOTE E'#13#10'WHERE E.FILIAL = :FILIAL'#13#10'  AND' +
      ' E.ID_PRODUTO = :ID_PRODUTO'#13#10'  AND E.ID_LOCAL_ESTOQUE = :ID_LOCA' +
      'L_ESTOQUE'#13#10'  AND E.NUM_LOTE_CONTROLE = :NUM_LOTE_CONTROLE'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FILIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_LOCAL_ESTOQUE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUM_LOTE_CONTROLE'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 136
    object sdsEstoque_LoteFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object sdsEstoque_LoteID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object sdsEstoque_LoteID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
      Required = True
    end
    object sdsEstoque_LoteNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
      Required = True
    end
    object sdsEstoque_LoteQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 8
    end
  end
  object dspEstoque_Lote: TDataSetProvider
    DataSet = sdsEstoque_Lote
    Left = 112
    Top = 136
  end
  object cdsEstoque_Lote: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque_Lote'
    Left = 152
    Top = 136
    object cdsEstoque_LoteFILIAL: TIntegerField
      FieldName = 'FILIAL'
      Required = True
    end
    object cdsEstoque_LoteID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsEstoque_LoteID_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE'
      Required = True
    end
    object cdsEstoque_LoteNUM_LOTE_CONTROLE: TStringField
      FieldName = 'NUM_LOTE_CONTROLE'
      Required = True
    end
    object cdsEstoque_LoteQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 8
    end
  end
  object dsEstoque_Lote: TDataSource
    DataSet = cdsEstoque_Lote
    Left = 192
    Top = 136
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ' SELECT USA_LOTE_CONTROLE '
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 72
    object qParametrosUSA_LOTE_CONTROLE: TStringField
      FieldName = 'USA_LOTE_CONTROLE'
      FixedChar = True
      Size = 1
    end
  end
end
