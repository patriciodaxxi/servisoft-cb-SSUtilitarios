object frmGeraInventario: TfrmGeraInventario
  Left = 414
  Top = 191
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmGeraInventario'
  ClientHeight = 339
  ClientWidth = 590
  Color = 16760962
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 129
    Width = 57
    Height = 15
    Caption = '1'#186' Coluna:'
  end
  object Label6: TLabel
    Left = 8
    Top = 211
    Width = 154
    Height = 15
    Alignment = taRightJustify
    Caption = 'Arquivo do Invent'#225'rio (CSV):'
  end
  object Label2: TLabel
    Left = 8
    Top = 171
    Width = 32
    Height = 15
    Caption = 'Filial:'
  end
  object Label3: TLabel
    Left = 345
    Top = 171
    Width = 86
    Height = 15
    Caption = 'Data Invent'#225'rio'
  end
  object Label4: TLabel
    Left = 300
    Top = 263
    Width = 116
    Height = 15
    Caption = 'Total Registros Lidos:'
  end
  object lblRegLidos: TLabel
    Left = 420
    Top = 262
    Width = 7
    Height = 15
    Caption = '0'
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 144
    Width = 145
    Height = 23
    Style = csDropDownList
    ItemHeight = 15
    ItemIndex = 0
    TabOrder = 0
    Text = 'Refer'#234'ncia'
    Items.Strings = (
      'Refer'#234'ncia'
      'ID')
  end
  object Memo1: TMemo
    Left = 7
    Top = 2
    Width = 419
    Height = 112
    TabStop = False
    Color = 12961221
    Ctl3D = False
    Lines.Strings = (
      '1'#186' Coluna       2'#186' Coluna      3'#186' Coluna          4'#186' Coluna'
      'Refer'#234'ncia     Quantidade    Pre'#231'o Venda    Pre'#231'o Custo '
      ''
      ''
      'Arquivo .CSV'
      ''
      'A Primeira linha vai ser ignorada pelo sistema')
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 5
  end
  object BitBtn5: TBitBtn
    Left = 8
    Top = 261
    Width = 210
    Height = 25
    Caption = 'Gerar Invent'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn5Click
  end
  object FilenameEdit1: TFilenameEdit
    Left = 8
    Top = 228
    Width = 449
    Height = 21
    NumGlyphs = 1
    TabOrder = 3
  end
  object ProgressBar5: TProgressBar
    Left = 10
    Top = 310
    Width = 449
    Height = 17
    TabOrder = 6
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 8
    Top = 186
    Width = 333
    Height = 22
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = DMCadInventario.dsFilial
    TabOrder = 1
  end
  object DateEdit1: TDateEdit
    Left = 346
    Top = 187
    Width = 111
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
end
