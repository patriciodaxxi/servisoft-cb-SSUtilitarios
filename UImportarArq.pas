unit UImportarArq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask, ToolEdit, Buttons,
  FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TfrmImportarArq = class(TForm)
    Label1: TLabel;
    FilenameEdit1: TFilenameEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    sdsPessoa: TSQLDataSet;
    sdsPessoaCODIGO: TIntegerField;
    sdsPessoaNOME: TStringField;
    sdsPessoaFANTASIA: TStringField;
    sdsPessoaENDERECO: TStringField;
    sdsPessoaCOMPLEMENTO_END: TStringField;
    sdsPessoaNUM_END: TStringField;
    sdsPessoaBAIRRO: TStringField;
    sdsPessoaID_CIDADE: TIntegerField;
    sdsPessoaCIDADE: TStringField;
    sdsPessoaUF: TStringField;
    sdsPessoaCEP: TStringField;
    sdsPessoaDDDFONE1: TIntegerField;
    sdsPessoaTELEFONE1: TStringField;
    sdsPessoaDDDFONE2: TIntegerField;
    sdsPessoaTELEFONE2: TStringField;
    sdsPessoaDDDFAX: TIntegerField;
    sdsPessoaFAX: TStringField;
    sdsPessoaPESSOA: TStringField;
    sdsPessoaCNPJ_CPF: TStringField;
    sdsPessoaINSCR_EST: TStringField;
    sdsPessoaENDERECO_ENT: TStringField;
    sdsPessoaCOMPLEMENTO_END_ENT: TStringField;
    sdsPessoaNUM_END_ENT: TStringField;
    sdsPessoaBAIRRO_ENT: TStringField;
    sdsPessoaID_CIDADE_ENT: TIntegerField;
    sdsPessoaCIDADE_ENT: TStringField;
    sdsPessoaCEP_ENT: TStringField;
    sdsPessoaUF_ENT: TStringField;
    sdsPessoaPESSOA_ENT: TStringField;
    sdsPessoaCNPJ_CPF_ENT: TStringField;
    sdsPessoaINSC_EST_ENT: TStringField;
    sdsPessoaENDERECO_PGTO: TStringField;
    sdsPessoaCOMPLEMENTO_END_PGTO: TStringField;
    sdsPessoaNUM_END_PGTO: TStringField;
    sdsPessoaBAIRRO_PGTO: TStringField;
    sdsPessoaID_CIDADE_PGTO: TIntegerField;
    sdsPessoaCIDADE_PGTO: TStringField;
    sdsPessoaCEP_PGTO: TStringField;
    sdsPessoaUF_PGTO: TStringField;
    sdsPessoaUSUARIO: TStringField;
    sdsPessoaDTCADASTRO: TDateField;
    sdsPessoaHRCADASTRO: TTimeField;
    sdsPessoaID_VENDEDOR: TIntegerField;
    sdsPessoaOBS: TMemoField;
    sdsPessoaCAIXAPOSTAL: TStringField;
    sdsPessoaRG: TStringField;
    sdsPessoaID_CONDPGTO: TIntegerField;
    sdsPessoaID_CONTABOLETO: TIntegerField;
    sdsPessoaID_TRANSPORTADORA: TIntegerField;
    sdsPessoaID_TIPOCOBRANCA: TIntegerField;
    sdsPessoaPERC_COMISSAO: TFloatField;
    sdsPessoaID_REDESPACHO: TIntegerField;
    sdsPessoaDDD_ENT: TIntegerField;
    sdsPessoaFONE_ENT: TStringField;
    sdsPessoaDDD_PGTO: TIntegerField;
    sdsPessoaFONE_PGTO: TStringField;
    sdsPessoaINATIVO: TStringField;
    sdsPessoaHOMEPAGE: TStringField;
    sdsPessoaNOME_ENTREGA: TStringField;
    sdsPessoaEMAIL_NFE: TStringField;
    sdsPessoaID_PAIS: TIntegerField;
    sdsPessoaEMAIL_PGTO: TStringField;
    sdsPessoaEMAIL_NFE2: TStringField;
    sdsPessoaPESSOA_PGTO: TStringField;
    sdsPessoaCNPJ_CPG_PGTO: TStringField;
    sdsPessoaINSC_EST_PGTO: TStringField;
    sdsPessoaUF_PLACA: TStringField;
    sdsPessoaPLACA: TStringField;
    sdsPessoaTP_CLIENTE: TStringField;
    sdsPessoaTP_FORNECEDOR: TStringField;
    sdsPessoaTP_TRANSPORTADORA: TStringField;
    sdsPessoaTP_VENDEDOR: TStringField;
    sdsPessoaTIPO_FRETE: TStringField;
    sdsPessoaID_REGIME_TRIB: TIntegerField;
    sdsPessoaTIPO_ICMS: TStringField;
    sdsPessoaID_TAB_PRECO: TIntegerField;
    sdsPessoaTP_ATELIER: TStringField;
    sdsPessoaTIPO_COMISSAO: TStringField;
    sdsPessoaPERC_COMISSAO_VEND: TFloatField;
    sdsPessoaNOME_CONTATO: TStringField;
    sdsPessoaINSC_MUNICIPAL: TStringField;
    sdsPessoaDT_CONTRATO_INI: TDateField;
    sdsPessoaDT_CONTRATO_FIN: TDateField;
    sdsPessoaID_SERVICO: TIntegerField;
    sdsPessoaID_SERVICO_INT: TIntegerField;
    sdsPessoaVLR_SERVICO: TFloatField;
    sdsPessoaCLIENTE_CONTA_ID: TIntegerField;
    sdsPessoaFORNECEDOR_CONTA_ID: TIntegerField;
    sdsPessoaVENDEDOR_CONTA_ID: TIntegerField;
    sdsPessoaTRANSPORTADORA_CONTA_ID: TIntegerField;
    sdsPessoaATELIER_CONTA_ID: TIntegerField;
    sdsPessoaRETEM_ISS: TStringField;
    sdsPessoaRETEM_CSLL: TStringField;
    sdsPessoaRETEM_PISCOFINS: TStringField;
    sdsPessoaRETEM_INSS: TStringField;
    sdsPessoaEMAIL_COMPRAS: TStringField;
    sdsPessoaCONTATO_COMPRAS: TStringField;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    cdsPessoaFANTASIA: TStringField;
    cdsPessoaENDERECO: TStringField;
    cdsPessoaCOMPLEMENTO_END: TStringField;
    cdsPessoaNUM_END: TStringField;
    cdsPessoaBAIRRO: TStringField;
    cdsPessoaID_CIDADE: TIntegerField;
    cdsPessoaCIDADE: TStringField;
    cdsPessoaUF: TStringField;
    cdsPessoaCEP: TStringField;
    cdsPessoaDDDFONE1: TIntegerField;
    cdsPessoaTELEFONE1: TStringField;
    cdsPessoaDDDFONE2: TIntegerField;
    cdsPessoaTELEFONE2: TStringField;
    cdsPessoaDDDFAX: TIntegerField;
    cdsPessoaFAX: TStringField;
    cdsPessoaPESSOA: TStringField;
    cdsPessoaCNPJ_CPF: TStringField;
    cdsPessoaINSCR_EST: TStringField;
    cdsPessoaENDERECO_ENT: TStringField;
    cdsPessoaCOMPLEMENTO_END_ENT: TStringField;
    cdsPessoaNUM_END_ENT: TStringField;
    cdsPessoaBAIRRO_ENT: TStringField;
    cdsPessoaID_CIDADE_ENT: TIntegerField;
    cdsPessoaCIDADE_ENT: TStringField;
    cdsPessoaCEP_ENT: TStringField;
    cdsPessoaUF_ENT: TStringField;
    cdsPessoaPESSOA_ENT: TStringField;
    cdsPessoaCNPJ_CPF_ENT: TStringField;
    cdsPessoaINSC_EST_ENT: TStringField;
    cdsPessoaENDERECO_PGTO: TStringField;
    cdsPessoaCOMPLEMENTO_END_PGTO: TStringField;
    cdsPessoaNUM_END_PGTO: TStringField;
    cdsPessoaBAIRRO_PGTO: TStringField;
    cdsPessoaID_CIDADE_PGTO: TIntegerField;
    cdsPessoaCIDADE_PGTO: TStringField;
    cdsPessoaCEP_PGTO: TStringField;
    cdsPessoaUF_PGTO: TStringField;
    cdsPessoaUSUARIO: TStringField;
    cdsPessoaDTCADASTRO: TDateField;
    cdsPessoaHRCADASTRO: TTimeField;
    cdsPessoaID_VENDEDOR: TIntegerField;
    cdsPessoaOBS: TMemoField;
    cdsPessoaCAIXAPOSTAL: TStringField;
    cdsPessoaRG: TStringField;
    cdsPessoaID_CONDPGTO: TIntegerField;
    cdsPessoaID_CONTABOLETO: TIntegerField;
    cdsPessoaID_TRANSPORTADORA: TIntegerField;
    cdsPessoaID_TIPOCOBRANCA: TIntegerField;
    cdsPessoaPERC_COMISSAO: TFloatField;
    cdsPessoaID_REDESPACHO: TIntegerField;
    cdsPessoaDDD_ENT: TIntegerField;
    cdsPessoaFONE_ENT: TStringField;
    cdsPessoaDDD_PGTO: TIntegerField;
    cdsPessoaFONE_PGTO: TStringField;
    cdsPessoaINATIVO: TStringField;
    cdsPessoaHOMEPAGE: TStringField;
    cdsPessoaNOME_ENTREGA: TStringField;
    cdsPessoaEMAIL_NFE: TStringField;
    cdsPessoaID_PAIS: TIntegerField;
    cdsPessoaEMAIL_PGTO: TStringField;
    cdsPessoaEMAIL_NFE2: TStringField;
    cdsPessoaPESSOA_PGTO: TStringField;
    cdsPessoaCNPJ_CPG_PGTO: TStringField;
    cdsPessoaINSC_EST_PGTO: TStringField;
    cdsPessoaUF_PLACA: TStringField;
    cdsPessoaPLACA: TStringField;
    cdsPessoaTP_CLIENTE: TStringField;
    cdsPessoaTP_FORNECEDOR: TStringField;
    cdsPessoaTP_TRANSPORTADORA: TStringField;
    cdsPessoaTP_VENDEDOR: TStringField;
    cdsPessoaTIPO_FRETE: TStringField;
    cdsPessoaID_REGIME_TRIB: TIntegerField;
    cdsPessoaTIPO_ICMS: TStringField;
    cdsPessoaID_TAB_PRECO: TIntegerField;
    cdsPessoaTP_ATELIER: TStringField;
    cdsPessoaTIPO_COMISSAO: TStringField;
    cdsPessoaPERC_COMISSAO_VEND: TFloatField;
    cdsPessoaNOME_CONTATO: TStringField;
    cdsPessoaINSC_MUNICIPAL: TStringField;
    cdsPessoaDT_CONTRATO_INI: TDateField;
    cdsPessoaDT_CONTRATO_FIN: TDateField;
    cdsPessoaID_SERVICO: TIntegerField;
    cdsPessoaID_SERVICO_INT: TIntegerField;
    cdsPessoaVLR_SERVICO: TFloatField;
    cdsPessoaCLIENTE_CONTA_ID: TIntegerField;
    cdsPessoaFORNECEDOR_CONTA_ID: TIntegerField;
    cdsPessoaVENDEDOR_CONTA_ID: TIntegerField;
    cdsPessoaTRANSPORTADORA_CONTA_ID: TIntegerField;
    cdsPessoaATELIER_CONTA_ID: TIntegerField;
    cdsPessoaRETEM_ISS: TStringField;
    cdsPessoaRETEM_CSLL: TStringField;
    cdsPessoaRETEM_PISCOFINS: TStringField;
    cdsPessoaRETEM_INSS: TStringField;
    cdsPessoaEMAIL_COMPRAS: TStringField;
    cdsPessoaCONTATO_COMPRAS: TStringField;
    dsPessoa: TDataSource;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    sdsProdutoID: TIntegerField;
    sdsProdutoREFERENCIA: TStringField;
    sdsProdutoNOME: TStringField;
    sdsProdutoPESOLIQUIDO: TFloatField;
    sdsProdutoPESOBRUTO: TFloatField;
    sdsProdutoINATIVO: TStringField;
    sdsProdutoID_CSTIPI: TIntegerField;
    sdsProdutoPERC_IPI: TFloatField;
    sdsProdutoPRECO_CUSTO: TFloatField;
    sdsProdutoPRECO_VENDA: TFloatField;
    sdsProdutoTIPO_REG: TStringField;
    sdsProdutoPOSSE_MATERIAL: TStringField;
    sdsProdutoESTOQUE: TStringField;
    sdsProdutoMATERIAL_OUTROS: TStringField;
    sdsProdutoUSUARIO: TStringField;
    sdsProdutoDTCAD: TDateField;
    sdsProdutoHRCAD: TTimeField;
    sdsProdutoCA: TStringField;
    sdsProdutoCOMPLEMENTO: TStringField;
    sdsProdutoID_NCM: TIntegerField;
    sdsProdutoORIGEM_PROD: TStringField;
    sdsProdutoOBS: TMemoField;
    sdsProdutoCODSITCF: TStringField;
    sdsProdutoPERC_REDUCAOICMS: TFloatField;
    sdsProdutoTIPO_VENDA: TStringField;
    sdsProdutoPERC_MARGEMLUCRO: TFloatField;
    sdsProdutoUNIDADE: TStringField;
    sdsProdutoDT_ALTPRECO: TDateField;
    sdsProdutoLOCALIZACAO: TStringField;
    sdsProdutoID_GRUPO: TIntegerField;
    sdsProdutoID_SUBGRUPO: TIntegerField;
    sdsProdutoID_MARCA: TIntegerField;
    sdsProdutoID_FORNECEDOR: TIntegerField;
    sdsProdutoCOD_BARRA: TStringField;
    sdsProdutoPERC_IMPORTACAO: TFloatField;
    cdsProdutoID: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    cdsProdutoPESOLIQUIDO: TFloatField;
    cdsProdutoPESOBRUTO: TFloatField;
    cdsProdutoINATIVO: TStringField;
    cdsProdutoID_CSTIPI: TIntegerField;
    cdsProdutoPERC_IPI: TFloatField;
    cdsProdutoPRECO_CUSTO: TFloatField;
    cdsProdutoPRECO_VENDA: TFloatField;
    cdsProdutoTIPO_REG: TStringField;
    cdsProdutoPOSSE_MATERIAL: TStringField;
    cdsProdutoESTOQUE: TStringField;
    cdsProdutoMATERIAL_OUTROS: TStringField;
    cdsProdutoUSUARIO: TStringField;
    cdsProdutoDTCAD: TDateField;
    cdsProdutoHRCAD: TTimeField;
    cdsProdutoCA: TStringField;
    cdsProdutoCOMPLEMENTO: TStringField;
    cdsProdutoID_NCM: TIntegerField;
    cdsProdutoORIGEM_PROD: TStringField;
    cdsProdutoOBS: TMemoField;
    cdsProdutoCODSITCF: TStringField;
    cdsProdutoPERC_REDUCAOICMS: TFloatField;
    cdsProdutoTIPO_VENDA: TStringField;
    cdsProdutoPERC_MARGEMLUCRO: TFloatField;
    cdsProdutoUNIDADE: TStringField;
    cdsProdutoDT_ALTPRECO: TDateField;
    cdsProdutoLOCALIZACAO: TStringField;
    cdsProdutoID_GRUPO: TIntegerField;
    cdsProdutoID_SUBGRUPO: TIntegerField;
    cdsProdutoID_MARCA: TIntegerField;
    cdsProdutoID_FORNECEDOR: TIntegerField;
    cdsProdutoCOD_BARRA: TStringField;
    cdsProdutoPERC_IMPORTACAO: TFloatField;
    qCidade: TSQLQuery;
    qCidadeID: TIntegerField;
    qCidadeNOME: TStringField;
    qCidadeUF: TStringField;
    qCidadeCODMUNICIPIO: TStringField;
    qCidadeID_PROVEDOR: TIntegerField;
    qCidadeLINKNFSE: TStringField;
    qCidadeFONE_PREFEITURA: TStringField;
    qCidadeSITE_PREFEITURA: TStringField;
    qCidadeEND_LOGO_PREFEITURA: TStringField;
    qPessoa: TSQLQuery;
    qPessoaCODIGO: TIntegerField;
    qPessoaNOME: TStringField;
    qPessoaFANTASIA: TStringField;
    qPessoaPESSOA: TStringField;
    qPessoaCNPJ_CPF: TStringField;
    Label2: TLabel;
    Label3: TLabel;
    sdsProdutoCOD_ANT: TStringField;
    cdsProdutoCOD_ANT: TStringField;
    qProduto: TSQLQuery;
    qProdutoID: TIntegerField;
    qProdutoREFERENCIA: TStringField;
    qProdutoNOME: TStringField;
    qProdutoINATIVO: TStringField;
    qProdutoCOD_ANT: TStringField;
    sdsUnidade: TSQLDataSet;
    dspUnidade: TDataSetProvider;
    cdsUnidade: TClientDataSet;
    sdsUnidadeUNIDADE: TStringField;
    sdsUnidadeCONVERSOR: TFloatField;
    sdsUnidadeNOME: TStringField;
    cdsUnidadeUNIDADE: TStringField;
    cdsUnidadeCONVERSOR: TFloatField;
    cdsUnidadeNOME: TStringField;
    sdsNCM: TSQLDataSet;
    dspNCM: TDataSetProvider;
    cdsNCM: TClientDataSet;
    sdsNCMID: TIntegerField;
    sdsNCMNCM: TStringField;
    sdsNCMNOME: TStringField;
    cdsNCMID: TIntegerField;
    cdsNCMNCM: TStringField;
    cdsNCMNOME: TStringField;
    BitBtn3: TBitBtn;
    sdsCFOP_Ori: TSQLDataSet;
    dspCFOP_Ori: TDataSetProvider;
    cdsCFOP_Ori: TClientDataSet;
    dsCFOP_Ori: TDataSource;
    sdsCFOP_OriCFCOD: TStringField;
    sdsCFOP_OriCFNOME: TStringField;
    sdsCFOP_OriCFNOTA: TMemoField;
    cdsCFOP_OriCFCOD: TStringField;
    cdsCFOP_OriCFNOME: TStringField;
    cdsCFOP_OriCFNOTA: TMemoField;
    BitBtn4: TBitBtn;
    sdsCFOP: TSQLDataSet;
    dspCFOP: TDataSetProvider;
    cdsCFOP: TClientDataSet;
    dsCFOP: TDataSource;
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
    sdsCFOPLEI: TMemoField;
    sdsCFOPBENEFICIAMENTO: TStringField;
    sdsCFOPMAOOBRA: TStringField;
    sdsCFOPOBS_CLASSIFICACAO: TMemoField;
    sdsCFOPGERAR_TRIBUTO: TStringField;
    sdsCFOPPERC_TRIBUTO: TFloatField;
    sdsCFOPTIPO_IND_VEN: TStringField;
    sdsCFOPINATIVO: TStringField;
    sdsCFOPDEVOLUCAO: TStringField;
    sdsCFOPGERAR_ESTOQUE_MP: TStringField;
    sdsCFOPID_OBS_LEI: TIntegerField;
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
    cdsCFOPLEI: TMemoField;
    cdsCFOPBENEFICIAMENTO: TStringField;
    cdsCFOPMAOOBRA: TStringField;
    cdsCFOPOBS_CLASSIFICACAO: TMemoField;
    cdsCFOPGERAR_TRIBUTO: TStringField;
    cdsCFOPPERC_TRIBUTO: TFloatField;
    cdsCFOPTIPO_IND_VEN: TStringField;
    cdsCFOPINATIVO: TStringField;
    cdsCFOPDEVOLUCAO: TStringField;
    cdsCFOPGERAR_ESTOQUE_MP: TStringField;
    cdsCFOPID_OBS_LEI: TIntegerField;
    BitBtn5: TBitBtn;
    Edit1: TEdit;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
    Txt: TextFile;
    vRegistro: String;
    vArquivo: String;

    function fnc_Montar_Campo(vSeparador: String): String;

  public
    { Public declarations }
  end;

