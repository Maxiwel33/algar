unit U_principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.Edit, FMX.TMSCustomButton,
  FMX.TMSBarButton, FMX.StdCtrls, FMX.Ani, FMX.ExtCtrls, FMX.TMSBaseControl,
  FMX.TMSBitmap, FMX.TabControl, uDWAbout, uRESTDWPoolerDB;

type
  TFrm_Mobile = class(TForm)
    lyt_bady: TLayout;
    lyt2: TLayout;
    lyt_nome: TLayout;
    edt_Usuario: TEdit;
    lyt_pass: TLayout;
    edt_senha: TEdit;
    lyt_login: TLayout;
    lyt_face: TLayout;
    lbl1: TLabel;
    TMSFMXImage1: TTMSFMXImage;
    TMSFMXImage2: TTMSFMXImage;
    tbc_geral: TTabControl;
    tbtm_LOGIN: TTabItem;
    lyt_barra: TLayout;
    TMSFMXImage3: TTMSFMXImage;
    tbtm_MENU: TTabItem;
    rctngl1: TRectangle;
    lyt1: TLayout;
    lyt3: TLayout;
    lyt4: TLayout;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    TMSFMXImage4: TTMSFMXImage;
    lyt5: TLayout;
    GridPanelLayout1: TGridPanelLayout;
    TMSFMXImage5: TTMSFMXImage;
    TMSFMXImage6: TTMSFMXImage;
    BitmapListAnimation1: TBitmapListAnimation;
    TMSFMXImage7: TTMSFMXImage;
    TMSFMXImage8: TTMSFMXImage;
    lyt6: TLayout;
    lyt7: TLayout;
    lyt8: TLayout;
    btn2: TButton;
    tbtm_Entrada: TTabItem;
    tbtm_Foto: TTabItem;
    tbtm_Pdf: TTabItem;
    tbtm_Saida: TTabItem;
    rctngl2: TRectangle;
    rctngl3: TRectangle;
    rctngl4: TRectangle;
    rctngl5: TRectangle;
    lyt9: TLayout;
    lyt10: TLayout;
    btn3: TButton;
    lyt11: TLayout;
    btn4: TButton;
    lyt12: TLayout;
    lyt13: TLayout;
    btn5: TButton;
    lyt14: TLayout;
    btn6: TButton;
    lyt15: TLayout;
    lyt16: TLayout;
    btn7: TButton;
    lyt17: TLayout;
    btn8: TButton;
    lyt18: TLayout;
    lyt19: TLayout;
    btn9: TButton;
    lyt20: TLayout;
    btn10: TButton;
    DTBase1: TRESTDWDataBase;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    chk1: TCheckBox;
    lyt21: TLayout;
    TMSFMXImage9: TTMSFMXImage;
    lyt22: TLayout;
    lyt23: TLayout;
    lyt24: TLayout;
    procedure TMSFMXImage1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure TMSFMXImage5Click(Sender: TObject);
    procedure TMSFMXImage6Click(Sender: TObject);
    procedure TMSFMXImage7Click(Sender: TObject);
    procedure TMSFMXImage8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Mobile: TFrm_Mobile;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TFrm_Mobile.btn1Click(Sender: TObject);
begin
  tbc_geral.ActiveTab:=tbtm_MENU;
end;

procedure TFrm_Mobile.btn2Click(Sender: TObject);
begin
Close;
end;

procedure TFrm_Mobile.FormCreate(Sender: TObject);
begin
  tbc_geral.ActiveTab:=tbtm_LOGIN;
  tbc_geral.TabPosition:=TTabPosition.None;
end;

procedure TFrm_Mobile.TMSFMXImage1Click(Sender: TObject);
begin

   tbc_geral.ActiveTab:=tbtm_MENU;



end;

procedure TFrm_Mobile.TMSFMXImage5Click(Sender: TObject);
begin
   tbc_geral.ActiveTab:=tbtm_Entrada;

end;

procedure TFrm_Mobile.TMSFMXImage6Click(Sender: TObject);
begin
   tbc_geral.ActiveTab:=tbtm_Foto;
end;

procedure TFrm_Mobile.TMSFMXImage7Click(Sender: TObject);
begin
  tbc_geral.ActiveTab:=tbtm_Pdf;
end;

procedure TFrm_Mobile.TMSFMXImage8Click(Sender: TObject);
begin
   tbc_geral.ActiveTab:=tbtm_Saida;
end;

end.
