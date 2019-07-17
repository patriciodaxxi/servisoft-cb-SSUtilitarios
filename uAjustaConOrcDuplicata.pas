unit uAjustaConOrcDuplicata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls,
  NxEdit, ExtCtrls, Grids, DBGrids, FMTBcd, DB, DBClient, Provider, SqlExpr, NxCollection;

type
  TfrmAjustaContasOrcDuplicata = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    RadioGroup1: TRadioGroup;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    sdsDuplicata: TSQLDataSet;
    dspDuplicata: TDataSetProvider;
    cdsDuplicata: TClientDataSet;
    dsDuplicata: TDataSource;
    cdsDuplicataID: TIntegerField;
    cdsDuplicataTIPO_ES: TStringField;
    cdsDuplicataFILIAL: TIntegerField;
    cdsDuplicataID_NOTA: TIntegerField;
    cdsDuplicataPARCELA: TIntegerField;
    cdsDuplicataNUMDUPLICATA: TStringField;
    cdsDuplicataNUMNOTA: TIntegerField;
    cdsDuplicataSERIE: TStringField;
    cdsDuplicataDTVENCIMENTO: TDateField;
    cdsDuplicataVLR_PARCELA: TFloatField;
    cdsDuplicataVLR_RESTANTE: TFloatField;
    cdsDuplicataVLR_PAGO: TFloatField;
    cdsDuplicataVLR_DEVOLUCAO: TFloatField;
    cdsDuplicataVLR_DESPESAS: TFloatField;
    cdsDuplicataVLR_DESCONTO: TFloatField;
    cdsDuplicataVLR_JUROSPAGOS: TFloatField;
    cdsDuplicataVLR_COMISSAO: TFloatField;
    cdsDuplicataPERC_COMISSAO: TFloatField;
    cdsDuplicataDTULTPAGAMENTO: TDateField;
    cdsDuplicataID_PESSOA: TIntegerField;
    cdsDuplicataID_CONTA: TIntegerField;
    cdsDuplicataID_TIPOCOBRANCA: TIntegerField;
    cdsDuplicataID_VENDEDOR: TIntegerField;
    cdsDuplicataID_CONTA_BOLETO: TIntegerField;
    cdsDuplicataID_COMISSAO: TIntegerField;
    cdsDuplicataQTD_DIASATRASO: TIntegerField;
    cdsDuplicataDTRECEBIMENTO_TITULO: TDateField;
    cdsDuplicataDTEMISSAO: TDateField;
    cdsDuplicataPAGO_CARTORIO: TStringField;
    cdsDuplicataPROTESTADO: TStringField;
    cdsDuplicataTIPO_LANCAMENTO: TStringField;
    cdsDuplicataARQUIVO_GERADO: TStringField;
    cdsDuplicataTRANSFERENCIA_ICMS: TStringField;
    cdsDuplicataNOSSONUMERO: TStringField;
    cdsDuplicataDTFINANCEIRO: TDateField;
    cdsDuplicataNUMCHEQUE: TIntegerField;
    cdsDuplicataACEITE: TStringField;
    cdsDuplicataID_COB_ELETRONICA: TIntegerField;
    cdsDuplicataBOLETO_IMP: TStringField;
    cdsDuplicataID_CARTEIRA: TIntegerField;
    cdsDuplicataID_BANCO: TIntegerField;
    cdsDuplicataIMP_BOLETO: TStringField;
    cdsDuplicataNUM_REMESSA: TIntegerField;
    cdsDuplicataID_NOTA_SERVICO: TIntegerField;
    cdsDuplicataDESCRICAO: TStringField;
    cdsDuplicataNUMRPS: TIntegerField;
    cdsDuplicataANO_REF: TIntegerField;
    cdsDuplicataMES_REF: TIntegerField;
    cdsDuplicataNUM_CONTRATO: TIntegerField;
    cdsDuplicataID_CONTA_ORCAMENTO: TIntegerField;
    cdsDuplicataID_CUPOM: TIntegerField;
    cdsDuplicataVLR_TAXA_BANCARIA: TFloatField;
    cdsDuplicataCOBRAR_TAXA: TStringField;
    cdsDuplicataID_TERMINAL: TIntegerField;
    cdsDuplicataID_FECHAMENTO: TIntegerField;
    cdsDuplicataTIPO_MOV: TStringField;
    cdsDuplicataNOSSONUMERO_SEQ: TFMTBCDField;
    cdsDuplicataNOSSONUMERO_GERADO: TStringField;
    cdsDuplicataNUMDUPLICATA_SEQ: TIntegerField;
    cdsDuplicataID_RECIBO: TIntegerField;
    cdsDuplicataID_PEDIDO: TIntegerField;
    cdsDuplicataPERC_COMISSAO_PAGAR_NOTA: TFloatField;
    cdsDuplicataUSUARIO: TStringField;
    cdsDuplicataTITULO_CARTORIO: TStringField;
    cdsDuplicataID_DESCONTADA: TIntegerField;
    cdsDuplicataCONFIRMA_PGTO: TStringField;
    cdsDuplicataCOD_ANT: TIntegerField;
    cdsDuplicataPERC_BASE_COMISSAO: TFloatField;
    cdsDuplicataEMISSAO_BOLETO: TStringField;
    cdsDuplicataDESCRICAO2: TStringField;
    cdsDuplicataID_CONTRATO: TIntegerField;
    cdsDuplicataVLR_MULTA: TFloatField;
    cdsDuplicataID_CONTABIL_OPE_LACTO: TIntegerField;
    cdsDuplicataID_CONTABIL_OPE_BAIXA: TIntegerField;
    cdsDuplicataREGIME_CAIXA: TStringField;
    cdsDuplicataPERDIDO: TStringField;
    cdsDuplicataINSTRUCAO_PROTESTO: TStringField;
    btnConsultar: TNxButton;
    NxButton1: TNxButton;
    qPessoa: TSQLQuery;
    qPessoaTP_CLIENTE: TStringField;
    qPessoaTP_FORNECEDOR: TStringField;
    qPessoaTP_TRANSPORTADORA: TStringField;
    qPessoaTP_VENDEDOR: TStringField;
    qPessoaCLIENTE_CONTA_ID: TIntegerField;
    qPessoaFORNECEDOR_CONTA_ID: TIntegerField;
    qPessoaTRANSPORTADORA_CONTA_ID: TIntegerField;
    qPessoaVENDEDOR_CONTA_ID: TIntegerField;
    qPessoaCODIGO: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
  private
    ctDuplicata: string;
    procedure prc_Abre_Duplicata;
    procedure prc_Monta_Condicao;
    procedure prc_Abre_Pessoa(Codigo: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAjustaContasOrcDuplicata: TfrmAjustaContasOrcDuplicata;

implementation

uses
  DmdDatabase;

{$R *.dfm}

procedure TfrmAjustaContasOrcDuplicata.FormShow(Sender: TObject);
begin
  RadioGroup1.ItemIndex := 0;
  ctDuplicata := sdsDuplicata.CommandText;
end;

procedure TfrmAjustaContasOrcDuplicata.prc_Abre_Duplicata;
begin
  cdsDuplicata.Close;
  cdsDuplicata.Open;
end;

procedure TfrmAjustaContasOrcDuplicata.prc_Monta_Condicao;
var
  vCommandText: string;
begin
  vCommandText := ctDuplicata + ' where 0=0 ';
  if RadioGroup1.ItemIndex = 0 then
    vCommandText := vCommandText + ' AND TIPO_ES = ' + QuotedStr('S');
  if RadioGroup1.ItemIndex = 1 then
    vCommandText := vCommandText + ' AND TIPO_ES = ' + QuotedStr('E');
  if NxDatePicker1.Date > 10 then
    vCommandText := vCommandText + ' AND DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', NxDatePicker1.Date));
  if NxDatePicker2.Date > 10 then
    vCommandText := vCommandText + ' AND DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', NxDatePicker2.Date));
  sdsDuplicata.CommandText := vCommandText;
