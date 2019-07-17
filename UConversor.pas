unit UConversor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Buttons, FMTBcd, DBClient, Provider,
  SqlExpr;

type
  TfrmConversor = class(TForm)
    BitBtn1: TBitBtn;
    tCSTIPI: TTable;
    sdsTab_CSTICMS: TSQLDataSet;
    sdsTab_CSTICMSID: TIntegerField;
    sdsTab_CSTICMSPERCENTUAL: TFloatField;
    sdsTab_CSTICMSHISTORICO: TMemoField;
    sdsTab_CSTICMSTIPO: TStringField;
    sdsTab_CSTICMSNOME: TStringField;
    sdsTab_CSTICMSCOD_CST: TStringField;
    dspTab_CSTICMS: TDataSetProvider;
    cdsTab_CSTICMS: TClientDataSet;
    cdsTab_CSTICMSID: TIntegerField;
    cdsTab_CSTICMSPERCENTUAL: TFloatField;
    cdsTab_CSTICMSHISTORICO: TMemoField;
    cdsTab_CSTICMSTIPO: TStringField;
    cdsTab_CSTICMSNOME: TStringField;
    cdsTab_CSTICMSCOD_CST: TStringField;
    tCSTIPICodigo: TStringField;
    tCSTIPINome: TStringField;
    tCSTIPIGeraIPI: TBooleanField;
    sdsTab_CSTIPI: TSQLDataSet;
    sdsTab_CSTIPIID: TIntegerField;
    sdsTab_CSTIPICOD_IPI: TStringField;
    sdsTab_CSTIPINOME: TStringField;
    sdsTab_CSTIPIGERAR_IPI: TStringField;
    dspTab_CSTIPI: TDataSetProvider;
    cdsTab_CSTIPI: TClientDataSet;
    BitBtn2: TBitBtn;
    tCSTICMS: TTable;
    tCSTICMSCodigo: TIntegerField;
    tCSTICMSSitTributaria: TFloatField;
    tCSTICMSHistorico: TMemoField;
    tCSTICMSCodSit: TStringField;
    tCSTICMSTipo: TStringField;
    tCSTICMSNome: TStringField;
    cdsTab_CSTIPIID: TIntegerField;
    cdsTab_CSTIPICOD_IPI: TStringField;
    cdsTab_CSTIPINOME: TStringField;
    cdsTab_CSTIPIGERAR_IPI: TStringField;
    BitBtn3: TBitBtn;
    tNatOperacao: TTable;
    tNatOperacaoCodigo: TIntegerField;
    tNatOperacaoCodNatOper: TStringField;
    tNatOperacaoDescricao: TStringField;
    tNatOperacaoEntradaSaida: TBooleanField;
    tNatOperacaoIpi: TBooleanField;
    tNatOperacaoIcms: TBooleanField;
    tNatOperacaoLei: TMemoField;
    tNatOperacaoUsada: TStringField;
    tNatOperacaoTipoFat: TStringField;
    tNatOperacaoGeraDuplicata: TBooleanField;
    tNatOperacaoRelFat: TBooleanField;
    tNatOperacaoSomaMercNF: TBooleanField;
    tNatOperacaoDescInterna: TStringField;
    tNatOperacaoCodSitTrib: TIntegerField;
    tNatOperacaoCalcComissao: TBooleanField;
    tNatOperacaoMaoObra: TBooleanField;
    tNatOperacaoControlarRetorno: TBooleanField;
    tNatOperacaoDeduzirFat: TBooleanField;
    tNatOperacaoCodCSTIPI: TStringField;
    tNatOperacaoCopiarNotaTriangular: TBooleanField;
    tNatOperacaoCodPis: TStringField;
    tNatOperacaoCodCofins: TStringField;
    tNatOperacaoTipoPis: TStringField;
    tNatOperacaoTipoCofins: TStringField;
    tNatOperacaoIcmsSimples: TBooleanField;
    tNatOperacaoCodSitTribSimples: TIntegerField;
    tNatOperacaoCodCSTIPISimples: TStringField;
    tNatOperacaoCodPisSimples: TStringField;
    tNatOperacaoCodCofinsSimples: TStringField;
    tNatOperacaoTipoPisSimples: TStringField;
    tNatOperacaoPercPis: TFloatField;
    tNatOperacaoPercCofins: TFloatField;
    tNatOperacaoPercPisSimples: TFloatField;
    tNatOperacaoPercCofinsSimples: TFloatField;
    tNatOperacaoTipoEmpresa: TStringField;
    tNatOperacaoSubstTrib: TBooleanField;
    tNatOperacaoMVA: TBooleanField;
    tNatOperacaoGeraEstoque: TBooleanField;
    sdsCFOP: TSQLDataSet;
    sdsCFOPID: TIntegerField;
    sdsCFOPCODCFOP: TStringField;
    sdsCFOPNOME: TStringField;
    sdsCFOPENTRADASAIDA: TStringField;
    sdsCFOPGERAR_IPI: TStringField;
    sdsCFOPGERAR_ICMS: TStringField;
    sdsCFOPGERAR_DUPLICATA: TStringField;
    sdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField;
    sdsCFOPNOME_INTERNO: TStringField;
    sdsCFOPID_CSTICMS: TIntegerField;
    sdsCFOPID_CSTIPI: TIntegerField;
    sdsCFOPCOPIARNOTATRIANGULAR: TStringField;
    sdsCFOPID_PIS: TIntegerField;
    sdsCFOPID_COFINS: TIntegerField;
    sdsCFOPTIPO_PIS: TStringField;
    sdsCFOPTIPO_COFINS: TStringField;
    sdsCFOPGERAR_ICMS_SIMPLES: TStringField;
    sdsCFOPTIPO_EMPRESA: TStringField;
    sdsCFOPSUBSTITUICAO_TRIB: TStringField;
    sdsCFOPMVA: TStringField;
    sdsCFOPPERC_COFINS: TFloatField;
    sdsCFOPPERC_PIS: TFloatField;
    dspCFOP: TDataSetProvider;
    cdsCFOP: TClientDataSet;
    cdsCFOPID: TIntegerField;
    cdsCFOPCODCFOP: TStringField;
    cdsCFOPNOME: TStringField;
    cdsCFOPENTRADASAIDA: TStringField;
    cdsCFOPGERAR_IPI: TStringField;
    cdsCFOPGERAR_ICMS: TStringField;
    cdsCFOPGERAR_DUPLICATA: TStringField;
    cdsCFOPSOMAR_VLRTOTALPRODUTO: TStringField;
    cdsCFOPNOME_INTERNO: TStringField;
    cdsCFOPID_CSTICMS: TIntegerField;
    cdsCFOPID_CSTIPI: TIntegerField;
    cdsCFOPCOPIARNOTATRIANGULAR: TStringField;
    cdsCFOPID_PIS: TIntegerField;
    cdsCFOPID_COFINS: TIntegerField;
    cdsCFOPTIPO_PIS: TStringField;
    cdsCFOPTIPO_COFINS: TStringField;
    cdsCFOPGERAR_ICMS_SIMPLES: TStringField;
    cdsCFOPTIPO_EMPRESA: TStringField;
    cdsCFOPSUBSTITUICAO_TRIB: TStringField;
    cdsCFOPMVA: TStringField;
    cdsCFOPPERC_COFINS: TFloatField;
    cdsCFOPPERC_PIS: TFloatField;
    BitBtn4: TBitBtn;
    tPais: TTable;
    tPaisID: TIntegerField;
    tPaisPais: TStringField;
    tPaisCodPais: TStringField;
    sdsPais: TSQLDataSet;
    dspPais: TDataSetProvider;
    cdsPais: TClientDataSet;
    sdsPaisID: TIntegerField;
    sdsPaisNOME: TStringField;
    sdsPaisCODPAIS: TStringField;
    cdsPaisID: TIntegerField;
    cdsPaisNOME: TStringField;
    cdsPaisCODPAIS: TStringField;
    BitBtn5: TBitBtn;
    tUF: TTable;
    sdsUF: TSQLDataSet;
    dspUF: TDataSetProvider;
    cdsUF: TClientDataSet;
    tUFSigla: TStringField;
    tUFPercentual: TFloatField;
    tUFCodSitTrib: TIntegerField;
    tUFIDPais: TIntegerField;
    tUFCodUF: TStringField;
    tUFIcmsInterno: TFloatField;
    sdsUFUF: TStringField;
    sdsUFPERC_ICMS: TFloatField;
    sdsUFIDPAIS: TIntegerField;
    sdsUFCODUF: TStringField;
    sdsUFPERC_ICMS_INTERNO: TFloatField;
    cdsUFUF: TStringField;
    cdsUFPERC_ICMS: TFloatField;
    cdsUFIDPAIS: TIntegerField;
    cdsUFCODUF: TStringField;
    cdsUFPERC_ICMS_INTERNO: TFloatField;
    BitBtn6: TBitBtn;
    tCidade: TTable;
    sdsCidade: TSQLDataSet;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    tCidadeCodigo: TIntegerField;
    tCidadeNome: TStringField;
    tCidadeEstado: TStringField;
    tCidadePrefixo: TStringField;
    tCidadeCep: TStringField;
    tCidadeCodMunicipio: TStringField;
    sdsCidadeID: TIntegerField;
    sdsCidadeNOME: TStringField;
    sdsCidadeUF: TStringField;
    sdsCidadeCODMUNICIPIO: TStringField;
    cdsCidadeID: TIntegerField;
    cdsCidadeNOME: TStringField;
    cdsCidadeUF: TStringField;
    cdsCidadeCODMUNICIPIO: TStringField;
    tTabCofins: TTable;
    sdsTab_Cofins: TSQLDataSet;
    dspTab_Cofins: TDataSetProvider;
    cdsTab_Cofins: TClientDataSet;
    tTabCofinsCodigo: TStringField;
    tTabCofinsNome: TStringField;
    sdsTab_CofinsID: TIntegerField;
    sdsTab_CofinsCODIGO: TStringField;
    sdsTab_CofinsNOME: TStringField;
    cdsTab_CofinsID: TIntegerField;
    cdsTab_CofinsCODIGO: TStringField;
    cdsTab_CofinsNOME: TStringField;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    tTabPis: TTable;
    sdsTab_Pis: TSQLDataSet;
    dspTab_Pis: TDataSetProvider;
    cdsTab_Pis: TClientDataSet;
    tTabPisCodigo: TStringField;
    tTabPisNome: TStringField;
    sdsTab_PisID: TIntegerField;
    sdsTab_PisCODIGO: TStringField;
    sdsTab_PisNOME: TStringField;
    cdsTab_PisID: TIntegerField;
    cdsTab_PisCODIGO: TStringField;
    cdsTab_PisNOME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConversor: TfrmConversor;

