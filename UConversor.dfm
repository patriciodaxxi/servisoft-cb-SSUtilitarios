object frmConversor: TfrmConversor
  Left = 232
  Top = 164
  Width = 696
  Height = 480
  Caption = 'frmConversor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 32
    Top = 16
    Width = 75
    Height = 25
    Caption = 'CST IPI'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 32
    Top = 48
    Width = 75
    Height = 25
    Caption = 'CST ICMS'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 32
    Top = 80
    Width = 75
    Height = 25
    Caption = 'CFOP'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 32
    Top = 112
    Width = 75
    Height = 25
    Caption = 'PAIS'
    TabOrder = 3
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 32
    Top = 152
    Width = 75
    Height = 25
    Caption = 'UF'
    TabOrder = 4
    OnClick = BitBtn5Click
  end
  object BitBtn6: TBitBtn
    Left = 32
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Cidade'
    TabOrder = 5
    OnClick = BitBtn6Click
  end
  object BitBtn7: TBitBtn
    Left = 32
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Cofins'
    TabOrder = 6
    OnClick = BitBtn7Click
  end
  object BitBtn8: TBitBtn
    Left = 32
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Pis'
    TabOrder = 7
    OnClick = BitBtn8Click
  end
  object tCSTIPI: TTable
    Active = True
    DatabaseName = 'SSBasico'
    TableName = 'dbCSTIPI.DB'
    Left = 336
    Top = 16
    object tCSTIPICodigo: TStringField
      FieldName = 'Codigo'
      Size = 2
    end
    object tCSTIPINome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object tCSTIPIGeraIPI: TBooleanField
      FieldName = 'GeraIPI'
    end
  end
  object sdsTab_CSTICMS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTICMS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 376
    Top = 50
    object sdsTab_CSTICMSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTab_CSTICMSPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object sdsTab_CSTICMSHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsTab_CSTICMSTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sdsTab_CSTICMSNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object sdsTab_CSTICMSCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
  end
  object dspTab_CSTICMS: TDataSetProvider
    DataSet = sdsTab_CSTICMS
    Left = 408
    Top = 50
  end
  object cdsTab_CSTICMS: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_CSTICMS'
    Left = 448
    Top = 50
    object cdsTab_CSTICMSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_CSTICMSPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
    object cdsTab_CSTICMSHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsTab_CSTICMSTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsTab_CSTICMSNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object cdsTab_CSTICMSCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
  end
  object sdsTab_CSTIPI: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CSTIPI'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 378
    Top = 14
    object sdsTab_CSTIPIID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTab_CSTIPICOD_IPI: TStringField
      FieldName = 'COD_IPI'
      Size = 2
    end
    object sdsTab_CSTIPINOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsTab_CSTIPIGERAR_IPI: TStringField
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
  end
  object dspTab_CSTIPI: TDataSetProvider
    DataSet = sdsTab_CSTIPI
    Left = 410
    Top = 14
  end
  object cdsTab_CSTIPI: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspTab_CSTIPI'
    Left = 450
    Top = 14
    object cdsTab_CSTIPIID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_CSTIPICOD_IPI: TStringField
      FieldName = 'COD_IPI'
      Size = 2
    end
    object cdsTab_CSTIPINOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsTab_CSTIPIGERAR_IPI: TStringField
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
  end
  object tCSTICMS: TTable
    DatabaseName = 'SSBasico'
    TableName = 'DBSITTRIBUTARIA.DB'
    Left = 336
    Top = 48
    object tCSTICMSCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tCSTICMSSitTributaria: TFloatField
      FieldName = 'SitTributaria'
    end
    object tCSTICMSHistorico: TMemoField
      FieldName = 'Historico'
      BlobType = ftMemo
      Size = 20
    end
    object tCSTICMSCodSit: TStringField
      FieldName = 'CodSit'
      Size = 3
    end
    object tCSTICMSTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object tCSTICMSNome: TStringField
      FieldName = 'Nome'
      Size = 200
    end
  end
  object tNatOperacao: TTable
    DatabaseName = 'SSBasico'
    TableName = 'dbNatOperacao.DB'
    Left = 336
    Top = 80
    object tNatOperacaoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tNatOperacaoCodNatOper: TStringField
      FieldName = 'CodNatOper'
      Size = 4
    end
    object tNatOperacaoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 40
    end
    object tNatOperacaoEntradaSaida: TBooleanField
      FieldName = 'EntradaSaida'
    end
    object tNatOperacaoIpi: TBooleanField
      FieldName = 'Ipi'
    end
    object tNatOperacaoIcms: TBooleanField
      FieldName = 'Icms'
    end
    object tNatOperacaoLei: TMemoField
      FieldName = 'Lei'
      BlobType = ftMemo
      Size = 1
    end
    object tNatOperacaoUsada: TStringField
      FieldName = 'Usada'
      Size = 1
    end
    object tNatOperacaoTipoFat: TStringField
      FieldName = 'TipoFat'
      Size = 1
    end
    object tNatOperacaoGeraDuplicata: TBooleanField
      FieldName = 'GeraDuplicata'
    end
    object tNatOperacaoRelFat: TBooleanField
      FieldName = 'RelFat'
    end
    object tNatOperacaoSomaMercNF: TBooleanField
      FieldName = 'SomaMercNF'
    end
    object tNatOperacaoDescInterna: TStringField
      FieldName = 'DescInterna'
      Size = 30
    end
    object tNatOperacaoCodSitTrib: TIntegerField
      FieldName = 'CodSitTrib'
    end
    object tNatOperacaoCalcComissao: TBooleanField
      FieldName = 'CalcComissao'
    end
    object tNatOperacaoMaoObra: TBooleanField
      FieldName = 'MaoObra'
    end
    object tNatOperacaoControlarRetorno: TBooleanField
      FieldName = 'ControlarRetorno'
    end
    object tNatOperacaoDeduzirFat: TBooleanField
      FieldName = 'DeduzirFat'
    end
    object tNatOperacaoCodCSTIPI: TStringField
      FieldName = 'CodCSTIPI'
      Size = 2
    end
    object tNatOperacaoCopiarNotaTriangular: TBooleanField
      FieldName = 'CopiarNotaTriangular'
    end
    object tNatOperacaoCodPis: TStringField
      FieldName = 'CodPis'
      Size = 2
    end
    object tNatOperacaoCodCofins: TStringField
      FieldName = 'CodCofins'
      Size = 2
    end
    object tNatOperacaoTipoPis: TStringField
      FieldName = 'TipoPis'
      Size = 2
    end
    object tNatOperacaoTipoCofins: TStringField
      FieldName = 'TipoCofins'
      Size = 2
    end
    object tNatOperacaoIcmsSimples: TBooleanField
      FieldName = 'IcmsSimples'
    end
    object tNatOperacaoCodSitTribSimples: TIntegerField
      FieldName = 'CodSitTribSimples'
    end
    object tNatOperacaoCodCSTIPISimples: TStringField
      FieldName = 'CodCSTIPISimples'
      Size = 2
    end
    object tNatOperacaoCodPisSimples: TStringField
      FieldName = 'CodPisSimples'
      Size = 2
    end
    object tNatOperacaoCodCofinsSimples: TStringField
      FieldName = 'CodCofinsSimples'
      Size = 2
    end
    object tNatOperacaoTipoPisSimples: TStringField
      FieldName = 'TipoPisSimples'
      Size = 2
    end
    object tNatOperacaoPercPis: TFloatField
      FieldName = 'PercPis'
    end
    object tNatOperacaoPercCofins: TFloatField
      FieldName = 'PercCofins'
    end
    object tNatOperacaoPercPisSimples: TFloatField
      FieldName = 'PercPisSimples'
    end
    object tNatOperacaoPercCofinsSimples: TFloatField
      FieldName = 'PercCofinsSimples'
    end
    object tNatOperacaoTipoEmpresa: TStringField
      FieldName = 'TipoEmpresa'
      Size = 1
    end
    object tNatOperacaoSubstTrib: TBooleanField
      FieldName = 'SubstTrib'
    end
    object tNatOperacaoMVA: TBooleanField
      FieldName = 'MVA'
    end
    object tNatOperacaoGeraEstoque: TBooleanField
      FieldName = 'GeraEstoque'
    end
  end
  object sdsCFOP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CFOP'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 376
    Top = 83
    object sdsCFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCFOPCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object sdsCFOPNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsCFOPENTRADASAIDA: TStringField
      FieldName = 'ENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPGERAR_IPI: TStringField
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPGERAR_ICMS: TStringField
      FieldName = 'GERAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object sdsCFOPID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object sdsCFOPID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsCFOPCOPIARNOTATRIANGULAR: TStringField
      FieldName = 'COPIARNOTATRIANGULAR'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object sdsCFOPID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object sdsCFOPTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object sdsCFOPTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object sdsCFOPGERAR_ICMS_SIMPLES: TStringField
      FieldName = 'GERAR_ICMS_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPSUBSTITUICAO_TRIB: TStringField
      FieldName = 'SUBSTITUICAO_TRIB'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPMVA: TStringField
      FieldName = 'MVA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object sdsCFOPPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
  end
  object dspCFOP: TDataSetProvider
    DataSet = sdsCFOP
    Left = 408
    Top = 83
  end
  object cdsCFOP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCFOP;ID'
    Params = <>
    ProviderName = 'dspCFOP'
    Left = 448
    Top = 83
    object cdsCFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCFOPCODCFOP: TStringField
      FieldName = 'CODCFOP'
      Size = 5
    end
    object cdsCFOPNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCFOPENTRADASAIDA: TStringField
      FieldName = 'ENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_IPI: TStringField
      FieldName = 'GERAR_IPI'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_ICMS: TStringField
      FieldName = 'GERAR_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_DUPLICATA: TStringField
      FieldName = 'GERAR_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField
      FieldName = 'SOMAR_VLRTOTALPRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsCFOPID_CSTICMS: TIntegerField
      FieldName = 'ID_CSTICMS'
    end
    object cdsCFOPID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsCFOPCOPIARNOTATRIANGULAR: TStringField
      FieldName = 'COPIARNOTATRIANGULAR'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPID_PIS: TIntegerField
      FieldName = 'ID_PIS'
    end
    object cdsCFOPID_COFINS: TIntegerField
      FieldName = 'ID_COFINS'
    end
    object cdsCFOPTIPO_PIS: TStringField
      FieldName = 'TIPO_PIS'
      Size = 2
    end
    object cdsCFOPTIPO_COFINS: TStringField
      FieldName = 'TIPO_COFINS'
      Size = 2
    end
    object cdsCFOPGERAR_ICMS_SIMPLES: TStringField
      FieldName = 'GERAR_ICMS_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPSUBSTITUICAO_TRIB: TStringField
      FieldName = 'SUBSTITUICAO_TRIB'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPMVA: TStringField
      FieldName = 'MVA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsCFOPPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
  end
  object tPais: TTable
    DatabaseName = 'SSBasico'
    TableName = 'dbPais.DB'
    Left = 336
    Top = 120
    object tPaisID: TIntegerField
      FieldName = 'ID'
    end
    object tPaisPais: TStringField
      FieldName = 'Pais'
      Size = 60
    end
    object tPaisCodPais: TStringField
      FieldName = 'CodPais'
      Size = 5
    end
  end
  object sdsPais: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PAIS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 376
    Top = 118
    object sdsPaisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPaisNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsPaisCODPAIS: TStringField
      FieldName = 'CODPAIS'
      Size = 5
    end
  end
  object dspPais: TDataSetProvider
    DataSet = sdsPais
    Left = 408
    Top = 118
  end
  object cdsPais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPais'
    Left = 448
    Top = 118
    object cdsPaisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPaisNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPaisCODPAIS: TStringField
      FieldName = 'CODPAIS'
      Size = 5
    end
  end
  object tUF: TTable
    DatabaseName = 'SSBasico'
    TableName = 'dbUF.DB'
    Left = 336
    Top = 160
    object tUFSigla: TStringField
      FieldName = 'Sigla'
      Size = 2
    end
    object tUFPercentual: TFloatField
      FieldName = 'Percentual'
    end
    object tUFCodSitTrib: TIntegerField
      FieldName = 'CodSitTrib'
    end
    object tUFIDPais: TIntegerField
      FieldName = 'IDPais'
    end
    object tUFCodUF: TStringField
      FieldName = 'CodUF'
      Size = 2
    end
    object tUFIcmsInterno: TFloatField
      FieldName = 'IcmsInterno'
    end
  end
  object sdsUF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UF'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 376
    Top = 158
    object sdsUFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object sdsUFPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsUFIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
    end
    object sdsUFCODUF: TStringField
      FieldName = 'CODUF'
      Size = 2
    end
    object sdsUFPERC_ICMS_INTERNO: TFloatField
      FieldName = 'PERC_ICMS_INTERNO'
    end
  end
  object dspUF: TDataSetProvider
    DataSet = sdsUF
    Left = 408
    Top = 158
  end
  object cdsUF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUF'
    Left = 448
    Top = 158
    object cdsUFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object cdsUFPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsUFIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
    end
    object cdsUFCODUF: TStringField
      FieldName = 'CODUF'
      Size = 2
    end
    object cdsUFPERC_ICMS_INTERNO: TFloatField
      FieldName = 'PERC_ICMS_INTERNO'
    end
  end
  object tCidade: TTable
    DatabaseName = 'SSBasico'
    IndexFieldNames = 'Codigo'
    TableName = 'dbCidade.DB'
    Left = 336
    Top = 192
    object tCidadeCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tCidadeNome: TStringField
      FieldName = 'Nome'
      Size = 26
    end
    object tCidadeEstado: TStringField
      FieldName = 'Estado'
      Size = 2
    end
    object tCidadePrefixo: TStringField
      FieldName = 'Prefixo'
      Size = 3
    end
    object tCidadeCep: TStringField
      FieldName = 'Cep'
      Size = 9
    end
    object tCidadeCodMunicipio: TStringField
      FieldName = 'CodMunicipio'
      Size = 7
    end
  end
  object sdsCidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CIDADE'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 376
    Top = 190
    object sdsCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsCidadeCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
  end
  object dspCidade: TDataSetProvider
    DataSet = sdsCidade
    Left = 408
    Top = 190
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCidade'
    Left = 448
    Top = 190
    object cdsCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsCidadeCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
  end
  object tTabCofins: TTable
    DatabaseName = 'SSBasico'
    IndexFieldNames = 'Codigo'
    TableName = 'dbTabCofins.DB'
    Left = 336
    Top = 232
    object tTabCofinsCodigo: TStringField
      FieldName = 'Codigo'
      Size = 2
    end
    object tTabCofinsNome: TStringField
      FieldName = 'Nome'
      Size = 150
    end
  end
  object sdsTab_Cofins: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_COFINS'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 376
    Top = 230
    object sdsTab_CofinsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTab_CofinsCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object sdsTab_CofinsNOME: TStringField
      FieldName = 'NOME'
      Size = 150
    end
  end
  object dspTab_Cofins: TDataSetProvider
    DataSet = sdsTab_Cofins
    Left = 408
    Top = 230
  end
  object cdsTab_Cofins: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTab_Cofins'
    Left = 448
    Top = 230
    object cdsTab_CofinsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_CofinsCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object cdsTab_CofinsNOME: TStringField
      FieldName = 'NOME'
      Size = 150
    end
  end
  object tTabPis: TTable
    DatabaseName = 'SSBasico'
    IndexFieldNames = 'Codigo'
    TableName = 'dbTabPis.DB'
    Left = 336
    Top = 272
    object tTabPisCodigo: TStringField
      FieldName = 'Codigo'
      Size = 2
    end
    object tTabPisNome: TStringField
      FieldName = 'Nome'
      Size = 150
    end
  end
  object sdsTab_Pis: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_PIS'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 376
    Top = 272
    object sdsTab_PisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTab_PisCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object sdsTab_PisNOME: TStringField
      FieldName = 'NOME'
      Size = 150
    end
  end
  object dspTab_Pis: TDataSetProvider
    DataSet = sdsTab_Pis
    Left = 408
    Top = 272
  end
  object cdsTab_Pis: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTab_Pis'
    Left = 448
    Top = 272
    object cdsTab_PisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTab_PisCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object cdsTab_PisNOME: TStringField
      FieldName = 'NOME'
      Size = 150
    end
  end
end
