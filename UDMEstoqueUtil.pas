unit UDMEstoqueUtil;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMEstoqueUtil = class(TDataModule)
    sdsEstoque_Mov: TSQLDataSet;
    dspEstoque_Mov: TDataSetProvider;
    cdsEstoque_Mov: TClientDataSet;
    cdsEstoque_MovID: TIntegerField;
    cdsEstoque_MovFILIAL: TIntegerField;
    cdsEstoque_MovID_PRODUTO: TIntegerField;
    cdsEstoque_MovID_COR: TIntegerField;
    cdsEstoque_MovDTMOVIMENTO: TDateField;
    cdsEstoque_MovTIPO_ES: TStringField;
    cdsEstoque_MovTIPO_MOV: TStringField;
    cdsEstoque_MovNUMNOTA: TIntegerField;
    cdsEstoque_MovID_PESSOA: TIntegerField;
    cdsEstoque_MovVLR_UNITARIO: TFloatField;
    cdsEstoque_MovQTD: TFloatField;
    cdsEstoque_MovPERC_ICMS: TFloatField;
    cdsEstoque_MovPERC_IPI: TFloatField;
    cdsEstoque_MovVLR_DESCONTO: TFloatField;
    cdsEstoque_MovUNIDADE: TStringField;
    cdsEstoque_MovQTD2: TFloatField;
    cdsEstoque_MovTAMANHO: TStringField;
    cdsEstoque_MovPERC_TRIBUTACAO: TFloatField;
    cdsEstoque_MovVLR_FRETE: TFloatField;
    cdsEstoque_MovID_CFOP: TIntegerField;
    cdsEstoque_MovID_NOTA: TIntegerField;
    cdsEstoque_MovSERIE: TStringField;
    cdsEstoque_MovUNIDADE_ORIG: TStringField;
    cdsEstoque_MovVLR_UNITARIOORIG: TFloatField;
    cdsEstoque_MovQTD_ORIG: TFloatField;
    cdsEstoque_MovVLR_DESCONTOORIG: TFloatField;
    cdsEstoque_MovMERCADO: TStringField;
    cdsEstoque_MovID_CENTROCUSTO: TIntegerField;
    cdsEstoque_MovQTD_ENT: TFloatField;
    cdsEstoque_MovQTD_SAI: TFloatField;
    cdsEstoque_MovTESTE: TStringField;
    cdsEstoque_MovID_CUPOM: TIntegerField;
    cdsEstoque_MovID_LOCAL_ESTOQUE: TIntegerField;
    cdsEstoque_MovNUM_LOTE_CONTROLE: TStringField;
    cdsEstoque_MovGERAR_CUSTO: TStringField;
    dsEstoque_Mov: TDataSource;
    sdsEstoque_Atual: TSQLDataSet;
    dspEstoque_Atual: TDataSetProvider;
    cdsEstoque_Atual: TClientDataSet;
    dsEstoque_Atual: TDataSource;
    cdsEstoque_AtualFILIAL: TIntegerField;
    cdsEstoque_AtualID_PRODUTO: TIntegerField;
    cdsEstoque_AtualID_COR: TIntegerField;
    cdsEstoque_AtualTAMANHO: TStringField;
    cdsEstoque_AtualID_LOCAL_ESTOQUE: TIntegerField;
    cdsEstoque_AtualQTD: TFMTBCDField;
    sdsEstoque_AtualFILIAL: TIntegerField;
    sdsEstoque_AtualID_PRODUTO: TIntegerField;
    sdsEstoque_AtualID_COR: TIntegerField;
    sdsEstoque_AtualTAMANHO: TStringField;
    sdsEstoque_AtualID_LOCAL_ESTOQUE: TIntegerField;
    sdsEstoque_AtualQTD: TFMTBCDField;
    sdsEstoque_AtualNUM_LOTE_CONTROLE: TStringField;
    cdsEstoque_AtualNUM_LOTE_CONTROLE: TStringField;
    qParametros_Prod: TSQLQuery;
    qParametros_ProdUSA_LOTE_PROD: TStringField;
    sdsEstoque_Lote: TSQLDataSet;
    dspEstoque_Lote: TDataSetProvider;
    cdsEstoque_Lote: TClientDataSet;
    dsEstoque_Lote: TDataSource;
    sdsEstoque_LoteFILIAL: TIntegerField;
    sdsEstoque_LoteID_PRODUTO: TIntegerField;
    sdsEstoque_LoteID_LOCAL_ESTOQUE: TIntegerField;
    sdsEstoque_LoteNUM_LOTE_CONTROLE: TStringField;
    sdsEstoque_LoteQTD: TFMTBCDField;
    cdsEstoque_LoteFILIAL: TIntegerField;
    cdsEstoque_LoteID_PRODUTO: TIntegerField;
    cdsEstoque_LoteID_LOCAL_ESTOQUE: TIntegerField;
    cdsEstoque_LoteNUM_LOTE_CONTROLE: TStringField;
    cdsEstoque_LoteQTD: TFMTBCDField;
    qParametros: TSQLQuery;
    qParametrosUSA_LOTE_CONTROLE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure prc_Limpar_Estoque_Atual;
    procedure prc_Gravar_Estoque_Atual;

  end;

var
  DMEstoqueUtil: TDMEstoqueUtil;

implementation

uses DmdDatabase;

{$R *.dfm}

{ TDataModule1 }