implementation

{$R *.dfm}

procedure TfrmConversor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConversor.BitBtn1Click(Sender: TObject);
var
  vID : Integer;
begin
  tCSTIPI.Open;
  cdsTab_CSTIPI.Open;
  vID := 0;
  tCSTIPI.First;
  while not tCSTIPI.Eof do
  begin
    vID := vID + 1;
    cdsTab_CSTIPI.Insert;
    cdsTab_CSTIPIID.AsInteger := vID;
    cdsTab_CSTIPICOD_IPI.AsString := tCSTIPICodigo.AsString;
    cdsTab_CSTIPINOME.AsString    := tCSTIPINome.AsString;
    if tCSTIPIGeraIPI.AsBoolean then
      cdsTab_CSTIPIGERAR_IPI.AsString := 'S'
    else
      cdsTab_CSTIPIGERAR_IPI.AsString := 'N';
    cdsTab_CSTIPI.Post;
    cdsTab_CSTIPI.ApplyUpdates(0);
    tCSTIPI.Next;
  end;
  ShowMessage('Conversão gerada com sucesso!');
end;

procedure TfrmConversor.BitBtn2Click(Sender: TObject);
var
  vID : Integer;
begin
  tCSTICMS.Open;
  cdsTab_CSTICMS.Open;
  vID := 0;
  tCSTICMS.First;
  while not tCSTICMS.Eof do
  begin
    vID := vID + 1;
    cdsTab_CSTICMS.Insert;
    cdsTab_CSTICMSID.AsInteger := vID;
    cdsTab_CSTICMSPERCENTUAL.AsFloat := tCSTICMSSitTributaria.AsFloat;
    cdsTab_CSTICMSHISTORICO.Value    := tCSTICMSHistorico.Value;
    cdsTab_CSTICMSTIPO.AsString      := tCSTICMSTipo.AsString;
    cdsTab_CSTICMSNOME.AsString      := tCSTICMSNome.AsString;
    cdsTab_CSTICMSCOD_CST.AsString   := tCSTICMSCodSit.AsString;
    cdsTab_CSTICMS.Post;
    cdsTab_CSTICMS.ApplyUpdates(0);
    tCSTICMS.Next;
  end;
  ShowMessage('Conversão gerada com sucesso!');
