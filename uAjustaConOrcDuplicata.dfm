object frmAjustaContasOrcDuplicata: TfrmAjustaContasOrcDuplicata
  Left = 172
  Top = 120
  Width = 1053
  Height = 564
  Caption = 'Ajusta Conta de Or'#231'amento nas Duplicatas'
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
    Width = 1037
    Height = 129
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 192
      Top = 40
      Width = 56
      Height = 13
      Caption = 'Data Inicial:'
    end
    object Label2: TLabel
      Left = 432
      Top = 40
      Width = 51
      Height = 13
      Caption = 'Data Final:'
    end
    object RadioGroup1: TRadioGroup
      Left = 32
      Top = 16
      Width = 129
      Height = 81
      Caption = 'Tipo de Duplicata'
      Items.Strings = (
        'Pagar'
        'Receber')
      TabOrder = 0
    end
    object NxDatePicker1: TNxDatePicker
      Left = 257
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '20/12/2017'
      HideFocus = False
      Date = 43089.000000000000000000
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object NxDatePicker2: TNxDatePicker
      Left = 488
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '20/12/2017'
      HideFocus = False
      Date = 43089.000000000000000000
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object btnConsultar: TNxButton
      Left = 257
      Top = 70
      Width = 177
      Height = 30
      Caption = 'Efetuar Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000017000000170000000100
        1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7F2F0F5F2F0FCFDFDFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B778D2D52869876
        72B0A3A1FCFDFE000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7780
        0055B812A5FA5E90BDBBA29FFAF5F4000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF5C6377004EAD29BEFFA9ECFFA3F7FF3A89BFF6F5F6000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF75737F0051AC17B1FFA4E7FDD5FFFF12A6E45E90B5FFFCFC00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFD6C6C7D0057BB25BAFFA5E7FEC7FFFF099DDF6A8A
        A8FFFFFDFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54657D0057B120B5FFA1E5FECFFFFF
        109CDD4D7EA5FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFCFEFEDADDDDDAD9D9CFCFCFEDEFEFFFFFFFFFFFFFFFFFFF00024A21BCFFA5
        EAFFCAFFFF11A7E86587A9FFFFFCFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFDDE0E0958E8D7A63657D60628467678065658D77799C9393D3D1D1ADAA
        A749343776B3E0B4FFFF19A4DF5A84A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFD2D8D84C3334846269967570A39388A99E9AAB9E99AE9890
        B69DA4A28E8F867070E7D0CC806B6E005499467EA7FFFFFAFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFC2C2C2533638A27B799D80649A9A7C94988895
        97979498949198849E9478C4AFA8C8B5B7AFA1A1B6B3B1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FBFBFB816D6E8A66679C6F4A987D
        5A978F7499978499998D99998C989783948769987854C9B1A9C1B4B6DED8D8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000E0DCDB74575C
        98634797653998765499876899927799977F99967F99907799826295704B9B64
        3AD4CFD8A39C9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000887F83865B54984D1A945C319969439A77559A7F5F998365998364997F5F
        99735095673F81400DC9A391B2ACB0ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000BDAFB38C57459140079352258D562D875732885D3A8D
        6744946E4B92694587532D91572CBB753CCA906BADAAB0CECDCDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C6B7BB8F56428528008B3D08A766
        34CA9765D0A272BC8D5F9E6940A06B3ECB9867EFB984FFCB8ACD8A5FBBB8C0DD
        DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B8AEB1906152
        AD5529ECB177FFD29AFED7A5FCDEAEFEE7B6FFEABBFFE8B8FDDCABF7D09CFCCB
        90CF9675AEAAB2CBCBCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00009B96988F6B68EAA769FFD19BF4CD9BF4D8AAF4E0B4F4E4BBF4E5BDF4E4BB
        F4DDB1F6DBABF8C98AC6A399A8A6A9F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000D2D0D07E6B73B47F67FED295F6DBADF4E4BAF5E5C2F5
        E7C8F5E9CAF4E7C8F5E8C3F9E9B9D29E73DDDEE8A6A2A1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FCFEFE9B8F91B6A0A5CD9972FDE8
        B2F6EDC7F5E9CCF4EDD4F5EED9F5EED6F9EFCDE4C299F3E4DD867F80D7D8D8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFD4D6D6
        574849C3AEB2CDA88FF0D9B4F6ECD0F6F3E3F6F1E5F4E8D3E2C2ABE1D0CF9E95
        96C6C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFD3D5D59F969797888CC0A6A1D1B6ACD5BEB2D7C0B7D5BDB8
        C1B4B8ADA7AAC0BFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFCFDFDD2D0D0A3A0A2CEC5C7E1
        D7D8DCD3D4A09C9EE7E5E5F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 3
      Transparent = True
      OnClick = btnConsultarClick
    end
    object NxButton1: TNxButton
      Left = 473
      Top = 70
      Width = 177
      Height = 30
      Caption = 'Ajustar Contas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000017000000170000000100
        1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9BED7B786B5A064A1955795965B
        95AB84AAD5C8D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB571AA801171831376902787
        9B3B9BA451A6AA5DAEA25DA89C68A45B215C8E6B8EFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFDEBAD9880C728E177D9B
        3193A54CA4A550A4A44DA2A34BA2A24BA1A448A2A247A1C37CC6AC84B6480E48
        D1C6D2FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFCA90C18602
        719524899E3898A249A1A147A0A0449DA1469FA1469FA1469FA1469FA1459F9E
        409BA747A0CB91CF5D2A61B39CB2FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        D8AED2860072962489983092A1449CA0419A9F4199AA55A59E3D989F419BA041
        99A0419AA0419BA0419B9F3F9A9E3996C57EC65A285FCFC1CFFFFFFFFFFFFF00
        0000FFFFFFFFFFFF8A06779421849127899E3C959D3E949D3D949B3691D8BECF
        9D3D949E3B949D3D949D3D949D3D949D3D949D3D949C3B93972D8DC88ECC480E
        4AFFFFFFFFFFFF000000FFFFFFB15FA790197D8B2782942E899E37919D36919D
        36919C34909A308DFFFFFF9220859D35919D36919D35909D36919D35919F3692
        942C8994338BA97FB48F6A8DFFFFFF000000FFFFFF8D0D7B88277F81277F9A31
        8C9B318D9B318D9A318D9B318D962588C896C2FFFFFF9421859B318D9B318D9B
        318D9B318D9B318D9D318D7D1E79AF69B25C225FFFFFFF000000D8B2D38D187E
        7721787B237B9B2A8A9629889629889629889629889628888F1880FDFFFEA23F
        95922184962988962988962988962988992A8A80237D741B76995F9FD8CBD800
        0000C07AB6821F7B5E195F731C6E991F83941D80941D80941D80941E80931E81
        8E137ABF7BB2F5FDF48F127B941F829621839521839521839821857C1E735C15
        5C8C4292AF89AF000000B35DAB701B6C390D3E74206AA139949F4098A1439BA1
        429A9F3C96972B878E157786046DF1F2ECD8BECF8B087094217D94227D94227D
        982380781C6A3D0C3F7B357D9E659E000000B76CB9701B6F7821739A3F97A751
        A7A44EA4A44EA4A34EA49E419DFFFFFFFFFFFFFEFFFFEFEFE9F4FFF0BD81AA90
        15719621789521779921797618634D134F8828869B5F9C000000C38AC87E227C
        8A257D963A90A54FA5A44DA3A34CA2A44CA29E429EC997C9FFFFFFFEFCFEC693
        C7CA99C9C9A1C89C378D9B368D9E398FA042979B3D958C27808C2182A670A800
        0000D8B4DE8132838F237F95348CA54FA5A34CA2A34CA2A34CA2A34BA29D409C
        FFFFFFFFFFFFB873B69B3B9A9F449EA44EA4A44FA5A44FA4A650A697388F8E26
        7F891D7EBD90BB000000ECDDF3975B9F861D77942A84A755AAA44FA5A44FA5A4
        4FA5A550A59E429FD6B0D6FFFFFFFDFEFD9C3F9DA44EA5A54FA5A54FA5A44FA5
        A654AA942D87912782831277E0CADE000000FFFFFFC899D96D1764962083A855
        ADA95AB1A959B0A959B0A959B1A857AFA859B0FFFFFFFFFFFFD0A5D4A34EAAA9
        59B1A959B0AA5AB1A959B0932080952285831674FFFFFF000000FFFFFFE7D0F6
        8C5B958C1678A03E9CB16EC2AE67BCAE67BCAE67BCAE67BCA658B5E5D1EAFFFF
        FFFFFFFFAC64BCAE65BBAE67BCB16DC2A0429F9622868C147ABC7FB3FFFFFF00
        0000FFFFFFFFFFFFDCBCF16322639A2284B472C9B778CEB576CBB576CBB576CB
        B472CAFFFFFFF9F3FAF8F1F9FFFFFFB26FC9B678CDB575CB962783931F828B12
        78FFFFFFFFFFFF000000FFFFFFFFFFFFF7F0FCD0B0E35E1459A1328FC291E7BD
        8AE1BC88DFBD88DFBC88DFBA84DDB57AD9B67ADAB781DBBC8AE0C192E99F3A92
        962483870171E6CDE3FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFF4EBFCCFB0
        E364216095308ACDA2F7CAA1F4C599EFC598EEC598EEC598EEC599EEC8A1F3CB
        A3F4A04299921E7D860072D5ACD0FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFDCBDF18958936B1E63B785C5E3CDFEE3CDFEE1CCFDE3CF
        FEE4D0FFC291D39130838911768B0D7BE5CAE1FFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9D4F5CA99DA9150977A307B
        8F49909951999443918218778108718E127DBF7AB6FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF1E4F5DCBBE1C792CAB86FB9B76AB0C78DC0E4C8E0FFFFFFFFFFFFFFFFFF
        FFFFFFF2F2F2FFFFFFFFFFFFF2F2F2000000}
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 4
      Transparent = True
      OnClick = NxButton1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 129
    Width = 1037
    Height = 397
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1035
      Height = 395
      Align = alClient
      DataSource = dsDuplicata
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_ES'
          Title.Caption = 'Entrada/Sa'#237'da'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FILIAL'
          Title.Caption = 'Filial'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_NOTA'
          Title.Caption = 'ID Nota'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PARCELA'
          Title.Caption = 'Parcela'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMDUPLICATA'
          Title.Caption = 'N'#250'mero Duplicata'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMNOTA'
          Title.Caption = 'N'#250'mero Nota'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SERIE'
          Title.Caption = 'S'#233'rie'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTVENCIMENTO'
          Title.Caption = 'Data Vencimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_PESSOA'
          Title.Caption = 'Codigo Pessoa'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTEMISSAO'
          Title.Caption = 'Data Emiss'#227'o'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_PARCELA'
          Title.Caption = 'Valor Parcela'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_CONTA_ORCAMENTO'
          Title.Caption = 'Conta Or'#231'amento'
          Width = 108
          Visible = True
        end>
    end
  end
  object sdsDuplicata: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select *'#13#10'from DUPLICATA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 792
    Top = 40
  end
  object dspDuplicata: TDataSetProvider
    DataSet = sdsDuplicata
    Left = 824
    Top = 40
  end
  object cdsDuplicata: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDuplicata'
    Left = 856
    Top = 40
    object cdsDuplicataID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDuplicataTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object cdsDuplicataFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsDuplicataID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsDuplicataPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cdsDuplicataNUMDUPLICATA: TStringField
      FieldName = 'NUMDUPLICATA'
    end
    object cdsDuplicataNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsDuplicataSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsDuplicataDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsDuplicataVLR_PARCELA: TFloatField
      FieldName = 'VLR_PARCELA'
      DisplayFormat = '##0.00'
    end
    object cdsDuplicataVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
    object cdsDuplicataVLR_PAGO: TFloatField
      FieldName = 'VLR_PAGO'
    end
    object cdsDuplicataVLR_DEVOLUCAO: TFloatField
      FieldName = 'VLR_DEVOLUCAO'
    end
    object cdsDuplicataVLR_DESPESAS: TFloatField
      FieldName = 'VLR_DESPESAS'
    end
    object cdsDuplicataVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsDuplicataVLR_JUROSPAGOS: TFloatField
      FieldName = 'VLR_JUROSPAGOS'
    end
    object cdsDuplicataVLR_COMISSAO: TFloatField
      FieldName = 'VLR_COMISSAO'
    end
    object cdsDuplicataPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsDuplicataDTULTPAGAMENTO: TDateField
      FieldName = 'DTULTPAGAMENTO'
    end
    object cdsDuplicataID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsDuplicataID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsDuplicataID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsDuplicataID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsDuplicataID_CONTA_BOLETO: TIntegerField
      FieldName = 'ID_CONTA_BOLETO'
    end
    object cdsDuplicataID_COMISSAO: TIntegerField
      FieldName = 'ID_COMISSAO'
    end
    object cdsDuplicataQTD_DIASATRASO: TIntegerField
      FieldName = 'QTD_DIASATRASO'
    end
    object cdsDuplicataDTRECEBIMENTO_TITULO: TDateField
      FieldName = 'DTRECEBIMENTO_TITULO'
    end
    object cdsDuplicataDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsDuplicataPAGO_CARTORIO: TStringField
      FieldName = 'PAGO_CARTORIO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataPROTESTADO: TStringField
      FieldName = 'PROTESTADO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataTIPO_LANCAMENTO: TStringField
      FieldName = 'TIPO_LANCAMENTO'
      Size = 3
    end
    object cdsDuplicataARQUIVO_GERADO: TStringField
      FieldName = 'ARQUIVO_GERADO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataTRANSFERENCIA_ICMS: TStringField
      FieldName = 'TRANSFERENCIA_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
    end
    object cdsDuplicataDTFINANCEIRO: TDateField
      FieldName = 'DTFINANCEIRO'
    end
    object cdsDuplicataNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object cdsDuplicataACEITE: TStringField
      FieldName = 'ACEITE'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataID_COB_ELETRONICA: TIntegerField
      FieldName = 'ID_COB_ELETRONICA'
    end
    object cdsDuplicataBOLETO_IMP: TStringField
      FieldName = 'BOLETO_IMP'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataID_CARTEIRA: TIntegerField
      FieldName = 'ID_CARTEIRA'
    end
    object cdsDuplicataID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsDuplicataIMP_BOLETO: TStringField
      FieldName = 'IMP_BOLETO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataNUM_REMESSA: TIntegerField
      FieldName = 'NUM_REMESSA'
    end
    object cdsDuplicataID_NOTA_SERVICO: TIntegerField
      FieldName = 'ID_NOTA_SERVICO'
    end
    object cdsDuplicataDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object cdsDuplicataNUMRPS: TIntegerField
      FieldName = 'NUMRPS'
    end
    object cdsDuplicataANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
    object cdsDuplicataMES_REF: TIntegerField
      FieldName = 'MES_REF'
    end
    object cdsDuplicataNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object cdsDuplicataID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsDuplicataID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object cdsDuplicataVLR_TAXA_BANCARIA: TFloatField
      FieldName = 'VLR_TAXA_BANCARIA'
    end
    object cdsDuplicataCOBRAR_TAXA: TStringField
      FieldName = 'COBRAR_TAXA'
      Size = 1
    end
    object cdsDuplicataID_TERMINAL: TIntegerField
      FieldName = 'ID_TERMINAL'
    end
    object cdsDuplicataID_FECHAMENTO: TIntegerField
      FieldName = 'ID_FECHAMENTO'
    end
    object cdsDuplicataTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataNOSSONUMERO_SEQ: TFMTBCDField
      FieldName = 'NOSSONUMERO_SEQ'
      Precision = 15
      Size = 0
    end
    object cdsDuplicataNOSSONUMERO_GERADO: TStringField
      FieldName = 'NOSSONUMERO_GERADO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataNUMDUPLICATA_SEQ: TIntegerField
      FieldName = 'NUMDUPLICATA_SEQ'
    end
    object cdsDuplicataID_RECIBO: TIntegerField
      FieldName = 'ID_RECIBO'
    end
    object cdsDuplicataID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsDuplicataPERC_COMISSAO_PAGAR_NOTA: TFloatField
      FieldName = 'PERC_COMISSAO_PAGAR_NOTA'
    end
    object cdsDuplicataUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsDuplicataTITULO_CARTORIO: TStringField
      FieldName = 'TITULO_CARTORIO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataID_DESCONTADA: TIntegerField
      FieldName = 'ID_DESCONTADA'
    end
    object cdsDuplicataCONFIRMA_PGTO: TStringField
      FieldName = 'CONFIRMA_PGTO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataCOD_ANT: TIntegerField
      FieldName = 'COD_ANT'
    end
    object cdsDuplicataPERC_BASE_COMISSAO: TFloatField
      FieldName = 'PERC_BASE_COMISSAO'
    end
    object cdsDuplicataEMISSAO_BOLETO: TStringField
      FieldName = 'EMISSAO_BOLETO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataDESCRICAO2: TStringField
      FieldName = 'DESCRICAO2'
      Size = 100
    end
    object cdsDuplicataID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object cdsDuplicataVLR_MULTA: TFloatField
      FieldName = 'VLR_MULTA'
    end
    object cdsDuplicataID_CONTABIL_OPE_LACTO: TIntegerField
      FieldName = 'ID_CONTABIL_OPE_LACTO'
    end
    object cdsDuplicataID_CONTABIL_OPE_BAIXA: TIntegerField
      FieldName = 'ID_CONTABIL_OPE_BAIXA'
    end
    object cdsDuplicataREGIME_CAIXA: TStringField
      FieldName = 'REGIME_CAIXA'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataPERDIDO: TStringField
      FieldName = 'PERDIDO'
      Size = 1
    end
    object cdsDuplicataINSTRUCAO_PROTESTO: TStringField
      FieldName = 'INSTRUCAO_PROTESTO'
      FixedChar = True
      Size = 1
    end
  end
  object dsDuplicata: TDataSource
    DataSet = cdsDuplicata
    Left = 888
    Top = 40
  end
  object qPessoa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select CODIGO, TP_CLIENTE, TP_FORNECEDOR, TP_TRANSPORTADORA, TP_' +
        'VENDEDOR, CLIENTE_CONTA_ID, FORNECEDOR_CONTA_ID,'
      '       TRANSPORTADORA_CONTA_ID, VENDEDOR_CONTA_ID'
      'from PESSOA'
      'where CODIGO = :CODIGO   ')
    SQLConnection = dmDatabase.scoDados
    Left = 968
    Top = 40
    object qPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qPessoaTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object qPessoaTP_FORNECEDOR: TStringField
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object qPessoaTP_TRANSPORTADORA: TStringField
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object qPessoaTP_VENDEDOR: TStringField
      FieldName = 'TP_VENDEDOR'
      Size = 1
    end
    object qPessoaCLIENTE_CONTA_ID: TIntegerField
      FieldName = 'CLIENTE_CONTA_ID'
    end
    object qPessoaFORNECEDOR_CONTA_ID: TIntegerField
      FieldName = 'FORNECEDOR_CONTA_ID'
    end
    object qPessoaTRANSPORTADORA_CONTA_ID: TIntegerField
      FieldName = 'TRANSPORTADORA_CONTA_ID'
    end
    object qPessoaVENDEDOR_CONTA_ID: TIntegerField
      FieldName = 'VENDEDOR_CONTA_ID'
    end
  end
end
