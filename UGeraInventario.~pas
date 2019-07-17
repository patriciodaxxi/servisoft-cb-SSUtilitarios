unit UGeraInventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadInventario, StdCtrls, Buttons, Mask, ToolEdit, ComCtrls,
  RxLookup;

type
  TfrmGeraInventario = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Memo1: TMemo;
    BitBtn5: TBitBtn;
    FilenameEdit1: TFilenameEdit;
    Label6: TLabel;
    ProgressBar5: TProgressBar;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    Label4: TLabel;
    lblRegLidos: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadInventario: TDMCadInventario;

    vTxtFile : TextFile;

    procedure prc_Abrir_Produto;

  public
    { Public declarations }
  end;

var
  frmGeraInventario: TfrmGeraInventario;

implementation

uses rsDBUtils, DB, uUtilPadrao;

{$R *.dfm}

procedure TfrmGeraInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmGeraInventario.FormShow(Sender: TObject);
begin
  fDMCadInventario := TDMCadInventario.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadInventario);
  fDMCadInventario.cdsFilial.Close;
  fDMCadInventario.cdsFilial.Open;
  if fDMCadInventario.cdsFilial.RecordCount = 1 then
    RxDBLookupCombo1.KeyValue := fDMCadInventario.cdsFilialID.AsInteger;
end;

procedure TfrmGeraInventario.BitBtn5Click(Sender: TObject);
var
  vTexto : String;
  vTexto2 : String;
  i : Integer;
  iAnt : Integer;
  vFlag : Boolean;
  vMSG : String;
  vTipo_Reg_Inv : String;
  vContador : Integer;
begin
  vMSG := '';
  if trim(FilenameEdit1.Text) = '' then
    vMSG := vMSG + #13 + '*** Arquivo do Inventário não informado!';
  if RxDBLookupCombo1.Text = '' then
    vMSG := vMSG + #13 + '*** Filial não informada!';
  if DateEdit1.Date <= 10 then
    vMSG := vMSG + #13 + '*** Data do Inventário não informada!';
  if trim(vMSG) <> '' then
  begin
    MessageDlg(vMSG, mtError, [mbOk], 0);
    exit;
  end;

  prc_Abrir_Produto;

  vContador     := 0;
  vRegistro_CSV := '';
  vTipo_Reg_Inv := '';

  AssignFile(vTxtFile,FileNameEdit1.FileName);
  Reset(vTxtFile);
  try
    fDMCadInventario.prc_Inserir;
    fDMCadInventario.cdsInventarioDATA.AsDateTime         := DateEdit1.Date;
    fDMCadInventario.cdsInventarioGERADO_ESTOQUE.AsString := 'N';
    fDMCadInventario.cdsInventarioDTUSUARIO.AsDateTime    := Date;
    fDMCadInventario.cdsInventarioHRUSUARIO.AsDateTime    := Now;
    fDMCadInventario.cdsInventarioFILIAL.AsInteger        := RxDBLookupCombo1.KeyValue;

    while not Eof(vTxtFile) do
    begin
      ReadLn(vTxtFile,vRegistro_CSV);
      vContador := vContador + 1;
      if vContador <= 1 then
        continue;

      lblRegLidos.Caption := IntToStr(vContador);
      Refresh;
      lblRegLidos.Refresh;
      vTexto := fnc_Montar_Campo(';','');
      if trim(vTexto) = '' then
        Continue;

      fDMCadInventario.qProd2.close;
      case ComboBox1.ItemIndex of
        0 : fDMCadInventario.qProd2.ParamByName('REFERENCIA').AsString := vTexto;
        1 : fDMCadInventario.qProd2.ParamByName('ID').AsInteger        := StrToInt(vTexto);
      end;
      fDMCadInventario.qProd2.Open;

      if fDMCadInventario.qProd2.IsEmpty then
      begin
        ShowMessage('Produto: ' + vTexto + ', não cadastrado!');
        Continue;
      end;

      if trim(vTipo_Reg_Inv) = '' then
        vTipo_Reg_Inv := fDMCadInventario.qProd2TIPO_REG.AsString;


      fDMCadInventario.prc_Inserir_Itens;

      fDMCadInventario.cdsInventario_ItensID_PRODUTO.AsInteger := fDMCadInventario.qProd2ID.AsInteger;
      fDMCadInventario.cdsInventario_ItensTAMANHO.AsString     := '';
      vTexto  := fnc_Montar_Campo(';','');
      vTexto2 := vTexto;
      vTexto2 := Replace(vTexto2,'.','');
      fDMCadInventario.cdsInventario_ItensQTD_ESTOQUE.AsFloat     := 0;
      fDMCadInventario.cdsInventario_ItensQTD_INVENTARIO.AsString := FormatFloat('0.00',StrToFloat(vTexto2));
      fDMCadInventario.cdsInventario_ItensQTD_AJUSTE.AsFloat      := 0;
      fDMCadInventario.cdsInventario_ItensTIPO_AJUSTE.AsString    := 'N';
      vTexto  := fnc_Montar_Campo(';','');
      vTexto2 := vTexto;
      vTexto2 := Replace(vTexto,'.','');
      if trim(vTexto2) <> '' then
        fDMCadInventario.cdsInventario_ItensVLR_UNITARIO.AsString := FormatFloat('0.00',StrToFloat(vTexto2))
      else
        fDMCadInventario.cdsInventario_ItensVLR_UNITARIO.AsString := FormatFloat('0.00',fDMCadInventario.qProd2PRECO_CUSTO.AsFloat);
      fDMCadInventario.cdsInventario_ItensPERC_ICMS.AsFloat       := 0;
      fDMCadInventario.cdsInventario_ItensPERC_IPI.AsFloat        := 0;
      fDMCadInventario.cdsInventario_ItensID_MOVESTOQUE.Clear;
      fDMCadInventario.cdsInventario_ItensID_COR.AsInteger        := 0;
      fDMCadInventario.cdsInventario.Post;
    end;
    fDMCadInventario.cdsInventario_Itens.ApplyUpdates(0);
    fDMCadInventario.cdsInventario.Edit;
    fDMCadInventario.cdsInventarioTIPO_REG.AsString := vTipo_Reg_Inv;
    fDMCadInventario.cdsInventario.Post;
    fDMCadInventario.cdsInventario.ApplyUpdates(0);
    
  finally
    CloseFile(vTxtFile);
    FreeAndNil(fDMCadInventario);
  end;
  if vContador > 0 then
    vContador := vContador - 1;
  MessageDlg('*** Gerado ' + IntToStr(vContador) + ' Produtos!', mtConfirmation, [mbOk], 0);
end;

procedure TfrmGeraInventario.prc_Abrir_Produto;
var
  vComando : String;
begin
  fDMCadInventario.qProd2.Close;
  vComando := 'SELECT NOME, REFERENCIA, UNIDADE, ID, PRECO_CUSTO, TIPO_REG FROM PRODUTO ';
  case ComboBox1.ItemIndex of
    0 : vComando := vComando + 'WHERE REFERENCIA = :REFERENCIA ';
    1 : vComando := vComando + 'WHERE ID = :ID ';
  end;
  fDMCadInventario.qProd2.SQL.Text := vComando;
end;

end.
