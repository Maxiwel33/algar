unit U_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDWAbout, uRESTDWBase, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrm_server = class(TForm)
    RDW_Server: TRESTServicePooler;
    pnl1: TPanel;
    btn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_server: TFrm_server;

implementation

uses
  U_Modulo;

{$R *.dfm}

procedure TFrm_server.btn1Click(Sender: TObject);
begin
    RDW_Server.Active := not RDW_Server.Active;
end;

procedure TFrm_server.FormCreate(Sender: TObject);
begin
     RDW_Server.ServerMethodClass:=TDmServer;
end;

end.