procedure TDMEstoqueUtil.prc_Gravar_Estoque_Atual;
begin
  cdsEstoque_Atual.Close;
  sdsEstoque_Atual.ParamByName('FILIAL').AsInteger := cdsEstoque_MovFILIAL.AsInteger;
  sdsEstoque_Atual.ParamByName('ID_PRODUTO').AsInteger := cdsEstoque_MovID_PRODUTO.AsInteger;
  sdsEstoque_Atual.ParamByName('ID_COR').AsInteger     := cdsEstoque_MovID_COR.AsInteger;
  sdsEstoque_Atual.ParamByName('TAMANHO').AsString     := cdsEstoque_MovTAMANHO.AsString;
  sdsEstoque_Atual.ParamByName('ID_LOCAL_ESTOQUE').AsInteger := cdsEstoque_MovID_LOCAL_ESTOQUE.AsInteger;
  cdsEstoque_Atual.Open;

  if not cdsEstoque_Atual.IsEmpty then
    cdsEstoque_Atual.Edit
  else
  begin
    cdsEstoque_Atual.Insert;
    cdsEstoque_AtualFILIAL.AsInteger := cdsEstoque_MovFILIAL.AsInteger;
    cdsEstoque_AtualID_PRODUTO.AsInteger := cdsEstoque_MovID_PRODUTO.AsInteger;
    cdsEstoque_AtualID_COR.AsInteger     := cdsEstoque_MovID_COR.AsInteger;
    cdsEstoque_AtualTAMANHO.AsString     := cdsEstoque_MovTAMANHO.Value;
    cdsEstoque_AtualID_LOCAL_ESTOQUE.AsInteger := cdsEstoque_MovID_LOCAL_ESTOQUE.AsInteger;
    cdsEstoque_AtualNUM_LOTE_CONTROLE.AsString := '';
    if (qParametros_ProdUSA_LOTE_PROD.AsString = 'S') and (trim(cdsEstoque_AtualNUM_LOTE_CONTROLE.AsString) <> '') then
      cdsEstoque_AtualNUM_LOTE_CONTROLE.AsString := cdsEstoque_MovNUM_LOTE_CONTROLE.AsString;
    cdsEstoque_AtualQTD.AsInteger := 0;
  end;
  cdsEstoque_AtualQTD.AsFloat := StrToFloat(FormatFloat('0.0000',cdsEstoque_AtualQTD.AsFloat + cdsEstoque_MovQTD2.AsFloat));
  cdsEstoque_Atual.Post;
  cdsEstoque_Atual.ApplyUpdates(0);

  if (qParametrosUSA_LOTE_CONTROLE.AsString = 'S') and (trim(cdsEstoque_MovNUM_LOTE_CONTROLE.AsString) <> '') then
  begin
    cdsEstoque_Lote.Close;
    sdsEstoque_Lote.ParamByName('FILIAL').AsInteger           := cdsEstoque_MovFILIAL.AsInteger;
    sdsEstoque_Lote.ParamByName('ID_PRODUTO').AsInteger       := cdsEstoque_MovID_PRODUTO.AsInteger;
    sdsEstoque_Lote.ParamByName('ID_LOCAL_ESTOQUE').AsInteger := cdsEstoque_MovID_LOCAL_ESTOQUE.AsInteger;
    sdsEstoque_Lote.ParamByName('NUM_LOTE_CONTROLE').AsString := cdsEstoque_MovNUM_LOTE_CONTROLE.AsString;
    cdsEstoque_Lote.Open;

    if not cdsEstoque_Lote.IsEmpty then
      cdsEstoque_Lote.Edit
    else
    begin
      cdsEstoque_Lote.Insert;
      cdsEstoque_LoteFILIAL.AsInteger           := cdsEstoque_MovFILIAL.AsInteger;
      cdsEstoque_LoteID_PRODUTO.AsInteger       := cdsEstoque_MovID_PRODUTO.AsInteger;
      cdsEstoque_LoteID_LOCAL_ESTOQUE.AsInteger := cdsEstoque_MovID_LOCAL_ESTOQUE.AsInteger;
      cdsEstoque_LoteNUM_LOTE_CONTROLE.AsString := cdsEstoque_MovNUM_LOTE_CONTROLE.AsString;
      cdsEstoque_LoteQTD.AsInteger              := 0;
    end;
    cdsEstoque_LoteQTD.AsFloat := StrToFloat(FormatFloat('0.0000',cdsEstoque_LoteQTD.AsFloat + cdsEstoque_MovQTD2.AsFloat));
    cdsEstoque_Lote.Post;
    cdsEstoque_Lote.ApplyUpdates(0);
  end;
end;

procedure TDMEstoqueUtil.prc_Limpar_Estoque_Atual;
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados; //--
    sds.Close;
    sds.CommandText := 'DELETE FROM ESTOQUE_ATUAL';
    sds.ExecSQL();

    if qParametrosUSA_LOTE_CONTROLE.AsString = 'S' then
    begin
      sds.SQLConnection := dmDatabase.scoDados; //--
      sds.Close;
      sds.CommandText := 'DELETE FROM ESTOQUE_LOTE';
      sds.ExecSQL();
    end;
    
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao limpar a tabela Estoque_Atual:' + #13 + 'Mensagem: ' + E.Message + #13);
    end;
  end;



  
  FreeAndNil(sds);
end;

end.
