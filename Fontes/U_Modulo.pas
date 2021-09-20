unit U_Modulo;

interface

uses
  System.SysUtils, System.Classes,uDWDatamodule, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Phys.FBDef, uRESTDWPoolerDB, uRestDWDriverFD,
  uDWAbout, FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client;

type
  TDmServer = class(TServerMethodDataModule)
    Conn1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    RESTDWPoolerDB1: TRESTDWPoolerDB;
    RESTDWDriverFD1: TRESTDWDriverFD;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmServer: TDmServer;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
