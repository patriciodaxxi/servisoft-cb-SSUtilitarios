object frmImportarArq: TfrmImportarArq
  Left = 217
  Top = 182
  Width = 928
  Height = 480
  Caption = 'frmImportarArq'
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
  object Label1: TLabel
    Left = 56
    Top = 16
    Width = 103
    Height = 13
    Caption = 'Endere'#231'o do Arquivo:'
  end
  object Label2: TLabel
    Left = 168
    Top = 160
    Width = 89
    Height = 13
    Caption = 'Total de Registros:'
  end
  object Label3: TLabel
    Left = 261
    Top = 160
    Width = 105
    Height = 13
    AutoSize = False
    Caption = '0'
  end
  object Label4: TLabel
    Left = 107
    Top = 40
    Width = 52
    Height = 13
    Alignment = taRightJustify
    Caption = 'Separador:'
  end
  object FilenameEdit1: TFilenameEdit
    Left = 163
    Top = 9
    Width = 422
    Height = 21
    NumGlyphs = 1
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 96
    Top = 72
    Width = 209
    Height = 25
    Caption = 'Importar Cliente'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 97
    Width = 209
    Height = 25
    Caption = 'Importar Produto'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 464
    Top = 72
    Width = 209
    Height = 25
    Caption = 'Exportar CFOP Original'
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 96
    Top = 123
    Width = 209
    Height = 25
    Caption = 'Importar CFOP (S'#243' OBS da CFOP)'
    TabOrder = 5
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 96
    Top = 248
    Width = 217
    Height = 25
    Caption = 'CSV Vinco'
    TabOrder = 6
    OnClick = BitBtn5Click
  end
  object Edit1: TEdit
    Left = 163
    Top = 32
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
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA'#13#10'WHERE 0 = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 568
    Top = 168
    object sdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object sdsPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsPessoaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object sdsPessoaNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object sdsPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsPessoaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object sdsPessoaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsPessoaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsPessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsPessoaDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object sdsPessoaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object sdsPessoaDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object sdsPessoaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object sdsPessoaDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object sdsPessoaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sdsPessoaPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object sdsPessoaINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object sdsPessoaENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object sdsPessoaCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object sdsPessoaNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object sdsPessoaBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object sdsPessoaID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object sdsPessoaCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object sdsPessoaCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object sdsPessoaUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object sdsPessoaPESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object sdsPessoaINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      Size = 18
    end
    object sdsPessoaENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      Size = 40
    end
    object sdsPessoaCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      Size = 60
    end
    object sdsPessoaNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
    end
    object sdsPessoaBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      Size = 26
    end
    object sdsPessoaID_CIDADE_PGTO: TIntegerField
      FieldName = 'ID_CIDADE_PGTO'
    end
    object sdsPessoaCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      Size = 40
    end
    object sdsPessoaCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      Size = 10
    end
    object sdsPessoaUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      FixedChar = True
      Size = 2
    end
    object sdsPessoaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsPessoaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsPessoaHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object sdsPessoaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsPessoaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsPessoaCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object sdsPessoaRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object sdsPessoaID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsPessoaID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object sdsPessoaID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object sdsPessoaID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsPessoaPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsPessoaID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object sdsPessoaDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object sdsPessoaFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      Size = 15
    end
    object sdsPessoaDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
    end
    object sdsPessoaFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      Size = 15
    end
    object sdsPessoaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 200
    end
    object sdsPessoaNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object sdsPessoaEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object sdsPessoaID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object sdsPessoaEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object sdsPessoaEMAIL_NFE2: TStringField
      FieldName = 'EMAIL_NFE2'
      Size = 150
    end
    object sdsPessoaPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      Size = 18
    end
    object sdsPessoaINSC_EST_PGTO: TStringField
      FieldName = 'INSC_EST_PGTO'
      Size = 18
    end
    object sdsPessoaUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object sdsPessoaPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object sdsPessoaTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object sdsPessoaTP_FORNECEDOR: TStringField
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object sdsPessoaTP_TRANSPORTADORA: TStringField
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object sdsPessoaTP_VENDEDOR: TStringField
      FieldName = 'TP_VENDEDOR'
      Size = 1
    end
    object sdsPessoaTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object sdsPessoaTIPO_ICMS: TStringField
      FieldName = 'TIPO_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object sdsPessoaTP_ATELIER: TStringField
      FieldName = 'TP_ATELIER'
      Size = 1
    end
    object sdsPessoaTIPO_COMISSAO: TStringField
      FieldName = 'TIPO_COMISSAO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
    end
    object sdsPessoaNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      Size = 40
    end
    object sdsPessoaINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object sdsPessoaDT_CONTRATO_INI: TDateField
      FieldName = 'DT_CONTRATO_INI'
    end
    object sdsPessoaDT_CONTRATO_FIN: TDateField
      FieldName = 'DT_CONTRATO_FIN'
    end
    object sdsPessoaID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object sdsPessoaID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object sdsPessoaVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object sdsPessoaCLIENTE_CONTA_ID: TIntegerField
      FieldName = 'CLIENTE_CONTA_ID'
    end
    object sdsPessoaFORNECEDOR_CONTA_ID: TIntegerField
      FieldName = 'FORNECEDOR_CONTA_ID'
    end
    object sdsPessoaVENDEDOR_CONTA_ID: TIntegerField
      FieldName = 'VENDEDOR_CONTA_ID'
    end
    object sdsPessoaTRANSPORTADORA_CONTA_ID: TIntegerField
      FieldName = 'TRANSPORTADORA_CONTA_ID'
    end
    object sdsPessoaATELIER_CONTA_ID: TIntegerField
      FieldName = 'ATELIER_CONTA_ID'
    end
    object sdsPessoaRETEM_ISS: TStringField
      FieldName = 'RETEM_ISS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 200
    end
    object sdsPessoaCONTATO_COMPRAS: TStringField
      FieldName = 'CONTATO_COMPRAS'
      Size = 60
    end
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    Left = 608
    Top = 168
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 648
    Top = 168
    object cdsPessoaCODIGO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPessoaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPessoaFANTASIA: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsPessoaENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsPessoaCOMPLEMENTO_END: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsPessoaNUM_END: TStringField
      Alignment = taCenter
      DisplayLabel = 'N'#186
      FieldName = 'NUM_END'
    end
    object cdsPessoaBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsPessoaID_CIDADE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'ID_CIDADE'
    end
    object cdsPessoaCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsPessoaUF: TStringField
      Alignment = taCenter
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsPessoaCEP: TStringField
      Alignment = taCenter
      FieldName = 'CEP'
      Size = 10
    end
    object cdsPessoaDDDFONE1: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'DDD'
      FieldName = 'DDDFONE1'
    end
    object cdsPessoaTELEFONE1: TStringField
      Alignment = taCenter
      DisplayLabel = 'Fone'
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object cdsPessoaDDDFONE2: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'DDD'
      FieldName = 'DDDFONE2'
    end
    object cdsPessoaTELEFONE2: TStringField
      Alignment = taCenter
      DisplayLabel = 'Fone'
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object cdsPessoaDDDFAX: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'DDD'
      FieldName = 'DDDFAX'
    end
    object cdsPessoaFAX: TStringField
      Alignment = taCenter
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Size = 15
    end
    object cdsPessoaPESSOA: TStringField
      DisplayLabel = 'Pessoa'
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCNPJ_CPF: TStringField
      Alignment = taCenter
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsPessoaINSCR_EST: TStringField
      DisplayLabel = 'Insc. Estadual'
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsPessoaENDERECO_ENT: TStringField
      DisplayLabel = 'Endere'#231'o Entrega'
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object cdsPessoaCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object cdsPessoaNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object cdsPessoaBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object cdsPessoaID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object cdsPessoaCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object cdsPessoaCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object cdsPessoaUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object cdsPessoaPESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object cdsPessoaINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      Size = 18
    end
    object cdsPessoaENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      Size = 40
    end
    object cdsPessoaCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      Size = 60
    end
    object cdsPessoaNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
    end
    object cdsPessoaBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      Size = 26
    end
    object cdsPessoaID_CIDADE_PGTO: TIntegerField
      FieldName = 'ID_CIDADE_PGTO'
    end
    object cdsPessoaCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      Size = 40
    end
    object cdsPessoaCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      Size = 10
    end
    object cdsPessoaUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      FixedChar = True
      Size = 2
    end
    object cdsPessoaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsPessoaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsPessoaHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object cdsPessoaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPessoaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPessoaCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object cdsPessoaRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object cdsPessoaID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsPessoaID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object cdsPessoaID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsPessoaID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsPessoaPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsPessoaID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object cdsPessoaDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object cdsPessoaFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      Size = 15
    end
    object cdsPessoaDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
    end
    object cdsPessoaFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      Size = 15
    end
    object cdsPessoaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 200
    end
    object cdsPessoaNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object cdsPessoaEMAIL_NFE: TStringField
      DisplayLabel = 'Email NFe'
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object cdsPessoaID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object cdsPessoaEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object cdsPessoaEMAIL_NFE2: TStringField
      DisplayLabel = 'Email NFe 2'
      FieldName = 'EMAIL_NFE2'
      Size = 150
    end
    object cdsPessoaPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      Size = 18
    end
    object cdsPessoaINSC_EST_PGTO: TStringField
      FieldName = 'INSC_EST_PGTO'
      Size = 18
    end
    object cdsPessoaUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object cdsPessoaPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object cdsPessoaTP_CLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object cdsPessoaTP_FORNECEDOR: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object cdsPessoaTP_TRANSPORTADORA: TStringField
      DisplayLabel = 'Transportadora'
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object cdsPessoaTP_VENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'TP_VENDEDOR'
      Size = 1
    end
    object cdsPessoaTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaID_REGIME_TRIB: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd. Regime'
      FieldName = 'ID_REGIME_TRIB'
    end
    object cdsPessoaTIPO_ICMS: TStringField
      FieldName = 'TIPO_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object cdsPessoaTP_ATELIER: TStringField
      FieldName = 'TP_ATELIER'
      Size = 1
    end
    object cdsPessoaTIPO_COMISSAO: TStringField
      FieldName = 'TIPO_COMISSAO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
    end
    object cdsPessoaNOME_CONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'NOME_CONTATO'
      Size = 40
    end
    object cdsPessoaINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object cdsPessoaDT_CONTRATO_INI: TDateField
      FieldName = 'DT_CONTRATO_INI'
    end
    object cdsPessoaDT_CONTRATO_FIN: TDateField
      FieldName = 'DT_CONTRATO_FIN'
    end
    object cdsPessoaID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object cdsPessoaID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsPessoaVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object cdsPessoaCLIENTE_CONTA_ID: TIntegerField
      FieldName = 'CLIENTE_CONTA_ID'
    end
    object cdsPessoaFORNECEDOR_CONTA_ID: TIntegerField
      FieldName = 'FORNECEDOR_CONTA_ID'
    end
    object cdsPessoaVENDEDOR_CONTA_ID: TIntegerField
      FieldName = 'VENDEDOR_CONTA_ID'
    end
    object cdsPessoaTRANSPORTADORA_CONTA_ID: TIntegerField
      FieldName = 'TRANSPORTADORA_CONTA_ID'
    end
    object cdsPessoaATELIER_CONTA_ID: TIntegerField
      FieldName = 'ATELIER_CONTA_ID'
    end
    object cdsPessoaRETEM_ISS: TStringField
      FieldName = 'RETEM_ISS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 200
    end
    object cdsPessoaCONTATO_COMPRAS: TStringField
      FieldName = 'CONTATO_COMPRAS'
      Size = 60
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 696
    Top = 168
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PRODUTO '#13#10'WHERE 0 = 1'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 568
    Top = 208
    object sdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsProdutoPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object sdsProdutoPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object sdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsProdutoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsProdutoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPOSSE_MATERIAL: TStringField
      FieldName = 'POSSE_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoMATERIAL_OUTROS: TStringField
      FieldName = 'MATERIAL_OUTROS'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsProdutoDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object sdsProdutoHRCAD: TTimeField
      FieldName = 'HRCAD'
    end
    object sdsProdutoCA: TStringField
      FieldName = 'CA'
    end
    object sdsProdutoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object sdsProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object sdsProdutoORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsProdutoCODSITCF: TStringField
      FieldName = 'CODSITCF'
      Size = 5
    end
    object sdsProdutoPERC_REDUCAOICMS: TFloatField
      FieldName = 'PERC_REDUCAOICMS'
    end
    object sdsProdutoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object sdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object sdsProdutoDT_ALTPRECO: TDateField
      FieldName = 'DT_ALTPRECO'
    end
    object sdsProdutoLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
    object sdsProdutoID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object sdsProdutoID_SUBGRUPO: TIntegerField
      FieldName = 'ID_SUBGRUPO'
    end
    object sdsProdutoID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
    end
    object sdsProdutoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object sdsProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object sdsProdutoPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object sdsProdutoCOD_ANT: TStringField
      FieldName = 'COD_ANT'
      Size = 10
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 608
    Top = 208
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 648
    Top = 208
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProdutoPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object cdsProdutoPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object cdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object cdsProdutoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object cdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsProdutoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPOSSE_MATERIAL: TStringField
      FieldName = 'POSSE_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoMATERIAL_OUTROS: TStringField
      FieldName = 'MATERIAL_OUTROS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsProdutoDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object cdsProdutoHRCAD: TTimeField
      FieldName = 'HRCAD'
    end
    object cdsProdutoCA: TStringField
      FieldName = 'CA'
    end
    object cdsProdutoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object cdsProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsProdutoORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProdutoCODSITCF: TStringField
      FieldName = 'CODSITCF'
      Size = 5
    end
    object cdsProdutoPERC_REDUCAOICMS: TFloatField
      FieldName = 'PERC_REDUCAOICMS'
    end
    object cdsProdutoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object cdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsProdutoDT_ALTPRECO: TDateField
      FieldName = 'DT_ALTPRECO'
    end
    object cdsProdutoLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
    object cdsProdutoID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object cdsProdutoID_SUBGRUPO: TIntegerField
      FieldName = 'ID_SUBGRUPO'
    end
    object cdsProdutoID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
    end
    object cdsProdutoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsProdutoPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object cdsProdutoCOD_ANT: TStringField
      FieldName = 'COD_ANT'
      Size = 10
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 696
    Top = 208
  end
  object qCidade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CIDADE'
      'WHERE NOME = :NOME')
    SQLConnection = dmDatabase.scoDados
    Left = 584
    Top = 272
    object qCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qCidadeCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
    object qCidadeID_PROVEDOR: TIntegerField
      FieldName = 'ID_PROVEDOR'
    end
    object qCidadeLINKNFSE: TStringField
      FieldName = 'LINKNFSE'
      Size = 200
    end
    object qCidadeFONE_PREFEITURA: TStringField
      FieldName = 'FONE_PREFEITURA'
      Size = 15
    end
    object qCidadeSITE_PREFEITURA: TStringField
      FieldName = 'SITE_PREFEITURA'
      Size = 200
    end
    object qCidadeEND_LOGO_PREFEITURA: TStringField
      FieldName = 'END_LOGO_PREFEITURA'
      Size = 250
    end
  end
  object qPessoa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CNPJ_CPF'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PESSOA'
      'WHERE CNPJ_CPF = :CNPJ_CPF')
    SQLConnection = dmDatabase.scoDados
    Left = 640
    Top = 272
    object qPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object qPessoaPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object qPessoaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
  end
  object qProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'COD_ANT'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PRODUTO'
      'WHERE COD_ANT = :COD_ANT')
    SQLConnection = dmDatabase.scoDados
    Left = 696
    Top = 272
    object qProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object qProdutoCOD_ANT: TStringField
      FieldName = 'COD_ANT'
      Size = 10
    end
  end
  object sdsUnidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UNIDADE'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 568
    Top = 328
    object sdsUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object sdsUnidadeCONVERSOR: TFloatField
      FieldName = 'CONVERSOR'
    end
    object sdsUnidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dspUnidade: TDataSetProvider
    DataSet = sdsUnidade
    Left = 608
    Top = 328
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUnidade'
    Left = 648
    Top = 328
    object cdsUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object cdsUnidadeCONVERSOR: TFloatField
      FieldName = 'CONVERSOR'
    end
    object cdsUnidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object sdsNCM: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_NCM'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 568
    Top = 376
    object sdsNCMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object sdsNCMNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
  end
  object dspNCM: TDataSetProvider
    DataSet = sdsNCM
    Left = 608
    Top = 376
  end
  object cdsNCM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNCM'
    Left = 648
    Top = 376
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
  end
  object sdsCFOP_Ori: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CFOP'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 376
    object sdsCFOP_OriCFCOD: TStringField
      FieldName = 'CFCOD'
      Required = True
      Size = 4
    end
    object sdsCFOP_OriCFNOME: TStringField
      FieldName = 'CFNOME'
      Size = 250
    end
    object sdsCFOP_OriCFNOTA: TMemoField
      FieldName = 'CFNOTA'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspCFOP_Ori: TDataSetProvider
    DataSet = sdsCFOP_Ori
    Left = 384
    Top = 376
  end
  object cdsCFOP_Ori: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCFOP_Ori'
    Left = 424
    Top = 376
    object cdsCFOP_OriCFCOD: TStringField
      FieldName = 'CFCOD'
      Required = True
      Size = 4
    end
    object cdsCFOP_OriCFNOME: TStringField
      FieldName = 'CFNOME'
      Size = 250
    end
    object cdsCFOP_OriCFNOTA: TMemoField
      FieldName = 'CFNOTA'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsCFOP_Ori: TDataSource
    DataSet = cdsCFOP_Ori
    Left = 472
    Top = 376
  end
  object sdsCFOP: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_CFOP'#13#10'WHERE CODCFOP = :CODCFOP'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CODCFOP'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 344
    Top = 320
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
    object sdsCFOPLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
    object sdsCFOPBENEFICIAMENTO: TStringField
      FieldName = 'BENEFICIAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPMAOOBRA: TStringField
      FieldName = 'MAOOBRA'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPOBS_CLASSIFICACAO: TMemoField
      FieldName = 'OBS_CLASSIFICACAO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsCFOPGERAR_TRIBUTO: TStringField
      FieldName = 'GERAR_TRIBUTO'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object sdsCFOPTIPO_IND_VEN: TStringField
      FieldName = 'TIPO_IND_VEN'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPDEVOLUCAO: TStringField
      FieldName = 'DEVOLUCAO'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPGERAR_ESTOQUE_MP: TStringField
      FieldName = 'GERAR_ESTOQUE_MP'
      FixedChar = True
      Size = 1
    end
    object sdsCFOPID_OBS_LEI: TIntegerField
      FieldName = 'ID_OBS_LEI'
    end
  end
  object dspCFOP: TDataSetProvider
    DataSet = sdsCFOP
    Left = 384
    Top = 320
  end
  object cdsCFOP: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspCFOP'
    Left = 424
    Top = 320
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
    object cdsCFOPLEI: TMemoField
      FieldName = 'LEI'
      BlobType = ftMemo
      Size = 1
    end
    object cdsCFOPBENEFICIAMENTO: TStringField
      FieldName = 'BENEFICIAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPMAOOBRA: TStringField
      FieldName = 'MAOOBRA'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPOBS_CLASSIFICACAO: TMemoField
      FieldName = 'OBS_CLASSIFICACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsCFOPGERAR_TRIBUTO: TStringField
      FieldName = 'GERAR_TRIBUTO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPPERC_TRIBUTO: TFloatField
      FieldName = 'PERC_TRIBUTO'
    end
    object cdsCFOPTIPO_IND_VEN: TStringField
      FieldName = 'TIPO_IND_VEN'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPDEVOLUCAO: TStringField
      FieldName = 'DEVOLUCAO'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPGERAR_ESTOQUE_MP: TStringField
      FieldName = 'GERAR_ESTOQUE_MP'
      FixedChar = True
      Size = 1
    end
    object cdsCFOPID_OBS_LEI: TIntegerField
      FieldName = 'ID_OBS_LEI'
    end
  end
  object dsCFOP: TDataSource
    DataSet = cdsCFOP
    Left = 472
    Top = 320
  end
end
