unit UimportarRegras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask,
  ToolEdit, ExtCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr, Buttons, RxLookup, Grids, DBGrids;

type
  TfrmRegrasEmpresa = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    FilenameEdit1: TFilenameEdit;
    Label4: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    rxOperacao: TRxDBLookupCombo;
    sdsOperacao: TSQLDataSet;
    dspOperacao: TDataSetProvider;
    cdsOperacao: TClientDataSet;
    dsOperacao: TDataSource;
    sdsOperacaoID: TIntegerField;
    sdsOperacaoNOME: TStringField;
    cdsOperacaoID: TIntegerField;
    cdsOperacaoNOME: TStringField;
    DBGrid1: TDBGrid;
    dsImportaRegras: TDataSource;
    cdsImportaRegras: TClientDataSet;
    cdsImportaRegrasEmitente: TStringField;
    cdsImportaRegrasComprador: TStringField;
    cdsImportaRegrasDentro_Fora: TStringField;
    cdsImportaRegrasTipo_Contribuinte: TStringField;
    cdsImportaRegrasOrigem: TStringField;
    cdsImportaRegrasFinalidade: TStringField;
    cdsImportaRegrasCST: TStringField;
    cdsImportaRegrasZona_Franca: TStringField;
    cdsImportaRegrasCFOP: TIntegerField;
    qTab_CFOP: TSQLQuery;
    qTab_CFOPID: TIntegerField;
    sdsRegra_Empresa: TSQLDataSet;
    sdsRegra_Empresa_Itens: TSQLDataSet;
    dspRegra_Empresa: TDataSetProvider;
    cdsRegra_Empresa: TClientDataSet;
    cdsRegra_Empresa_Itens: TClientDataSet;
    dsRegra_Empresa: TDataSource;
    dsRegra_Empresa_Itens: TDataSource;
    sdsRegra_EmpresaID: TIntegerField;
    sdsRegra_EmpresaID_OPERACAO: TIntegerField;
    sdsRegra_EmpresaTIPO_EMPRESA: TStringField;
    sdsRegra_EmpresaTIPO_CLIENTE: TStringField;
    sdsRegra_EmpresaUF_CLIENTE: TStringField;
    sdsRegra_EmpresaID_CFOP: TIntegerField;
    sdsRegra_EmpresaFINALIDADE_COMPRADOR: TStringField;
    cdsRegra_EmpresaID: TIntegerField;
    cdsRegra_EmpresaID_OPERACAO: TIntegerField;
    cdsRegra_EmpresaTIPO_EMPRESA: TStringField;
    cdsRegra_EmpresaTIPO_CLIENTE: TStringField;
    cdsRegra_EmpresaUF_CLIENTE: TStringField;
    cdsRegra_EmpresaID_CFOP: TIntegerField;
    cdsRegra_EmpresaFINALIDADE_COMPRADOR: TStringField;
    dsMaster: TDataSource;
    cdsRegra_EmpresasdsRegra_Empresa_Itens: TDataSetField;
    sdsRegra_Empresa_ItensID: TIntegerField;
    sdsRegra_Empresa_ItensITEM: TIntegerField;
    sdsRegra_Empresa_ItensFINALIDADE: TStringField;
    sdsRegra_Empresa_ItensID_CFOP: TIntegerField;
    sdsRegra_Empresa_ItensPESSOA_CLIENTE: TStringField;
    sdsRegra_Empresa_ItensZONA_FRANCA: TStringField;
    sdsRegra_Empresa_ItensSUBST_TRIBUTARIA: TStringField;
    sdsRegra_Empresa_ItensTIPO_PRODUTO: TStringField;
    cdsRegra_Empresa_ItensID: TIntegerField;
    cdsRegra_Empresa_ItensITEM: TIntegerField;
    cdsRegra_Empresa_ItensFINALIDADE: TStringField;
    cdsRegra_Empresa_ItensID_CFOP: TIntegerField;
    cdsRegra_Empresa_ItensPESSOA_CLIENTE: TStringField;
    cdsRegra_Empresa_ItensZONA_FRANCA: TStringField;
    cdsRegra_Empresa_ItensSUBST_TRIBUTARIA: TStringField;
    cdsRegra_Empresa_ItensTIPO_PRODUTO: TStringField;
    qRegra_Empresa: TSQLQuery;
    qRegra_EmpresaID: TIntegerField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    Txt: TextFile;
    vRegistro: string;
    vArquivo: string;
    vID: Integer;
    procedure prc_Inserir_Regra(id_Operacao: Integer);
    procedure prc_Localiza_CFOP(CFOP: Integer);
    procedure prc_Localiza_Regra_Itens;
    function fnc_Montar_Campo(vSeparador: string): string;
    function fnc_Localiza_Regra(ID_Operacao: Integer; Tipo_Empresa: string; Tipo_Cliente: string; UF_Cliente: string; Finalidade: string): Integer;


    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRegrasEmpresa: TfrmRegrasEmpresa;

