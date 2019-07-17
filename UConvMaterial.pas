unit UConvMaterial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, SMDBGrid, UDMImportarPdx;

type
  TfrmConvMaterial = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    procedure Gravar_Fornecedor_Mat;

  public
    { Public declarations }
    fDMImportarPdx: TDMImportarPdx;

  end;

var
  frmConvMaterial: TfrmConvMaterial;

implementation

uses rsDBUtils, uUtilPadrao, DB;

{$R *.dfm}

procedure TfrmConvMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConvMaterial.BitBtn1Click(Sender: TObject);
begin
  fDMImportarPdx.tMaterial.Close;
  fDMImportarPdx.tMaterial.Open;
  fDMImportarPdx.tMaterialCor.Open;
  fDMImportarPdx.tMaterial.IndexFieldNames := 'Codigo';
end;

procedure TfrmConvMaterial.BitBtn2Click(Sender: TObject);
var
  vCodAux: Integer;
begin
  if not fDMImportarPdx.cdsProduto.Active then
    fDMImportarPdx.cdsProduto.Open;

  fDMImportarPdx.tGrade.Open;
  fDMImportarPdx.tGradeItem.Open;
  vCodAux := 0;
  fDMImportarPdx.tMaterial.First;
  while not fDMImportarPdx.tMaterial.Eof do
  begin
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
      fDMImportarPdx.Gravar_Material;
    vCodAux := fDMImportarPdx.tMaterialCodigo.AsInteger;
    fDMImportarPdx.tMaterial.Next;
  end;

  fDMImportarPdx.cdsProduto.IndexFieldNames := 'ID';
  fDMImportarPdx.cdsProduto.Last;
  vCodAux := fDMImportarPdx.cdsProdutoID.AsInteger;

  ShowMessage('Produtos, geração concluída!');
end;

procedure TfrmConvMaterial.BitBtn3Click(Sender: TObject);
var
  vCodAux: Integer;
begin
  if not fDMImportarPdx.cdsProduto.Active then
    fDMImportarPdx.cdsProduto.Open;

  vCodAux := 0;
  fDMImportarPdx.tMaterial.First;
  while not fDMImportarPdx.tMaterial.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (fDMImportarPdx.tMaterialFornecedor.AsInteger > 0) then
      Gravar_Fornecedor_Mat;
    vCodAux := fDMImportarPdx.tMaterialCodigo.AsInteger;
    fDMImportarPdx.tMaterial.Next;
  end;

  vCodAux := fDMImportarPdx.cdsProdutoID.AsInteger;

  ShowMessage('Materiais, geração concluída!');
end;

procedure TfrmConvMaterial.Gravar_Fornecedor_Mat;
begin
  if fDMImportarPdx.cdsProduto.Locate('ID',fDMImportarPdx.tMaterialCodigo.AsInteger,([LocaseInsensitive])) then
  begin
    if fDMImportarPdx.cdsProdutoID_FORNECEDOR.AsInteger <= 0 then
    begin
      fDMImportarPdx.qCodAnt2.Close;
      fDMImportarPdx.qCodAnt2.ParamByName('COD_ANT').AsInteger := fDMImportarPdx.tMaterialFornecedor.AsInteger;
      fDMImportarPdx.qCodAnt2.Open;
      if fDMImportarPdx.qCodAnt2ID_PESSOA.AsInteger > 0 then
      begin
        fDMImportarPdx.cdsProduto.Edit;
        fDMImportarPdx.cdsProdutoID_FORNECEDOR.AsInteger := fDMImportarPdx.qCodAnt2ID_PESSOA.AsInteger;
        fDMImportarPdx.cdsProduto.Post;
        fDMImportarPdx.cdsProduto.ApplyUpdates(0);
      end;
    end;
  end;
end;

end.