end;

procedure TfrmConversor.BitBtn3Click(Sender: TObject);
var
  vID : Integer;
begin
  tNatOperacao.Open;
  cdsCFOP.Open;
  vID := 0;
  tNatOperacao.First;
  while not tNatOperacao.Eof do
  begin
    vID := vID + 1;
    cdsCFOP.Insert;
    cdsCFOPID.AsInteger := vID;
    cdsCFOPCODCFOP.AsString      := tNatOperacaoCodNatOper.AsString;
    cdsCFOPNOME.AsString         := tNatOperacaoDescricao.AsString;
    cdsCFOPNOME_INTERNO.AsString := tNatOperacaoDescInterna.AsString;
    if tNatOperacaoEntradaSaida.AsBoolean then
      cdsCFOPENTRADASAIDA.AsString := 'E'
    else
      cdsCFOPENTRADASAIDA.AsString := 'S';
    if tNatOperacaoIpi.AsBoolean then
      cdsCFOPGERAR_IPI.AsString := 'S'
    else
      cdsCFOPGERAR_IPI.AsString := 'N';
    if tNatOperacaoIcms.AsBoolean then
      cdsCFOPGERAR_ICMS.AsString := 'S'
    else
      cdsCFOPGERAR_ICMS.AsString := 'N';
    if tNatOperacaoGeraDuplicata.AsBoolean then
      cdsCFOPGERAR_DUPLICATA.AsString := 'S'
    else
      cdsCFOPGERAR_DUPLICATA.AsString := 'N';
    if tNatOperacaoSomaMercNF.AsBoolean then
      cdsCFOPSOMAR_VLRTOTALPRODUTO.AsString := 'S'
    else
      cdsCFOPSOMAR_VLRTOTALPRODUTO.AsString := 'N';
    cdsCFOPCOPIARNOTATRIANGULAR.AsString := 'N';
    cdsCFOPTIPO_EMPRESA.AsString := 'A';
    cdsCFOPSUBSTITUICAO_TRIB.AsString := 'N';
    cdsCFOPMVA.AsString               := 'N';
    cdsCFOP.Post;
    cdsCFOP.ApplyUpdates(0);
    tNatOperacao.Next;
  end;
  ShowMessage('Conversão gerada com sucesso!');
