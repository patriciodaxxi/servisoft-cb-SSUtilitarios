unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ComCtrls, jpeg,
  ToolWin, Menus, Types, UCBase, UCDBXConn, ActnList, ImgList, ShellAPI, ExtCtrls, RLConsts, IniFiles, Midaslib, DBClient,
  GradPnl, SqlExpr, NxCollection;
  
type
  TfMenu = class(TForm)
    btnLocalizar: TNxButton;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    btnImportar_PlanoSped: TNxButton;
    btnImportar_ContasOrcamento: TNxButton;
    NxButton4: TNxButton;
    NxButton5: TNxButton;
    NxButton6: TNxButton;
    NxButton7: TNxButton;
    NxButton8: TNxButton;
    NxButton9: TNxButton;
    NxButton10: TNxButton;
    btnCBenef: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton5Click(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure btnImportar_PlanoSpedClick(Sender: TObject);
    procedure btnImportar_ContasOrcamentoClick(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
    procedure NxButton7Click(Sender: TObject);
    procedure NxButton9Click(Sender: TObject);
    procedure NxButton10Click(Sender: TObject);
    procedure btnCBenefClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  fMenu: TfMenu;

implementation

uses DmdDatabase, UImportarXML, uImportarXML_NFSe, UImportarPdx,
  UImportar_PlanoContas, UCadContaOrc_Txt, UImportarArq, UConversor,
  UimportarRegras, ULeEstoque_Mov, uAjustaConOrcDuplicata, UGeraInventario,
  UGeraCBenef;//, UGerarTalao_Setor;

{$R *.dfm}

procedure TfMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfMenu.ToolButton5Click(Sender: TObject);
begin
  Close;
end;

procedure TfMenu.btnLocalizarClick(Sender: TObject);
begin
  frmImportarXML := TfrmImportarXML.Create(self);
  frmImportarXML.ShowModal;
  FreeAndNil(frmImportarXML);
end;

procedure TfMenu.NxButton1Click(Sender: TObject);
begin
  frmImportarXML_NFSe := TfrmImportarXML_NFSe.Create(self);
  frmImportarXML_NFSe.ShowModal;
  FreeAndNil(frmImportarXML_NFSe);
end;

procedure TfMenu.NxButton2Click(Sender: TObject);
begin
  frmImportarPdx := TfrmImportarPdx.Create(self);
  frmImportarPdx.ShowModal;
  FreeAndNil(frmImportarPdx);
end;

procedure TfMenu.btnImportar_PlanoSpedClick(Sender: TObject);
begin
  frmImportar_PlanoContas := TfrmImportar_PlanoContas.Create(self);
  frmImportar_PlanoContas.ShowModal;
  FreeAndNil(frmImportar_PlanoContas);
end;

procedure TfMenu.btnImportar_ContasOrcamentoClick(Sender: TObject);
begin
  frmCadContaOrc_Txt := TfrmCadContaOrc_Txt.Create(self);
  frmCadContaOrc_Txt.ShowModal;
  FreeAndNil(frmCadContaOrc_Txt);
end;

procedure TfMenu.NxButton3Click(Sender: TObject);
begin
  frmRegrasEmpresa := TfrmRegrasEmpresa.Create(self);
  frmRegrasEmpresa.ShowModal;
  FreeAndNil(frmRegrasEmpresa);
end;

procedure TfMenu.NxButton4Click(Sender: TObject);
begin
{  frmGerarTalao_Setor := TfrmGerarTalao_Setor.Create(self);
  frmGerarTalao_Setor.ShowModal;
  FreeAndNil(frmGerarTalao_Setor);}
end;

procedure TfMenu.NxButton7Click(Sender: TObject);
begin
  frmLeEstoque_Mov := TfrmLeEstoque_Mov.Create(self);
  frmLeEstoque_Mov.ShowModal;
  FreeAndNil(frmLeEstoque_Mov);
end;

procedure TfMenu.NxButton9Click(Sender: TObject);
begin
// Gera conta de or�amento do cadastro de pessoa para as duplicatas a pagar e receber
  frmAjustaContasOrcDuplicata := TfrmAjustaContasOrcDuplicata.Create(Self);
  frmAjustaContasOrcDuplicata.ShowModal;
  FreeAndNil(frmAjustaContasOrcDuplicata);
end;

procedure TfMenu.NxButton10Click(Sender: TObject);
begin
  frmGeraInventario := TfrmGeraInventario.Create(self);
  frmGeraInventario.ShowModal;
  FreeAndNil(frmGeraInventario);
end;

procedure TfMenu.btnCBenefClick(Sender: TObject);
begin
  frmGeraCBenef := TfrmGeraCBenef.Create(self);
  frmGeraCBenef.ShowModal;
  FreeAndNil(frmGeraCBenef);
end;

initialization
  RLConsts.SetVersion(3,72,'B');

end.