end;

procedure TfrmAjustaContasOrcDuplicata.btnConsultarClick(Sender: TObject);
begin
  prc_Monta_Condicao;
  prc_Abre_Duplicata;
end;

procedure TfrmAjustaContasOrcDuplicata.NxButton1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then
  begin
    cdsDuplicata.First;
    while not cdsDuplicata.Eof do
    begin
      prc_Abre_Pessoa(cdsDuplicataID_PESSOA.AsInteger);
      if qPessoa.IsEmpty then
        cdsDuplicata.Next;
      if (qPessoaTP_FORNECEDOR.AsString = 'S') and (qPessoaFORNECEDOR_CONTA_ID.AsInteger > 0) and (cdsDuplicataID_CONTA_ORCAMENTO.AsInteger <= 0) then
      begin
        cdsDuplicata.Edit;
        cdsDuplicataID_CONTA_ORCAMENTO.AsInteger := qPessoaFORNECEDOR_CONTA_ID.AsInteger;
        cdsDuplicata.Post;
      end;
      if (qPessoaTP_TRANSPORTADORA.AsString = 'S') and (qPessoaTRANSPORTADORA_CONTA_ID.AsInteger > 0) and (cdsDuplicataID_CONTA_ORCAMENTO.AsInteger <= 0) then
      begin
        cdsDuplicata.Edit;
        cdsDuplicataID_CONTA_ORCAMENTO.AsInteger := qPessoaTRANSPORTADORA_CONTA_ID.AsInteger;
        cdsDuplicata.Post;
      end;
      if (qPessoaTP_VENDEDOR.AsString = 'S') and (qPessoaVENDEDOR_CONTA_ID.AsInteger > 0) and (cdsDuplicataID_CONTA_ORCAMENTO.AsInteger <= 0) then
      begin
        cdsDuplicata.Edit;
        cdsDuplicataID_CONTA_ORCAMENTO.AsInteger := qPessoaVENDEDOR_CONTA_ID.AsInteger;
        cdsDuplicata.Post;
      end;
      cdsDuplicata.Next
    end;
    cdsDuplicata.ApplyUpdates(0);
  end;

  if RadioGroup1.ItemIndex = 1 then
  begin
    cdsDuplicata.First;
    while not cdsDuplicata.Eof do
    begin
      prc_Abre_Pessoa(cdsDuplicataID_PESSOA.AsInteger);
      if qPessoa.IsEmpty then
        cdsDuplicata.Next;
      if (qPessoaTP_CLIENTE.AsString = 'S') and (qPessoaCLIENTE_CONTA_ID.AsInteger > 0) and (cdsDuplicataID_CONTA_ORCAMENTO.AsInteger <= 0) then
      begin
        cdsDuplicata.Edit;
        cdsDuplicataID_CONTA_ORCAMENTO.AsInteger := qPessoaCLIENTE_CONTA_ID.AsInteger;
        cdsDuplicata.Post;
      end;
      cdsDuplicata.Next;
    end;
    cdsDuplicata.ApplyUpdates(0);
  end;
  ShowMessage('Duplicatas Atualizadas!');
end;

procedure TfrmAjustaContasOrcDuplicata.prc_Abre_Pessoa(Codigo: Integer);
begin
  qPessoa.Close;
  qPessoa.ParamByName('Codigo').AsInteger := Codigo;
  qPessoa.Open;
end;

end.

