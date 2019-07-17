object frmComparaNCM: TfrmComparaNCM
  Left = 160
  Top = 74
  BorderStyle = bsSingle
  Caption = 'Compara NCM - IBPT/Produto'
  ClientHeight = 533
  ClientWidth = 1075
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
    Width = 1075
    Height = 533
    Align = alClient
    TabOrder = 0
    DesignSize = (
      1075
      533)
    object Label1: TLabel
      Left = 86
      Top = 12
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object Label2: TLabel
      Left = 577
      Top = 12
      Width = 27
      Height = 13
      Caption = 'NCM:'
    end
    object NxPanel2: TNxPanel
      Left = 538
      Top = 81
      Width = 537
      Height = 448
      Anchors = [akTop, akRight, akBottom]
      Caption = 'NxPanel1'
      UseDockManager = False
      ParentBackground = False
      TabOrder = 0
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 537
        Height = 448
        Align = alClient
        DataSource = dsIBPT
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Flat = False
        BandsFont.Charset = DEFAULT_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'MS Sans Serif'
        BandsFont.Style = []
        Groupings = <>
        GridStyle.Style = gsCustom
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 6
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'NCM'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 246
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_INICIO'
            Title.Alignment = taCenter
            Title.Caption = 'Data In'#237'cio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_FINAL'
            Title.Alignment = taCenter
            Title.Caption = 'Data Final'
            Visible = True
          end>
      end
    end
    object Edit1: TEdit
      Left = 136
      Top = 4
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 136
      Top = 34
      Width = 137
      Height = 33
      Caption = 'Pesquisar'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 312
      Top = 34
      Width = 137
      Height = 33
      Caption = 'Atualiza'
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object NxPanel1: TNxPanel
      Left = 0
      Top = 81
      Width = 534
      Height = 448
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'NxPanel1'
      UseDockManager = False
      ParentBackground = False
      TabOrder = 4
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 534
        Height = 448
        Align = alClient
        DataSource = dsProduto
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Flat = False
        BandsFont.Charset = DEFAULT_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'MS Sans Serif'
        BandsFont.Style = []
        Groupings = <>
        GridStyle.Style = gsCustom
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 23
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 184
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REFERENCIA'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NCM'
            Title.Alignment = taCenter
            Width = 81
            Visible = True
          end>
      end
    end
    object CheckBox1: TCheckBox
      Left = 456
      Top = 50
      Width = 124
      Height = 17
      Caption = 'Somente os Ativos'
      TabOrder = 5
    end
    object Edit2: TEdit
      Left = 611
      Top = 4
      Width = 185
      Height = 21
      TabOrder = 6
    end
    object BitBtn3: TBitBtn
      Left = 611
      Top = 30
      Width = 137
      Height = 33
      Caption = 'Pesquisar por NCM'
      TabOrder = 7
      OnClick = BitBtn3Click
    end
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.id,  P.nome,  P.referencia, T.ncm'#13#10'FROM PRODUTO P'#13#10'LEFT' +
      ' JOIN tab_ncm T'#13#10'ON P.id_ncm = T.ID'#13#10'WHERE P.NOME LIKE :NOME'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 129
    Top = 225
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 161
    Top = 225
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 193
    Top = 225
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 233
    Top = 225
  end
  object sdsIBPT: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select ID, CODIGO , NOME, DT_INICIO, DT_FINAL'#13#10'from tab_ibpt'#13#10'wh' +
      'ere upper(nome) like :NOME'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 649
    Top = 217
  end
  object dspIBPT: TDataSetProvider
    DataSet = sdsIBPT
    Left = 681
    Top = 217
  end
  object cdsIBPT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspIBPT'
    Left = 713
    Top = 217
    object cdsIBPTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsIBPTCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object cdsIBPTNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object cdsIBPTDT_INICIO: TDateField
      FieldName = 'DT_INICIO'
    end
    object cdsIBPTDT_FINAL: TDateField
      FieldName = 'DT_FINAL'
    end
  end
  object dsIBPT: TDataSource
    DataSet = cdsIBPT
    Left = 745
    Top = 217
  end
  object sdsGravaProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, ID_NCM FROM PRODUTO'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 312
    object sdsGravaProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsGravaProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
  end
  object dspGravaProduto: TDataSetProvider
    DataSet = sdsGravaProduto
    Left = 160
    Top = 312
  end
  object cdsGravaProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGravaProduto'
    Left = 192
    Top = 312
    object cdsGravaProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsGravaProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
  end
  object dsGravaProduto: TDataSource
    DataSet = cdsGravaProduto
    Left = 224
    Top = 312
  end
  object qTab_NCM: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NCM'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT FIRST(1)ID FROM TAB_NCM'
      'WHERE NCM = :NCM')
    SQLConnection = dmDatabase.scoDados
    Left = 676
    Top = 153
    object qTab_NCMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object sdsNCM: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM TAB_NCM'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 648
    Top = 304
  end
  object dspNCM: TDataSetProvider
    DataSet = sdsNCM
    Left = 680
    Top = 304
  end
  object cdsNCM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNCM'
    Left = 712
    Top = 304
    object cdsNCMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsNCMNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object cdsNCMPERC_RED_STRIB: TFloatField
      FieldName = 'PERC_RED_STRIB'
    end
    object cdsNCMGERAR_ST: TStringField
      FieldName = 'GERAR_ST'
      FixedChar = True
      Size = 1
    end
    object cdsNCMINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsNCMTIPO_AS: TStringField
      FieldName = 'TIPO_AS'
      FixedChar = True
      Size = 1
    end
    object cdsNCMCOD_PRINCIPAL: TStringField
      FieldName = 'COD_PRINCIPAL'
      Size = 2
    end
    object cdsNCMUSAR_MVA_UF_DESTINO: TStringField
      FieldName = 'USAR_MVA_UF_DESTINO'
      FixedChar = True
      Size = 1
    end
    object cdsNCMCOD_CEST: TStringField
      FieldName = 'COD_CEST'
      Size = 7
    end
    object cdsNCMUNIDADE_TRIB: TStringField
      FieldName = 'UNIDADE_TRIB'
      Size = 6
    end
  end
  object dsNCM: TDataSource
    DataSet = cdsNCM
    Left = 744
    Top = 304
  end
end
