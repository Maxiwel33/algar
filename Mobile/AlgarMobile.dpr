program AlgarMobile;

uses
  System.StartUpCopy,
  FMX.Forms,
  U_principal in 'U_principal.pas' {Frm_Mobile},
  U_DM in 'U_DM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrm_Mobile, Frm_Mobile);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
