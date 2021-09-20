unit U_principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, uDWAbout,
  uRESTDWBase, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    Switch1: TSwitch;
    RESTServicePooler: TRESTServicePooler;
    procedure FormCreate(Sender: TObject);
    procedure Switch1Switch(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  U_Modulo;

{$R *.fmx}

procedure TForm1.FormCreate(Sender: TObject);
begin

    RESTServicePooler.ServerMethodClass:=Tdm;
    RESTServicePooler.Active :=Switch1.IsChecked;
end;

procedure TForm1.Switch1Switch(Sender: TObject);
begin
  RESTServicePooler.Active:=Switch1.IsChecked;
end;

end.