implementation

uses
  DmdDatabase;

{$R *.dfm}

procedure TfrmRegrasEmpresa.BitBtn1Click(Sender: TObject);
var
  vAux, i, i2: Integer;
  vTexto1: string;
  vGravar: Boolean;
  vContador: Integer;
  vOperacao: Integer;
  vCampo: string;
  sds: TSQLDataSet;
  vUltimoRegistro: Integer;
begin
  if trim(FilenameEdit1.Text) = '' then
  begin
    MessageDlg('*** Endereço do arquivo não informado!', mtError, [mbOk], 0);
    exit;
  end;
  try
    sds := TSQLDataSet.Create(nil);
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata := True;
    sds.GetMetadata := False;
    sds.Close;
    sds.CommandText := 'SELECT COALESCE(MAX(ID), 0) AS CODIGO FROM REGRA_EMPRESA';
    sds.Open;
    vUltimoRegistro := sds.FieldByName('CODIGO').AsInteger;

    sds.Close;
    sds.NoMetadata := True;
    sds.GetMetadata := False;
    sds.CommandText := 'UPDATE SEQUENCIAL SET NUMREGISTRO =' + IntToStr(vUltimoRegistro) + ' WHERE TABELA = ' + QuotedStr('REGRA_EMPRESA');
    sds.ExecSQL();
  finally
    FreeAndNil(sds);
  end; 

  vOperacao := rxOperacao.KeyValue;
  try
    vContador := 0;
    vArquivo := FilenameEdit1.Text;
    AssignFile(Txt, vArquivo);
    Reset(Txt);
    cdsImportaRegras.EmptyDataSet;
    cdsImportaRegras.Close;
    cdsImportaRegras.Open;
    while not Eof(Txt) do
    begin
      ReadLn(Txt, vRegistro);
      vContador := vContador + 1;
      Label2.Caption := IntToStr(vContador);
      Label2.Refresh;
      cdsImportaRegras.Insert;

      vCampo := fnc_Montar_Campo(Edit1.Text);
      cdsImportaRegrasEmitente.AsString := Copy(vCampo, 1, 1);

      vCampo := fnc_Montar_Campo(Edit1.Text);
      cdsImportaRegrasComprador.AsString := Copy(vCampo, 1, 1);

      vCampo := fnc_Montar_Campo(Edit1.Text);
      cdsImportaRegrasDentro_Fora.AsString := Copy(vCampo, 1, 1);

      vCampo := fnc_Montar_Campo(Edit1.Text);
      cdsImportaRegrasTipo_Contribuinte.AsString := Copy(vCampo, 1, 1);

      vCampo := fnc_Montar_Campo(Edit1.Text);
      cdsImportaRegrasOrigem.AsString := Copy(vCampo, 1, 1);

      vCampo := fnc_Montar_Campo(Edit1.Text);
      cdsImportaRegrasFinalidade.AsString := Copy(vCampo, 1, 1);

      vCampo := fnc_Montar_Campo(Edit1.Text);
      cdsImportaRegrasCST.AsString := Copy(vCampo, 1, 1);

      vCampo := fnc_Montar_Campo(Edit1.Text);
      cdsImportaRegrasZona_Franca.AsString := Copy(vCampo, 1, 1);

      vCampo := fnc_Montar_Campo(Edit1.Text);
      cdsImportaRegrasCFOP.AsInteger := StrToInt(Copy(vCampo, 1, 4));

      cdsImportaRegras.Post;
    end;
  finally
    CloseFile(Txt);
  end;
  while not cdsImportaRegras.Eof do
  begin
    vID := 0;
    vID := fnc_Localiza_Regra(vOperacao, cdsImportaRegrasEmitente.AsString, cdsImportaRegrasComprador.AsString, cdsImportaRegrasDentro_Fora.AsString, cdsImportaRegrasFinalidade.AsString);
    prc_Inserir_Regra(vOperacao);
    cdsImportaRegras.Next;
  end;

  ShowMessage('Geração concluída!');

end;

function TfrmRegrasEmpresa.fnc_Montar_Campo(vSeparador: string): string;
var
  i: Integer;
  vTexto: string;
begin
  Result := '';
  i := pos(vSeparador, vRegistro);
  if i = 0 then
    i := Length(vRegistro) + 1;
  Result := Copy(vRegistro, 1, i - 1);
  vTexto := Result;
  Delete(vRegistro, 1, i);

end;

