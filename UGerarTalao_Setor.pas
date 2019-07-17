unit UGerarTalao_Setor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, Buttons, UDMCadLote_Calc, UDMGerarTalaoSetor,
  ComCtrls;

type
  TfrmGerarTalao_Setor = class(TForm)
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    BitBtn1: TBitBtn;
    ProgressBar1: TProgressBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadLote_Calc: TDMCadLote_Calc;
    fDMGerarTalaoSetor: TDMGerarTalaoSetor;

  public
    { Public declarations }
  end;

var
  frmGerarTalao_Setor: TfrmGerarTalao_Setor;

implementation


{$R *.dfm}

procedure TfrmGerarTalao_Setor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMCadLote_Calc);
  FreeAndNil(fDMGerarTalaoSetor);
  Action := Cafree;
end;

procedure TfrmGerarTalao_Setor.FormShow(Sender: TObject);
begin
  fDMCadLote_Calc    := TDMCadLote_Calc.Create(Self);
  fDMGerarTalaoSetor := TDMGerarTalaoSetor.Create(Self);
end;

procedure TfrmGerarTalao_Setor.BitBtn1Click(Sender: TObject);
begin
  fDMGerarTalaoSetor.cdsConsulta.Close;
  fDMGerarTalaoSetor.sdsConsulta.ParamByName('NUM_ORDEM').AsInteger := CurrencyEdit1.AsInteger;
  fDMGerarTalaoSetor.cdsConsulta.Open;

  fDMCadLote_Calc.cdsSetor_Talao.Close;
  fDMCadLote_Calc.cdsSetor_Talao.Open;
  ProgressBar1.Max      := fDMGerarTalaoSetor.cdsConsulta.RecordCount;
  ProgressBar1.Position := 0;

  fDMGerarTalaoSetor.cdsConsulta.First;
  while not fDMGerarTalaoSetor.cdsConsulta.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;

    fDMCadLote_Calc.prc_Localizar(fDMGerarTalaoSetor.cdsConsultaID.AsInteger);

    fDMCadLote_Calc.cdsTalao.First;
    while not fDMCadLote_Calc.cdsTalao.Eof do
    begin
      if fDMCadLote_Calc.cdsTalao_Setor.RecordCount <= 0 then
      begin
        fDMCadLote_Calc.cdsSetor_Talao.First;
        while not fDMCadLote_Calc.cdsSetor_Talao.Eof do
        begin
          fDMCadLote_Calc.cdsTalao_Setor.Insert;
          fDMCadLote_Calc.cdsTalao_SetorID.AsInteger        := fDMCadLote_Calc.cdsTalaoID.AsInteger;
          fDMCadLote_Calc.cdsTalao_SetorNUM_TALAO.AsInteger := fDMCadLote_Calc.cdsTalaoNUM_TALAO.AsInteger;
          fDMCadLote_Calc.cdsTalao_SetorITEM.AsInteger      := fDMCadLote_Calc.cdsSetor_TalaoORDEM_ORC.AsInteger;
          fDMCadLote_Calc.cdsTalao_SetorID_SETOR.AsInteger  := fDMCadLote_Calc.cdsSetor_TalaoID.AsInteger;
          fDMCadLote_Calc.cdsTalao_SetorQTD.AsInteger       := fDMCadLote_Calc.cdsTalaoQTD.AsInteger;
          fDMCadLote_Calc.cdsTalao_Setor.Post;
          fDMCadLote_Calc.cdsTalao_Setor.ApplyUpdates(0);

          fDMCadLote_Calc.cdsSetor_Talao.Next;
        end;
      end;
      fDMCadLote_Calc.cdsTalao.Next;
    end;

    fDMGerarTalaoSetor.cdsConsulta.Next;
  end;


end;

end.
