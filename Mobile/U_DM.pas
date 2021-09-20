unit U_DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uDWConstsData, uRESTDWPoolerDB;

type
  TDM = class(TDataModule)
    RDW_entrada: TRESTDWClientSQL;
    RDW_entradaID_ENTRADA: TIntegerField;
    RDW_entradaID_LOCAL: TIntegerField;
    RDW_entradaDATA: TDateField;
    RDW_entradaHORA: TTimeField;
    strngfldRDW_entradaNOME: TStringField;
    strngfldRDW_entradaSTATUS: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses
  U_principal;

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