procedure TfrmRegrasEmpresa.FormShow(Sender: TObject);
begin
  cdsOperacao.Close;
  cdsOperacao.Open;
end;

procedure TfrmRegrasEmpresa.prc_Inserir_Regra(id_Operacao: Integer);
var
  vAux: Integer;
begin
  if not cdsRegra_Empresa.Active then
    cdsRegra_Empresa.Open;
  if vID = 0 then
  begin
    cdsRegra_Empresa.Insert;
    vAux := dmDatabase.ProximaSequencia('REGRA_EMPRESA', 0);
    cdsRegra_EmpresaID.AsInteger := vAux;
    vID := vAux;
    cdsRegra_EmpresaID_OPERACAO.AsInteger := id_Operacao;
    cdsRegra_EmpresaTIPO_EMPRESA.AsString := cdsImportaRegrasEmitente.AsString;
    cdsRegra_EmpresaTIPO_CLIENTE.AsString := cdsImportaRegrasComprador.AsString;
    cdsRegra_EmpresaUF_CLIENTE.AsString := cdsImportaRegrasDentro_Fora.AsString;
    cdsRegra_EmpresaFINALIDADE_COMPRADOR.AsString := cdsImportaRegrasFinalidade.AsString;
    cdsRegra_Empresa.Post;
  end;
  cdsRegra_Empresa.Locate('ID', vID, ([Locaseinsensitive]));
  prc_Localiza_CFOP(cdsImportaRegrasCFOP.AsInteger);
  prc_Localiza_Regra_Itens;
  cdsRegra_Empresa.ApplyUpdates(0);
end;

procedure TfrmRegrasEmpresa.prc_Localiza_CFOP(CFOP: Integer);
begin
  qTab_CFOP.Close;
  qTab_CFOP.ParamByName('CFOP').AsInteger := CFOP;
  qTab_CFOP.Open;
end;

procedure TfrmRegrasEmpresa.BitBtn2Click(Sender: TObject);
begin
  cdsRegra_Empresa_Itens.ApplyUpdates(0);
  cdsRegra_Empresa.ApplyUpdates(0);
end;

procedure TfrmRegrasEmpresa.BitBtn3Click(Sender: TObject);
begin
  cdsRegra_Empresa.Open;
end;

function TfrmRegrasEmpresa.fnc_Localiza_Regra(ID_Operacao: Integer; Tipo_Empresa, Tipo_Cliente, UF_Cliente, Finalidade: string): Integer;
begin
  qRegra_Empresa.Close;
  qRegra_Empresa.ParamByName('ID_OPERACAO').AsInteger := ID_Operacao;
  qRegra_Empresa.ParamByName('TIPO_EMPRESA').AsString := Tipo_Empresa;
  qRegra_Empresa.ParamByName('TIPO_CLIENTE').AsString := Tipo_Cliente;
  qRegra_Empresa.ParamByName('UF_CLIENTE').AsString := UF_Cliente;
  qRegra_Empresa.ParamByName('FINALIDADE_COMPRADOR').AsString := Finalidade;
  qRegra_Empresa.Open;
  Result := qRegra_EmpresaID.AsInteger;
end;

procedure TfrmRegrasEmpresa.prc_Localiza_Regra_Itens;
var
  vItemAux: Integer;
  vTipo_Produto: string;
  vTipo_Contribuinte: string;
begin
  if cdsImportaRegrasOrigem.AsString = 'P' then
    vTipo_Produto := 'V'
  else
    vTipo_Produto := cdsImportaRegrasOrigem.AsString;
  if cdsImportaRegrasTipo_Contribuinte.AsString = 'C' then
    vTipo_Contribuinte := 'J'
  else
    vTipo_Contribuinte := 'F';

  cdsRegra_Empresa_Itens.Last;
  vItemAux := cdsRegra_Empresa_ItensITEM.AsInteger;
  cdsRegra_Empresa_Itens.Insert;
  cdsRegra_Empresa_ItensID.AsInteger := cdsRegra_EmpresaID.AsInteger;
  cdsRegra_Empresa_ItensITEM.AsInteger := vItemAux + 1;
  cdsRegra_Empresa_ItensTIPO_PRODUTO.AsString := vTipo_Produto;
  cdsRegra_Empresa_ItensPESSOA_CLIENTE.AsString := vTipo_Contribuinte;
  cdsRegra_Empresa_ItensID_CFOP.AsInteger := qTab_CFOPID.AsInteger;
  cdsRegra_Empresa_ItensZONA_FRANCA.AsString := cdsImportaRegrasZona_Franca.AsString;
  cdsRegra_Empresa_ItensSUBST_TRIBUTARIA.AsString := cdsImportaRegrasCST.AsString;
  cdsRegra_Empresa_Itens.Post;
end;

end.

