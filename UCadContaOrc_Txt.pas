unit UCadContaOrc_Txt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ToolEdit, Buttons, UDMCadContaOrc, SqlExpr;

type
  TfrmCadContaOrc_Txt = class(TForm)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    FilenameEdit1: TFilenameEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    vNomeArq : String;
    Txt: TextFile;
    vContador : Integer;
    vID_ContaOrc : Integer;
    fDMCadContaOrc: TDMCadContaOrc;
    function fnc_Arquivo_OK : Boolean;
    procedure prc_Exportar;
    procedure prc_Importar;
    procedure prc_Detalhe;
    procedure prc_Gravar_cdsContaOrc;
    procedure Gravar_Sequencial(Tabela : String ; Codigo : Integer);
  public
    { Public declarations }
  end;

var
  frmCadContaOrc_Txt: TfrmCadContaOrc_Txt;

implementation

uses rsDBUtils, uUtilPadrao, DmdDatabase;

{$R *.dfm}

procedure TfrmCadContaOrc_Txt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMCadContaOrc);
  Action := Cafree;
end;

procedure TfrmCadContaOrc_Txt.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadContaOrc_Txt.BitBtn1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex < 0 then
  begin
    MessageDlg('*** Opção não informada!', mtInformation, [mbOk], 0);
    exit;
  end;
  if not fnc_Arquivo_OK then
    exit;
  if RadioGroup1.ItemIndex = 0 then
    prc_Exportar
  else
  if RadioGroup1.ItemIndex = 1 then
    prc_Importar;
end;

function TfrmCadContaOrc_Txt.fnc_Arquivo_OK: Boolean;
var
  vDir : String;
begin
  Result := False;
  if trim(FilenameEdit1.Text) = '' then
  begin
    MessageDlg('*** Arquivo não informado!', mtInformation, [mbOk], 0);
    exit;
  end;
  vNomeArq := FilenameEdit1.Text;
  if copy(vNomeArq,1,1) = '"' then
    delete(vNomeArq,1,1);
  if copy(vNomeArq,Length(vDir),1) = '"' then
    delete(vNomeArq,Length(vDir),1);
  if RadioGroup1.ItemIndex = 1 then
  begin
    if not FileExists(vNomeArq) then
    begin
      MessageDlg('*** Arquivo não encontrado!', mtInformation, [mbOk], 0);
      exit;
    end;
  end;
  Result := True;
end;

procedure TfrmCadContaOrc_Txt.FormShow(Sender: TObject);
begin
  fDMCadContaOrc := TDMCadContaOrc.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadContaOrc);

end;

procedure TfrmCadContaOrc_Txt.prc_Exportar;
begin
  vContador := 0;
  AssignFile(Txt,vNomeArq);
  Rewrite(Txt);
  try
    fDMCadContaOrc.cdsContaOrc.Close;
    fDMCadContaOrc.sdsContaOrc.CommandText := fDMCadContaOrc.ctCommand;
    fDMCadContaOrc.cdsContaOrc.Open;
    fDMCadContaOrc.cdsContaOrc.First;
    while not fDMCadContaOrc.cdsContaOrc.Eof do
    begin
      vContador := vContador + 1;
      prc_Detalhe;
      fDMCadContaOrc.cdsContaOrc.Next;
    end;
    MessageDlg('*** Registros gerados: ' + IntToStr(vContador), mtConfirmation, [mbOk], 0);
  finally
    CloseFile(Txt);
  end;
end;

procedure TfrmCadContaOrc_Txt.prc_Detalhe;
var
  Texto1 : String;
  i : Integer;