var
  frmImportarArq: TfrmImportarArq;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmImportarArq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmImportarArq.BitBtn1Click(Sender: TObject);
var
  vAux, i, i2: Integer;
  vTexto1: String;
  vGravar: Boolean;
  vContador: Integer;
begin
  if trim(FilenameEdit1.Text) = '' then
  begin
    MessageDlg('*** Endereço do arquivo não informado!', mtError, [mbOk], 0);
    exit;
  end;

  cdsPessoa.Close;
  cdsPessoa.Open;
  vContador := 0;

  try
    vArquivo := FilenameEdit1.Text;

    AssignFile(Txt,vArquivo);
    Reset(Txt);
    while not Eof(Txt) do
    begin
      ReadLn(Txt,vRegistro);

      if (copy(vRegistro,1,10) <> 'codcliente') and (copy(vRegistro,1,10) <> '') then
      begin
        vContador := vContador + 1;
        Label3.Caption := IntToStr(vContador);
        Label3.Refresh;

        cdsPessoa.Insert;
        vTexto1                    := fnc_Montar_Campo(Edit1.Text);
        cdsPessoaNOME.AsString     := fnc_Montar_Campo(Edit1.Text);

       // if copy(cdsPessoaNOME.AsString,1,7) = 'INCOPEL' then
         // ShowMessage('Aqui');

        cdsPessoaFANTASIA.AsString := cdsPessoaNOME.AsString;
        cdsPessoaENDERECO.AsString := fnc_Montar_Campo(Edit1.Text);
        i := pos(',',cdsPessoaENDERECO.AsString);
        vTexto1 := copy(cdsPessoaENDERECO.AsString,i+1,Length(cdsPessoaENDERECO.AsString) - i);
        if i > 0 then
          cdsPessoaENDERECO.AsString := copy(cdsPessoaENDERECO.AsString,1,i-1);
        cdsPessoaNUM_END.AsString    := TrimLeft(vTexto1);
        cdsPessoaCIDADE.AsString     := TirarAcento(fnc_Montar_Campo(Edit1.Text));
        cdsPessoaCIDADE.AsString     := UpperCase(cdsPessoaCIDADE.AsString);
        qCidade.Close;
        qCidade.ParamByName('NOME').AsString := cdsPessoaCIDADE.AsString;
        qCidade.Open;
        if qCidadeID.AsInteger > 0 then
        begin
          cdsPessoaID_CIDADE.AsInteger := qCidadeID.AsInteger;
          cdsPessoaUF.AsString         := qCidadeUF.AsString;
        end;
        cdsPessoaID_PAIS.AsInteger   := 1;
        vTexto1                      := fnc_Montar_Campo(Edit1.Text);
        vTexto1                      := fnc_Montar_Campo(Edit1.Text);
        cdsPessoaCEP.AsString        := fnc_Montar_Campo(Edit1.Text);
        cdsPessoaBAIRRO.AsString     := fnc_Montar_Campo(Edit1.Text);
        cdsPessoaTELEFONE1.AsString  := fnc_Montar_Campo(Edit1.Text);
        vTexto1 := '';
        i  := pos('(',cdsPessoaTELEFONE1.AsString);
        i2 := pos(')',cdsPessoaTELEFONE1.AsString);
        if (i > 0) and (i2 > 0) then
          vTexto1 := copy(cdsPessoaTELEFONE1.AsString,i+1,i2-2);
        vTexto1 := Monta_Numero(vTexto1,0);
        if trim(vTexto1) <> '' then
          cdsPessoaDDDFONE1.AsString := vTexto1;
        i2 := i2 + 1;
        cdsPessoaTELEFONE1.AsString    := copy(cdsPessoaTELEFONE1.AsString,i2,Length(cdsPessoaTELEFONE1.AsString)-i2+1);
        cdsPessoaINSCR_EST.AsString    := fnc_Montar_Campo(Edit1.Text);
        cdsPessoaCNPJ_CPF.AsString     := fnc_Montar_Campo(Edit1.Text);
        cdsPessoaPESSOA.AsString       := fnc_Montar_Campo(Edit1.Text);
        cdsPessoaINATIVO.AsString      := 'N';
        cdsPessoaUSUARIO.AsString      := 'IMPORTAR';
        cdsPessoaDTCADASTRO.AsDateTime := Date;
        cdsPessoaHRCADASTRO.AsDateTime := Now;
        cdsPessoaTP_CLIENTE.AsString   := 'S';

        vGravar := True;
        vTexto1 := Monta_Numero(cdsPessoaCNPJ_CPF.AsString,0);
        if trim(vTexto1) <> '' then
        begin
          qPessoa.Close;
          qPessoa.ParamByName('CNPJ_CPF').AsString := cdsPessoaCNPJ_CPF.AsString;
          qPessoa.Open;
          if not(qPessoa.IsEmpty) and (qPessoaCNPJ_CPF.AsString = cdsPessoaCNPJ_CPF.AsString) then
            vGravar := False;
        end;
        if vGravar then
        begin
          vAux := dmDatabase.ProximaSequencia('PESSOA',0);
          cdsPessoaCODIGO.AsInteger  := vAux;
          cdsPessoa.Post;
          cdsPessoa.ApplyUpdates(0);
        end
        else
        begin
          cdsPessoa.Cancel;
        end;
      end;
    end;

  finally
    CloseFile(Txt);
  end;

  ShowMessage('Geração concluída!');
