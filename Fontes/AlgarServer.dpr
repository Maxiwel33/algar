program AlgarServer;

uses
  Vcl.Forms,
  U_principal in 'U_principal.pas' {Frm_server},
  U_Modulo in 'U_Modulo.pas' {DmServer: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_server, Frm_server);
  Application.CreateForm(TDmServer, DmServer);
  Application.Run;
end.