end;

procedure TfrmConversor.BitBtn4Click(Sender: TObject);
var
  vID : Integer;
begin
  tPais.Open;
  cdsPais.Open;
  vID := 0;
  tPais.First;
  while not tPais.Eof do
  begin
    cdsPais.Insert;
    cdsPaisID.AsInteger     := tPaisID.AsInteger;
    cdsPaisNOME.AsString    := tPaisPais.AsString;
    cdsPaisCODPAIS.AsString := tPaisCodPais.AsString;
    cdsPais.Post;
    cdsPais.ApplyUpdates(0);
    tPais.Next;
  end;
  ShowMessage('Conversão gerada com sucesso!');
end;

procedure TfrmConversor.BitBtn5Click(Sender: TObject);
var
  vID : Integer;
begin
  tUF.Open;
  cdsUF.Open;
  vID := 0;
  tUF.First;
  while not tUF.Eof do
  begin
    cdsUF.Insert;
    cdsUFUF.AsString               := tUFSigla.AsString;
    cdsUFPERC_ICMS.AsFloat         := tUFPercentual.AsFloat;
    if tUFIDPais.AsInteger > 0 then
      cdsUFIDPAIS.AsInteger          := tUFIDPais.AsInteger;
    cdsUFCODUF.AsString            := tUFCodUF.AsString;
    cdsUFPERC_ICMS_INTERNO.AsFloat := tUFIcmsInterno.AsFloat;
    cdsUF.Post;
    cdsUF.ApplyUpdates(0);
    tUF.Next;
  end;
  ShowMessage('Conversão gerada com sucesso!');