end;

function TfrmImportarArq.fnc_Montar_Campo(vSeparador: String): String;
var
  i: Integer;
  vTexto: String;
begin
  Result := '';
  i      := pos(vSeparador,vRegistro);
  if i = 0 then
    i := Length(vRegistro) + 1;
  Result := Copy(vRegistro,1,i-1);
  vTexto := Result;
  Delete(vRegistro,1,i);
end;

procedure TfrmImportarArq.BitBtn2Click(Sender: TObject);
var
  vAux, i, i2: Integer;
  vTexto1: String;
  vGravar: Boolean;
  vContador: Integer;
begin
  if trim(FilenameEdit1.Text) = '' then
  begin
    MessageDlg('*** Endereço do arquivo não informado!', mtError, [mbOk], 0);
    exit;
  end;

  cdsProduto.Close;
  cdsProduto.Open;
  cdsUnidade.Close;
  cdsUnidade.Open;
  cdsNCM.Close;
  cdsNCM.Open;
  vContador := 0;

  try
    vArquivo := FilenameEdit1.Text;

    AssignFile(Txt,vArquivo);
    Reset(Txt);
    while not Eof(Txt) do
    begin
      ReadLn(Txt,vRegistro);

      if (copy(vRegistro,1,7) <> 'coditem') and (copy(vRegistro,1,10) <> '') then
      begin
        vContador := vContador + 1;
        Label3.Caption := IntToStr(vContador);
        Label3.Refresh;

        vTexto1 := fnc_Montar_Campo(Edit1.Text);
        qProduto.Close;
        qProduto.ParamByName('COD_ANT').AsString := vTexto1;
        qProduto.Open;
        vGravar := True;
        if not(qProduto.IsEmpty) and (trim(qProdutoCOD_ANT.AsString) = trim(vTexto1)) then
          vGravar := False;

        if vGravar then
        begin
          vAux := dmDatabase.ProximaSequencia('PRODUTO',0);
          cdsProduto.Insert;
          cdsProdutoID.AsInteger := vAux;
          cdsProdutoREFERENCIA.AsString := vTexto1;
          cdsProdutoCOD_ANT.AsString    := vTexto1;
          cdsProdutoNOME.AsString       := UpperCase(fnc_Montar_Campo(Edit1.Text));
          cdsProdutoUNIDADE.AsString    := UpperCase(fnc_Montar_Campo(Edit1.Text));

          if not cdsUnidade.Locate('UNIDADE',cdsProdutoUNIDADE.AsString,[loCaseInsensitive]) then
          begin
            try
              cdsUnidade.Insert;
              cdsUnidadeCONVERSOR.AsFloat := 0;
              cdsUnidadeUNIDADE.AsString  := cdsProdutoUNIDADE.AsString;
              cdsUnidadeNOME.AsString     := cdsProdutoUNIDADE.AsString;
              cdsUnidade.Post;
              cdsUnidade.ApplyUpdates(0);
            except
            end;
          end;

          vTexto1 := fnc_Montar_Campo(Edit1.Text);
          vAux    := 0;
          if Length(trim(vTexto1)) > 5 then
          begin
            if cdsNCM.Locate('NCM',vTexto1,[loCaseInsensitive]) then
              vAux := cdsNCMID.AsInteger
            else
            if not cdsNCM.Locate('NCM',vTexto1,[loCaseInsensitive]) then
            begin
              try
                vAux := dmDatabase.ProximaSequencia('TAB_NCM',0);
                cdsNCM.Insert;
                cdsNCMID.AsInteger  := vAux;
                cdsNCMNCM.AsString  := vTexto1;
                cdsNCMNOME.AsString := '';
                cdsNCM.Post;
                cdsNCM.ApplyUpdates(0);
              except
                begin
                  vAux := 0;
                end;
              end;
            end;
          end;
          if vAux > 0 then
            cdsProdutoID_NCM.AsInteger   := vAux;
          cdsProdutoPESOBRUTO.AsFloat    := 0;
          cdsProdutoPESOLIQUIDO.AsFloat  := 0;
          cdsProdutoINATIVO.AsString     := 'N';
          cdsProdutoPRECO_CUSTO.AsFloat  := 0;
          cdsProdutoPRECO_VENDA.AsFloat  := 0;
          cdsProdutoTIPO_REG.AsString    := 'P';
          cdsProdutoPOSSE_MATERIAL.AsString := 'E';
          cdsProdutoESTOQUE.AsString     := 'S';
          cdsProdutoUSUARIO.AsString     := 'IMPORTAR';
          cdsProdutoDTCAD.AsDateTime     := Date;
          cdsProdutoHRCAD.AsDateTime     := Now;
          cdsProdutoORIGEM_PROD.AsString := '0';
          cdsProduto.Post;
          cdsProduto.ApplyUpdates(0);
        end;
      end;
    end;

  finally
    CloseFile(Txt);
  end;

  ShowMessage('Geração concluída!');
