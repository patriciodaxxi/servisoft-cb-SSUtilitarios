unit UImportar_PlanoContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask,
  ToolEdit, Buttons, FMTBcd, DB, DBClient, Provider, SqlExpr, UDMCadPlano_Contas,
  uDMCadPlano_Contabil;

type
  TfrmImportar_PlanoContas = class(TForm)
    Label1: TLabel;
    FilenameEdit1: TFilenameEdit;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    qPlano: TSQLQuery;
    qPlanoID: TIntegerField;
    qPlanoCODIGO: TStringField;
    qPlanoNOME: TStringField;
    qPlanoDT_CADASTRO: TDateField;
    qPlanoNIVEL: TIntegerField;
    qPlanoTIPO_REG: TStringField;
    qPlanoCOD_NATUREZA: TIntegerField;
    qPlanoINATIVO: TStringField;
    qPlanoSUPERIOR: TIntegerField;
    BitBtn2: TBitBtn;
    qPlano_Contabil: TSQLQuery;
    qPlano_ContabilID: TIntegerField;
    qPlano_ContabilCODIGO: TStringField;
    qPlano_ContabilNOME: TStringField;
    qPlano_ContabilDT_CADASTRO: TDateField;
    qPlano_ContabilNIVEL: TIntegerField;
    qPlano_ContabilTIPO_REG: TStringField;
    qPlano_ContabilCOD_NATUREZA: TIntegerField;
    qPlano_ContabilINATIVO: TStringField;
    qPlano_ContabilSUPERIOR: TIntegerField;
    qPlano_ContabilDT_INICIO_VALIDADE: TDateField;
    qPlano_ContabilDT_FINAL_VALIDADE: TDateField;
    qPlano_ContabilCODIGO_REDUZIDO: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadPlano_Contas: TDMCadPlano_Contas;
    fDMCadPlano_Contabil: TDMCadPlano_Contabil;
    Txt: TextFile;
    vRegistro: string;
    vArquivo: string;
    function fnc_Montar_Campo: string;
    function fnc_Conta_Nivel(const Texto: string; Caracter: string): Integer;
    function fnc_Nivel_Superior(Conta: string; Nivel: Integer): Integer;
  public
    { Public declarations }
  end;

var
  frmImportar_PlanoContas: TfrmImportar_PlanoContas;

implementation

uses
  DmdDatabase, uUtilPadrao, StrUtils;

{$R *.dfm}

procedure TfrmImportar_PlanoContas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmImportar_PlanoContas.BitBtn1Click(Sender: TObject);
var
  vTexto1: string;
  vContador: Integer;
  vCodigo: string;
  vSuperior: Integer;
  vNome: string;
begin
  if trim(FilenameEdit1.Text) = '' then
  begin
    MessageDlg('*** Endereço do arquivo não informado!', mtError, [mbOk], 0);
    exit;
  end;
  fDMCadPlano_Contas.cdsPlano_Contas.Close;
  fDMCadPlano_Contas.cdsPlano_Contas.Open;
  if not fDMCadPlano_Contas.cdsPlano_Contas.IsEmpty then
  begin
    MessageDlg('*** Plano de contas já gerado!', mtError, [mbOk], 0);
    exit;
  end;
  vContador := 0;
  try
    vArquivo := FilenameEdit1.Text;
    AssignFile(Txt, vArquivo);
    Reset(Txt);
    while not Eof(Txt) do
    begin
      ReadLn(Txt, vRegistro_CSV);

      if (copy(vRegistro_CSV, 1, 6) <> 'versao') then
      begin
        vContador := vContador + 1;
        Label3.Caption := IntToStr(vContador);
        Label3.Refresh;

        vCodigo := fnc_Montar_Campo;
        vNome := fnc_Montar_Campo;
        fDMCadPlano_Contas.prc_Inserir;
        fDMCadPlano_Contas.cdsPlano_ContasCODIGO.AsString := vCodigo;
        fDMCadPlano_Contas.cdsPlano_ContasNOME.AsString := vNome;
        fDMCadPlano_Contas.cdsPlano_ContasDT_CADASTRO.AsDateTime := Date;
        vTexto1 := fnc_Montar_Campo;
        if trim(vTexto1) <> '' then
        begin
          vTexto1 := copy(vTexto1, 1, 2) + '/' + copy(vTexto1, 3, 2) + '/' + copy(vTexto1, 5, 4);
          fDMCadPlano_Contas.cdsPlano_ContasDT_INICIO_VALIDADE.AsString := vTexto1;
        end;
        vTexto1 := fnc_Montar_Campo;
        if trim(vTexto1) <> '' then
        begin
          vTexto1 := copy(vTexto1, 1, 2) + '/' + copy(vTexto1, 3, 2) + '/' + copy(vTexto1, 5, 4);
          fDMCadPlano_Contas.cdsPlano_ContasDT_FINAL_VALIDADE.AsString := vTexto1;
        end;
        vTexto1 := fnc_Montar_Campo;
        fDMCadPlano_Contas.cdsPlano_ContasTIPO_REG.AsString := fnc_Montar_Campo;
        vTexto1 := fnc_Montar_Campo;
        if trim(vTexto1) <> '' then
        begin
          qPlano.Close;
          qPlano.ParamByName('CODIGO').AsString := vTexto1;
          qPlano.Open;
          fDMCadPlano_Contas.cdsPlano_ContasSUPERIOR.AsInteger := qPlanoID.AsInteger;
        end;
        fDMCadPlano_Contas.cdsPlano_ContasNIVEL.AsString := fnc_Montar_Campo;
        fDMCadPlano_Contas.cdsPlano_ContasCOD_NATUREZA.AsString := fnc_Montar_Campo;
        fDMCadPlano_Contas.cdsPlano_ContasINATIVO.AsString := 'N';
        fDMCadPlano_Contas.cdsPlano_Contas.Post;
        fDMCadPlano_Contas.cdsPlano_Contas.ApplyUpdates(0);
      end;
    end;
  finally
    CloseFile(Txt);
  end;

  ShowMessage('Geração concluída!');
