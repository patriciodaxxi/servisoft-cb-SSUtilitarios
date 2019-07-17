object frmRegrasEmpresa: TfrmRegrasEmpresa
  Left = 234
  Top = 98
  Width = 875
  Height = 500
  Caption = 'Importar Regras Empresa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 859
    Height = 461
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 56
      Top = 26
      Width = 103
      Height = 13
      Caption = 'Endere'#231'o do Arquivo:'
    end
    object Label4: TLabel
      Left = 107
      Top = 50
      Width = 52
      Height = 13
      Alignment = taRightJustify
      Caption = 'Separador:'
    end
    object Label2: TLabel
      Left = 528
      Top = 74
      Width = 3
      Height = 13
    end
    object Label3: TLabel
      Left = 70
      Top = 74
      Width = 89
      Height = 13
      Caption = 'Tipo de Opera'#231#227'o:'
    end
    object FilenameEdit1: TFilenameEdit
      Left = 163
      Top = 19
      Width = 422
      Height = 21
      NumGlyphs = 1
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 163
      Top = 42
      Width = 38
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = ';'
    end
    object BitBtn1: TBitBtn
      Left = 168
      Top = 96
      Width = 161
      Height = 49
      Caption = 'Importar Regras'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object rxOperacao: TRxDBLookupCombo
      Left = 164
      Top = 66
      Width = 341
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = dsOperacao
      TabOrder = 3
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 190
      Width = 857
      Height = 270
      Align = alBottom
      DataSource = dsImportaRegras
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object sdsOperacao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'Select * from operacao_nota'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 656
    Top = 256
    object sdsOperacaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsOperacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dspOperacao: TDataSetProvider
    DataSet = sdsOperacao
    Left = 696
    Top = 256
  end
  object cdsOperacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOperacao'
    Left = 736
    Top = 256
    object cdsOperacaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOperacaoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsOperacao: TDataSource
    DataSet = cdsOperacao
    Left = 776
    Top = 256
  end
  object dsImportaRegras: TDataSource
    DataSet = cdsImportaRegras
    Left = 624
    Top = 352
  end
  object cdsImportaRegras: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 592
    Top = 360
    Data = {
      1A0100009619E0BD0100000018000000090000000000030000001A0108456D69
      74656E7465010049000000010005574944544802000200010009436F6D707261
      646F7201004900000001000557494454480200020001000B44656E74726F5F46
      6F72610100490000000100055749445448020002000100115469706F5F436F6E
      7472696275696E74650100490000000100055749445448020002000100064F72
      6967656D01004900000001000557494454480200020001000A46696E616C6964
      6164650100490000000100055749445448020002000100034353540100490000
      0001000557494454480200020001000B5A6F6E615F4672616E63610100490000
      0001000557494454480200020001000443464F5004000100000000000000}
    object cdsImportaRegrasEmitente: TStringField
      FieldName = 'Emitente'
      Size = 1
    end
    object cdsImportaRegrasComprador: TStringField
      FieldName = 'Comprador'
      Size = 1
    end
    object cdsImportaRegrasDentro_Fora: TStringField
      FieldName = 'Dentro_Fora'
      Size = 1
    end
    object cdsImportaRegrasTipo_Contribuinte: TStringField
      FieldName = 'Tipo_Contribuinte'
      Size = 1
    end
    object cdsImportaRegrasOrigem: TStringField
      FieldName = 'Origem'
      Size = 1
    end
    object cdsImportaRegrasFinalidade: TStringField
      FieldName = 'Finalidade'
      Size = 1
    end
    object cdsImportaRegrasCST: TStringField
      FieldName = 'CST'
      Size = 1
    end
    object cdsImportaRegrasZona_Franca: TStringField
      FieldName = 'Zona_Franca'
      Size = 1
    end
    object cdsImportaRegrasCFOP: TIntegerField
      FieldName = 'CFOP'
    end
  end
  object qTab_CFOP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CFOP'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select id from tab_cfop'
      'where codcfop = :CFOP')
    SQLConnection = dmDatabase.scoDados
    Left = 768
    Top = 200
    object qTab_CFOPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object sdsRegra_Empresa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select *'#13#10'from REGRA_EMPRESA A'#13#10'where A.id = :id'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 424
    Top = 104
    object sdsRegra_EmpresaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsRegra_EmpresaID_OPERACAO: TIntegerField
      FieldName = 'ID_OPERACAO'
    end
    object sdsRegra_EmpresaTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object sdsRegra_EmpresaTIPO_CLIENTE: TStringField
      FieldName = 'TIPO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsRegra_EmpresaUF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsRegra_EmpresaID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsRegra_EmpresaFINALIDADE_COMPRADOR: TStringField
      FieldName = 'FINALIDADE_COMPRADOR'
      FixedChar = True
      Size = 1
    end
  end
  object sdsRegra_Empresa_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT A.* FROM REGRA_EMPRESA_ITENS A'#13#10'where A.id = :ID'
    DataSource = dsMaster
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 432
    Top = 232
    object sdsRegra_Empresa_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsRegra_Empresa_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsRegra_Empresa_ItensFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object sdsRegra_Empresa_ItensID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object sdsRegra_Empresa_ItensPESSOA_CLIENTE: TStringField
      FieldName = 'PESSOA_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object sdsRegra_Empresa_ItensZONA_FRANCA: TStringField
      FieldName = 'ZONA_FRANCA'
      FixedChar = True
      Size = 1
    end
    object sdsRegra_Empresa_ItensSUBST_TRIBUTARIA: TStringField
      FieldName = 'SUBST_TRIBUTARIA'
      FixedChar = True
      Size = 1
    end
    object sdsRegra_Empresa_ItensTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      FixedChar = True
      Size = 1
    end
  end
  object dspRegra_Empresa: TDataSetProvider
    DataSet = sdsRegra_Empresa
    UpdateMode = upWhereKeyOnly
    Left = 472
    Top = 104
  end
  object cdsRegra_Empresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRegra_Empresa'
    Left = 520
    Top = 104
    object cdsRegra_EmpresaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRegra_EmpresaID_OPERACAO: TIntegerField
      FieldName = 'ID_OPERACAO'
    end
    object cdsRegra_EmpresaTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      FixedChar = True
      Size = 1
    end
    object cdsRegra_EmpresaTIPO_CLIENTE: TStringField
      FieldName = 'TIPO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsRegra_EmpresaUF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsRegra_EmpresaID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsRegra_EmpresaFINALIDADE_COMPRADOR: TStringField
      FieldName = 'FINALIDADE_COMPRADOR'
      FixedChar = True
      Size = 1
    end
    object cdsRegra_EmpresasdsRegra_Empresa_Itens: TDataSetField
      FieldName = 'sdsRegra_Empresa_Itens'
    end
  end
  object cdsRegra_Empresa_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsRegra_EmpresasdsRegra_Empresa_Itens
    IndexFieldNames = 'ID'
    Params = <>
    Left = 488
    Top = 232
    object cdsRegra_Empresa_ItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsRegra_Empresa_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsRegra_Empresa_ItensFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsRegra_Empresa_ItensID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsRegra_Empresa_ItensPESSOA_CLIENTE: TStringField
      FieldName = 'PESSOA_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsRegra_Empresa_ItensZONA_FRANCA: TStringField
      FieldName = 'ZONA_FRANCA'
      FixedChar = True
      Size = 1
    end
    object cdsRegra_Empresa_ItensSUBST_TRIBUTARIA: TStringField
      FieldName = 'SUBST_TRIBUTARIA'
      FixedChar = True
      Size = 1
    end
    object cdsRegra_Empresa_ItensTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      FixedChar = True
      Size = 1
    end
  end
  object dsRegra_Empresa: TDataSource
    DataSet = cdsRegra_Empresa
    Left = 560
    Top = 104
  end
  object dsRegra_Empresa_Itens: TDataSource
    DataSet = cdsRegra_Empresa_Itens
    Left = 544
    Top = 232
  end
  object dsMaster: TDataSource
    DataSet = sdsRegra_Empresa
    Left = 432
    Top = 152
  end
  object qRegra_Empresa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_OPERACAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UF_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FINALIDADE_COMPRADOR'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from REGRA_EMPRESA A'
      'where A.ID_OPERACAO = :ID_OPERACAO and'
      '      A.TIPO_EMPRESA = :TIPO_EMPRESA and'
      '      A.TIPO_CLIENTE = :TIPO_CLIENTE and'
      '      A.UF_CLIENTE = :UF_CLIENTE and'
      '      A.FINALIDADE_COMPRADOR = :FINALIDADE_COMPRADOR')
    SQLConnection = dmDatabase.scoDados
    Left = 792
    Top = 104
    object qRegra_EmpresaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
end