end;

procedure TfrmImportarArq.BitBtn3Click(Sender: TObject);
var
  vTxtCFOP: TextFile;
  vTexto1: String;
begin
  if trim(FilenameEdit1.Text) = '' then
  begin
    ShowMessage('Informar o endereço do arquivo com o nome!');
    exit;
  end;
  AssignFile(vTxtCFOP,FilenameEdit1.Text);
  ReWrite(vTxtCFOP);

  cdsCFOP_Ori.Close;
  cdsCFOP_Ori.Open;
  cdsCFOP_Ori.First;
  while not cdsCFOP_Ori.Eof do
  begin
    if not(cdsCFOP_OriCFNOTA.IsNull) then
    begin
      vTexto1 := cdsCFOP_OriCFCOD.AsString + ';';
      vTexto1 := vTexto1 + cdsCFOP_OriCFNOTA.Value;
      Writeln(vTxtCFOP,vTexto1);
    end;
    cdsCFOP_Ori.Next;
  end;
  CloseFile(vTxtCFOP);
  ShowMessage('Arquivo ' + FilenameEdit1.Text + ', gerado!');
end;

procedure TfrmImportarArq.BitBtn4Click(Sender: TObject);
var
  vAux, i, i2: Integer;
  vTexto1: String;
  vGravar: Boolean;
  vContador: Integer;