begin
  //ID do registro 
  texto1 := fDMCadContaOrc.cdsContaOrcID.AsString + ';';
  
  //Tipo
  texto1 := Texto1 + fDMCadContaOrc.cdsContaOrcTIPO.AsString + ';';

  //Código
  texto1 := Texto1 + fDMCadContaOrc.cdsContaOrcCODIGO.AsString + ';';

  //Descrição
  texto1 := Texto1 + fDMCadContaOrc.cdsContaOrcDESCRICAO.AsString + ';';

  //Nível
  texto1 := Texto1 + fDMCadContaOrc.cdsContaOrcNIVEL.AsString + ';';

  //Superior
  texto1 := Texto1 + fDMCadContaOrc.cdsContaOrcSUPERIOR.AsString + ';';

  //Inativo
  texto1 := Texto1 + fDMCadContaOrc.cdsContaOrcINATIVO.AsString + ';';

  //Tipo Cálculo
  texto1 := Texto1 + fDMCadContaOrc.cdsContaOrcTIPO_CALCULO.AsString + ';';

  //Tipo Despesa
  texto1 := Texto1 + fDMCadContaOrc.cdsContaOrcTIPO_DESPESA.AsString + ';';

  //Tipo Receita/Despesa
  texto1 := Texto1 + fDMCadContaOrc.cdsContaOrcTIPO_RD.AsString + ';';

  Writeln(Txt,texto1);
end;

procedure TfrmCadContaOrc_Txt.prc_Importar;
begin
  fDMCadContaOrc.cdsContaOrc.Close;
  fDMCadContaOrc.sdsContaOrc.CommandText := fDMCadContaOrc.ctCommand;
  fDMCadContaOrc.cdsContaOrc.Open;
  if not fDMCadContaOrc.cdsContaOrc.IsEmpty then
  begin
    MessageDlg('*** Já existe Conta de Orçamento cadastrada!',mtInformation, [mbOk], 0);
    exit;
  end;

  try
    vID_ContaOrc := 0;
    AssignFile(Txt,FilenameEdit1.FileName);
    Reset(Txt);
    while not Eof(Txt) do
    begin
      ReadLn(Txt,vRegistro_CSV);
      prc_Gravar_cdsContaOrc;
    end;
    fDMCadContaOrc.cdsContaOrc.ApplyUpdates(0);
    if vID_ContaOrc > 0 then
      Gravar_Sequencial('CONTA_ORCAMENTO',vID_ContaOrc);
    MessageDlg('*** Registros importados!',mtConfirmation, [mbOk], 0);
  finally
    CloseFile(Txt);
  end;

end;

procedure TfrmCadContaOrc_Txt.prc_Gravar_cdsContaOrc;
var
  vTexto : String;
begin
  vTexto := fnc_Montar_Campo;
  if trim(vTexto) = '' then
    exit;

  fDMCadContaOrc.prc_Inserir;

  fDMCadContaOrc.cdsContaOrcID.AsString           := vTexto;
  fDMCadContaOrc.cdsContaOrcTIPO.AsString         := fnc_Montar_Campo;
  fDMCadContaOrc.cdsContaOrcCODIGO.AsString       := fnc_Montar_Campo;
  fDMCadContaOrc.cdsContaOrcDESCRICAO.AsString    := fnc_Montar_Campo;
  fDMCadContaOrc.cdsContaOrcNIVEL.AsString        := fnc_Montar_Campo;
  fDMCadContaOrc.cdsContaOrcSUPERIOR.AsString     := fnc_Montar_Campo;
  fDMCadContaOrc.cdsContaOrcINATIVO.AsString      := fnc_Montar_Campo;
  fDMCadContaOrc.cdsContaOrcTIPO_CALCULO.AsString := fnc_Montar_Campo;
  fDMCadContaOrc.cdsContaOrcTIPO_DESPESA.AsString := fnc_Montar_Campo;
  fDMCadContaOrc.cdsContaOrcTIPO_RD.AsString      := fnc_Montar_Campo;
  fDMCadContaOrc.cdsContaOrc.Post;

  if fDMCadContaOrc.cdsContaOrcID.AsInteger > vID_ContaOrc then
    vID_ContaOrc := fDMCadContaOrc.cdsContaOrcID.AsInteger;
end;

procedure TfrmCadContaOrc_Txt.Gravar_Sequencial(Tabela: String;
  Codigo: Integer);
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata  := True;
  sds.GetMetadata := False;

  sds.CommandText := 'UPDATE SEQUENCIAL SET NUMREGISTRO = ' + IntToStr(Codigo)
                   +  ' WHERE TABELA = ' + QuotedStr(Tabela)
                   +  ' AND FILIAL = 0 ';
  sds.ExecSQL;
end;

end.
