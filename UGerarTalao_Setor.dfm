object frmGerarTalao_Setor: TfrmGerarTalao_Setor
  Left = 246
  Top = 179
  Width = 928
  Height = 480
  Caption = 'frmGerarTalao_Setor'
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
  object Label1: TLabel
    Left = 112
    Top = 16
    Width = 79
    Height = 13
    Caption = 'N'#186' Ordem Inicial:'
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 194
    Top = 8
    Width = 121
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 192
    Top = 32
    Width = 137
    Height = 25
    Caption = 'Gerar Tal'#227'o Setor'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object ProgressBar1: TProgressBar
    Left = 192
    Top = 88
    Width = 633
    Height = 17
    TabOrder = 2
  end
end