begin
  if trim(FilenameEdit1.Text) = '' then
  begin
    MessageDlg('*** Endereço do arquivo não informado!', mtError, [mbOk], 0);
    exit;
  end;

  vContador := 0;
  try
    vArquivo := FilenameEdit1.Text;
    AssignFile(Txt,vArquivo);
    Reset(Txt);
    while not Eof(Txt) do
    begin
      ReadLn(Txt,vRegistro);
      vContador := vContador + 1;
      Label3.Caption := IntToStr(vContador);
      Label3.Refresh;

      cdsCFOP.Close;
      sdsCFOP.ParamByName('CODCFOP').AsString := fnc_Montar_Campo(Edit1.Text);
      cdsCFOP.Open;
      if not cdsCFOP.IsEmpty then
      begin
        cdsCFOP.Edit;
        cdsCFOPOBS_CLASSIFICACAO.Value := fnc_Montar_Campo(Edit1.Text);
        cdsCFOP.Post;
        cdsCFOP.ApplyUpdates(0);
      end;
    end;
  finally
    CloseFile(Txt);
  end;
  ShowMessage('Geração concluída!');
end;

procedure TfrmImportarArq.BitBtn5Click(Sender: TObject);
var
  vAux, i, i2: Integer;
  vTexto1: String;
  vGravar: Boolean;
  vContador: Integer;
