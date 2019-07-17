unit UZeraEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, SMDBGrid, UDMImportarPdx;

type
  TfrmZeraEstoque = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }

    procedure prc_Zerar_Estoque;

  public
    { Public declarations }
    fDMImportarPdx: TDMImportarPdx;

  end;

var
  frmZeraEstoque: TfrmZeraEstoque;

implementation

uses rsDBUtils, uUtilPadrao, DB;

{$R *.dfm}

procedure TfrmZeraEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmZeraEstoque.BitBtn1Click(Sender: TObject);
begin
  fDMImportarPdx.tMaterial.Close;
  fDMImportarPdx.tMaterial.Open;
  fDMImportarPdx.tMaterialCor.Open;
  fDMImportarPdx.tMaterial.IndexFieldNames := 'Codigo';

  fDMImportarPdx.qEstoqueMatMov.Close;
  fDMImportarPdx.qEstoqueMatMov.Open;
  fDMImportarPdx.qEstoqueMatMovGrade.Close;
  fDMImportarPdx.qEstoqueMatMovGrade.Open;
end;

procedure TfrmZeraEstoque.BitBtn2Click(Sender: TObject);
var
  vCodAux: Integer;
begin
  if not fDMImportarPdx.qEstoqueMatMov.Active then
    exit;

  fDMImportarPdx.qEstoqueMatMov.First;
  while not fDMImportarPdx.qEstoqueMatMov.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (StrToFloat(FormatFloat('0.00000',fDMImportarPdx.qEstoqueMatMovqtd2.AsFloat)) > 0) then
      prc_Zerar_Estoque;

    fDMImportarPdx.qEstoqueMatMov.Next;
  end;

  ShowMessage('Produtos, geração concluída!');
end;

procedure TfrmZeraEstoque.prc_Zerar_Estoque;
begin
  

end;

end.