end;

procedure TfrmConversor.BitBtn6Click(Sender: TObject);
var
  vID : Integer;
begin
  tCidade.Open;
  cdsCidade.Open;
  vID := 0;
  tCidade.First;
  while not tCidade.Eof do
  begin
    vID := vID + 1;
    cdsCidade.Insert;
    cdsCidadeID.AsInteger          := vID;
    cdsCidadeNOME.AsString         := tCidadeNome.AsString;
    cdsCidadeUF.AsString           := tCidadeEstado.AsString;
    cdsCidadeCODMUNICIPIO.AsString := tCidadeCodMunicipio.AsString;
    cdsCidade.Post;
    cdsCidade.ApplyUpdates(0);
    tCidade.Next;
  end;
  ShowMessage('Conversão gerada com sucesso!');
end;

procedure TfrmConversor.BitBtn7Click(Sender: TObject);
var
  vID : Integer;
begin
  tTabCofins.Open;
  cdsTab_Cofins.Open;
  vID := 0;
  tTabCofins.First;
  while not tTabCofins.Eof do
  begin
    vID := vID + 1;
    cdsTab_Cofins.Insert;
    cdsTab_CofinsID.AsInteger    := vID;
    cdsTab_CofinsCODIGO.AsString := tTabCofinsCodigo.AsString;
    cdsTab_CofinsNOME.AsString   := tTabCofinsNome.AsString;
    cdsTab_Cofins.Post;
    cdsTab_Cofins.ApplyUpdates(0);
    tTabCofins.Next;
  end;
  ShowMessage('Conversão gerada com sucesso!');
end;

procedure TfrmConversor.BitBtn8Click(Sender: TObject);
var
  vID : Integer;
begin
  tTabPis.Open;
  cdsTab_Pis.Open;
  vID := 0;
  tTabPis.First;
  while not tTabPis.Eof do
  begin
    vID := vID + 1;
    cdsTab_Pis.Insert;
    cdsTab_PisID.AsInteger    := vID;
    cdsTab_PisCODIGO.AsString := tTabPisCodigo.AsString;
    cdsTab_PisNOME.AsString   := tTabPisNome.AsString;
    cdsTab_Pis.Post;
    cdsTab_Pis.ApplyUpdates(0);
    tTabPis.Next;
  end;
  ShowMessage('Conversão gerada com sucesso!');
end;

end.
