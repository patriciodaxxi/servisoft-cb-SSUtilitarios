unit UComparaNCM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids,
  NxCollection, ExtCtrls, StdCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr, Buttons, SMDBGrid;

type
  TfrmComparaNCM = class(TForm)
    Panel1: TPanel;
    NxPanel2: TNxPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    cdsProdutoID: TIntegerField;
    cdsProdutoNOME: TStringField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNCM: TStringField;
    dsProduto: TDataSource;
    sdsIBPT: TSQLDataSet;
    dspIBPT: TDataSetProvider;
    cdsIBPT: TClientDataSet;
    dsIBPT: TDataSource;
    BitBtn2: TBitBtn;
    SMDBGrid2: TSMDBGrid;
    NxPanel1: TNxPanel;
    SMDBGrid1: TSMDBGrid;
    cdsIBPTID: TIntegerField;
    cdsIBPTCODIGO: TStringField;
    cdsIBPTNOME: TStringField;
    cdsIBPTDT_INICIO: TDateField;
    cdsIBPTDT_FINAL: TDateField;
    CheckBox1: TCheckBox;
    sdsGravaProduto: TSQLDataSet;
    dspGravaProduto: TDataSetProvider;
    cdsGravaProduto: TClientDataSet;
    dsGravaProduto: TDataSource;
    sdsGravaProdutoID: TIntegerField;
    sdsGravaProdutoID_NCM: TIntegerField;
    cdsGravaProdutoID: TIntegerField;
    cdsGravaProdutoID_NCM: TIntegerField;
    qTab_NCM: TSQLQuery;
    qTab_NCMID: TIntegerField;
    sdsNCM: TSQLDataSet;
    dspNCM: TDataSetProvider;
    cdsNCM: TClientDataSet;
    dsNCM: TDataSource;
    cdsNCMID: TIntegerField;
    cdsNCMNCM: TStringField;
    cdsNCMNOME: TStringField;
    cdsNCMPERC_RED_STRIB: TFloatField;
    cdsNCMGERAR_ST: TStringField;
    cdsNCMINATIVO: TStringField;
    cdsNCMTIPO_AS: TStringField;
    cdsNCMCOD_PRINCIPAL: TStringField;
    cdsNCMUSAR_MVA_UF_DESTINO: TStringField;
    cdsNCMCOD_CEST: TStringField;
    cdsNCMUNIDADE_TRIB: TStringField;
    Edit2: TEdit;
    Label2: TLabel;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    ctProduto: string;
    ctIBPT: string;
    procedure prc_Abre_Produto(ID: Integer);
    procedure prc_Busca_NCM(NCM: string);
    procedure prc_Abre_NCM;
    procedure prc_Gravar_NCM(NCM : String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComparaNCM: TfrmComparaNCM;

implementation

uses
  DmdDatabase;

{$R *.dfm}

procedure TfrmComparaNCM.BitBtn1Click(Sender: TObject);
begin
  sdsProduto.CommandText := ctProduto;
  cdsProduto.Close;
  sdsProduto.ParamByName('NOME').AsString := '%' + Edit1.Text + '%';
  cdsProduto.Open;

  sdsIBPT.CommandText := ctIBPT;
  if CheckBox1.Checked then
    sdsIBPT.CommandText := sdsIBPT.CommandText + ' and current_date between dt_inicio and dt_final';
  cdsIBPT.Close;
  sdsIBPT.ParamByName('NOME').AsString := '%' + Edit1.Text + '%';
  cdsIBPT.Open;
end;

procedure TfrmComparaNCM.FormShow(Sender: TObject);
begin
  ctIBPT := sdsIBPT.CommandText;
  ctProduto := sdsProduto.CommandText;
  prc_Abre_NCM;
end;

procedure TfrmComparaNCM.BitBtn2Click(Sender: TObject);
begin
  prc_Busca_NCM(cdsIBPTCODIGO.AsString);
  if qTab_NCM.IsEmpty then
  begin
    if MessageDlg('NCM não localizado, Deseja Cadastrar?',mtInformation,[mbYes,mbNo],0) = mrNo then
      exit;
    prc_Gravar_NCM(cdsIBPTCODIGO.AsString);
  end;
  cdsProduto.First;
  while not cdsProduto.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      prc_Abre_Produto(cdsProdutoID.AsInteger);
      if not (cdsGravaProduto.IsEmpty) then
      begin
        prc_Busca_NCM(cdsIBPTCODIGO.AsString);
        if not (qTab_NCM.IsEmpty) then
        begin
          cdsGravaProduto.Edit;
          cdsGravaProdutoID_NCM.AsInteger := qTab_NCMID.AsInteger;
          cdsGravaProduto.Post;
          cdsGravaProduto.ApplyUpdates(0);
        end;
      end;
    end;
    cdsProduto.Next;
  end;

end;

procedure TfrmComparaNCM.prc_Abre_Produto(ID: Integer);
begin
  cdsGravaProduto.Close;
  sdsGravaProduto.ParamByName('ID').AsInteger := ID;
  cdsGravaProduto.Open;
end;

procedure TfrmComparaNCM.prc_Busca_NCM(NCM: string);
begin
  qTab_NCM.Close;
  qTab_NCM.ParamByName('NCM').AsString := NCM;
  qTab_NCM.Open;
end;

procedure TfrmComparaNCM.prc_Abre_NCM;
begin
  cdsNCM.Close;
  cdsNCM.Open;
end;


procedure TfrmComparaNCM.prc_Gravar_NCM(NCM : String);
var
  vAux : Integer;
begin
  prc_Abre_NCM;
  vAux := dmDatabase.ProximaSequencia('TAB_NCM',0);
  cdsNCM.Insert;
  cdsNCMID.AsInteger := vAux;
  cdsNCMNCM.AsString := NCM;
  cdsNCM.Post;
  cdsNCM.ApplyUpdates(0);
end;

procedure TfrmComparaNCM.BitBtn3Click(Sender: TObject);
begin
  cdsIBPT.Close;
  sdsIBPT.CommandText := ctIBPT;
  sdsIBPT.CommandText := sdsIBPT.CommandText + ' AND CODIGO LIKE :CODIGO';
  sdsIBPT.ParamByName('CODIGO').AsString := '%' + Edit2.Text + '%';
  sdsIBPT.ParamByName('NOME').AsString := '%';
  cdsIBPT.Open;
end;

end.