end;

function TfrmImportar_PlanoContas.fnc_Montar_Campo: string;
var
  i: Integer;
  vTexto: string;
begin
  Result := '';
  i := pos(';', vRegistro_CSV);
  if i = 0 then
    i := Length(vRegistro_CSV) + 1;
  Result := Copy(vRegistro_CSV, 1, i - 1);
  vTexto := Result;
  Delete(vRegistro_CSV, 1, i);

end;

procedure TfrmImportar_PlanoContas.FormShow(Sender: TObject);
begin
  fDMCadPlano_Contas := TDMCadPlano_Contas.Create(Self);
  fDMCadPlano_Contabil := TDMCadPlano_Contabil.Create(Self);
end;

procedure TfrmImportar_PlanoContas.BitBtn2Click(Sender: TObject);
var
  vTexto1: string;
  vContador: Integer;
  vCodigo: string;
  vSuperior: Integer;
  vCod_Reduzido: Integer;
  vNome: string;
  vNivel: Integer;
  vNatureza: string;
  vNivelSuperior: Integer;
begin
  if trim(FilenameEdit1.Text) = '' then
  begin
    MessageDlg('*** Endereço do arquivo não informado!', mtError, [mbOk], 0);
    exit;
  end;
  fDMCadPlano_Contabil.cdsPlano_Contabil.Close;
  fDMCadPlano_Contabil.cdsPlano_Contabil.Open;
  if not fDMCadPlano_Contabil.cdsPlano_Contabil.IsEmpty then
  begin
    MessageDlg('*** Plano de contabil já gerado!', mtError, [mbOk], 0);
    exit;
  end;
  vContador := 0;
  try
    vArquivo := FilenameEdit1.Text;
    AssignFile(Txt, vArquivo);
    Reset(Txt);
    while not Eof(Txt) do
    begin
      ReadLn(Txt, vRegistro_CSV);

      if (copy(vRegistro_CSV, 1, 5) <> 'CONTA') then
      begin
        vContador := vContador + 1;
        Label3.Caption := IntToStr(vContador);
        Label3.Refresh;
        vCodigo := fnc_Montar_Campo;
        vNivel := (fnc_Conta_Nivel(vCodigo, '.') + 1);
        vNome := fnc_Montar_Campo;
        vCod_Reduzido := StrToInt(fnc_Montar_Campo);
        fDMCadPlano_Contabil.prc_Inserir;
        fDMCadPlano_Contabil.cdsPlano_ContabilCODIGO.AsString := vCodigo;
        fDMCadPlano_Contabil.cdsPlano_ContabilNOME.AsString := vNome;
        fDMCadPlano_Contabil.cdsPlano_ContabilDT_CADASTRO.AsDateTime := Date;
        fDMCadPlano_Contabil.cdsPlano_ContabilCODIGO_REDUZIDO.AsInteger := vCod_Reduzido;
        fDMCadPlano_Contabil.cdsPlano_ContabilTIPO_REG.AsString := fnc_Montar_Campo;
        fDMCadPlano_Contabil.cdsPlano_ContabilNIVEL.AsInteger := vNivel;
        vNatureza := Copy(vCodigo, 1, 1);
        if vNatureza = '1' then
          fDMCadPlano_Contabil.cdsPlano_ContabilCOD_NATUREZA.AsInteger := 1
        else if vNatureza = '2' then
          fDMCadPlano_Contabil.cdsPlano_ContabilCOD_NATUREZA.AsInteger := 2
        else if vNatureza = '3' then
          fDMCadPlano_Contabil.cdsPlano_ContabilCOD_NATUREZA.AsInteger := 4
        else if vNatureza = '4' then
          fDMCadPlano_Contabil.cdsPlano_ContabilCOD_NATUREZA.AsInteger := 4;
        vNivelSuperior := fnc_Nivel_Superior(vCodigo, vNivel);
        if vNivelSuperior > 0 then
          fDMCadPlano_Contabil.cdsPlano_ContabilSUPERIOR.AsInteger := vNivelSuperior;
        fDMCadPlano_Contabil.cdsPlano_ContabilINATIVO.AsString := 'N';
        fDMCadPlano_Contabil.cdsPlano_Contabil.Post;
        fDMCadPlano_Contabil.cdsPlano_Contabil.ApplyUpdates(0);
      end;
    end;
  finally
    CloseFile(Txt);
  end;

  ShowMessage('Geração concluída!');

end;

function TfrmImportar_PlanoContas.fnc_Conta_Nivel(const Texto: string; Caracter: string): Integer;
var
  i, ivTot: Integer;
begin
  ivTot := 0;
  for i := 1 to Length(Texto) do
  begin
    if ((Texto[i]) = (Caracter)) then
      ivTot := ivTot + 1;
  end;
  Result := ivTot;
end;

function TfrmImportar_PlanoContas.fnc_Nivel_Superior(Conta: string; Nivel: Integer): Integer;
var
  i: Integer;
begin
  Conta := ReverseString(Conta);

  i := pos('.', Conta);
  Delete(Conta, 1, i);
  Conta := ReverseString(Conta);
  qPlano_Contabil.Close;
  qPlano_Contabil.Open;
  qPlano_Contabil.Locate('CODIGO', Conta, [loCaseInsensitive]);
  if Nivel > 1 then
    Result := qPlano_ContabilID.AsInteger;
end;

end.

