object frmZeraEstoque: TfrmZeraEstoque
  Left = 138
  Top = 161
  Width = 1126
  Height = 461
  Caption = 'frmZeraEstoque'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1118
    Height = 41
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 528
      Top = 8
      Width = 337
      Height = 25
      Caption = 'Zerar Estoque dos Materiais Selecionados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 41
    Width = 1118
    Height = 389
    Align = alClient
    Ctl3D = False
    DataSource = DMImportarPdx.dsqEstoqueMatMov
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = True
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
    ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 8
    RowCount = 20
    Columns = <
      item
        Expanded = False
        FieldName = 'codmaterial'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 391
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codcor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'unidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'icms'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ipi'
        Visible = True
      end>
  end
end
