object DMGerarTalaoSetor: TDMGerarTalaoSetor
  OldCreateOrder = False
  Left = 302
  Top = 197
  Height = 398
  Width = 551
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM LOTE'#13#10'WHERE NUM_ORDEM >= :NUM_ORDEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_ORDEM'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 88
    Top = 48
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 136
    Top = 48
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 184
    Top = 48
    object cdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaNUM_LOTE: TIntegerField
      FieldName = 'NUM_LOTE'
    end
    object cdsConsultaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsConsultaNUM_ORDEM: TIntegerField
      FieldName = 'NUM_ORDEM'
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 224
    Top = 48
  end
end
