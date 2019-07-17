object frmCadContaOrc_Txt: TfrmCadContaOrc_Txt
  Left = 242
  Top = 215
  Width = 848
  Height = 373
  Caption = 'frmCadContaOrc_Txt'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 832
    Height = 97
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 142
      Top = 18
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Arquivo:'
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 129
      Height = 95
      Align = alLeft
      Caption = ' Op'#231#227'o do Arquivo '
      Items.Strings = (
        'Exportar'
        'Importar')
      TabOrder = 0
    end
    object FilenameEdit1: TFilenameEdit
      Left = 184
      Top = 10
      Width = 449
      Height = 21
      NumGlyphs = 1
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 184
      Top = 32
      Width = 97
      Height = 25
      Caption = 'Gerar Arquivo'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 281
      Top = 32
      Width = 97
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = BitBtn2Click
    end
  end
end
