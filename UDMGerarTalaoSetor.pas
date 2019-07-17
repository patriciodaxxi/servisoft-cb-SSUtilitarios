unit UDMGerarTalaoSetor;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMGerarTalaoSetor = class(TDataModule)
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    cdsConsultaID: TIntegerField;
    cdsConsultaNUM_LOTE: TIntegerField;
    cdsConsultaFILIAL: TIntegerField;
    cdsConsultaNUM_ORDEM: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMGerarTalaoSetor: TDMGerarTalaoSetor;

implementation

uses DmdDatabase;

{$R *.dfm}

end.