begin
  if trim(FilenameEdit1.Text) = '' then
  begin
    MessageDlg('*** Endereço do arquivo não informado!', mtError, [mbOk], 0);
    exit;
  end;

  cdsProduto.Close;
  cdsProduto.Open;
  cdsUnidade.Close;
  cdsUnidade.Open;

  try
    vArquivo := FilenameEdit1.Text;

    AssignFile(Txt,vArquivo);
    Reset(Txt);
    while not Eof(Txt) do
    begin
      ReadLn(Txt,vRegistro);
      TirarAcento(vRegistro);
      if (copy(vRegistro,1,6) <> 'codigo') then
      begin
        vContador := vContador + 1;
        Label3.Caption := IntToStr(vContador);
        Label3.Refresh;

        vTexto1 := fnc_Montar_Campo(Edit1.Text);
//        qProduto.Close;
//        qProduto.ParamByName('COD_ANT').AsString := vTexto1;
//        qProduto.Open;
        vGravar := True;
//        if not(qProduto.IsEmpty) and (trim(qProdutoCOD_ANT.AsString) = trim(vTexto1)) then
//          vGravar := False;

        if vGravar then
        begin
          vAux := dmDatabase.ProximaSequencia('PRODUTO',0);
          cdsProduto.Insert;
          cdsProdutoID.AsInteger := vAux;
          cdsProdutoREFERENCIA.AsString := vTexto1;
//          cdsProdutoCOD_ANT.AsString    := vTexto1;
          cdsProdutoNOME.AsString       := UpperCase(fnc_Montar_Campo(Edit1.Text));
          cdsProdutoUNIDADE.AsString    := 'PC';
          cdsProdutoPRECO_CUSTO.AsString := Replace(fnc_Montar_Campo(Edit1.Text),'.',',');
          cdsProdutoPRECO_VENDA.AsString := Replace(fnc_Montar_Campo(Edit1.Text),'.',',');

          cdsProdutoPESOBRUTO.AsFloat    := 0;
          cdsProdutoPESOLIQUIDO.AsFloat  := 0;
          cdsProdutoINATIVO.AsString     := 'N';
          cdsProdutoTIPO_REG.AsString    := 'P';
          cdsProdutoPOSSE_MATERIAL.AsString := 'E';
          cdsProdutoESTOQUE.AsString     := 'S';
          cdsProdutoUSUARIO.AsString     := 'IMPORTAR';
          cdsProdutoDTCAD.AsDateTime     := Date;
          cdsProdutoHRCAD.AsDateTime     := Now;
          cdsProdutoORIGEM_PROD.AsString := '0';
          cdsProduto.Post;
          cdsProduto.ApplyUpdates(0);
        end;
      end;
    end;

  finally
    CloseFile(Txt);
  end;

  ShowMessage('Geração concluída!');
end;

end.
