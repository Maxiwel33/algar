unit U_Modulo;

interface

uses
  System.SysUtils, System.Classes,uDWDatamodule, uDWAbout, uRESTDWServerEvents,
  uDWConsts, uDWJSONObject,System.Json;

type
  TDM = class(TServerMethodDataModule)
    DWEvents: TDWServerEvents;
    procedure DWEventsEventsgetfileReplyEventByType(var Params: TDWParams;
      var Result: string; const RequestType: TRequestType;
      var StatusCode: Integer; RequestHeader: TStringList);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TDM.DWEventsEventsgetfileReplyEventByType(var Params: TDWParams;
  var Result: string; const RequestType: TRequestType; var StatusCode: Integer;
  RequestHeader: TStringList);
  var
  body:TjsonValue;
  arq,parametro:string;
  ArqStream: TMemoryStream;
  Ret:uDWJsonObject.TJSONValue;

begin
    parametro:=Params.ItemsString['UNDEFINE'].AsString;
    body:=TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(parametro),0) as TJSONValue;
    arq:='c:\temp\files'+ body.GetValue<string>('Arquivo');
    body.DisposeOf;

   if FileExists(arq) then
   begin
   try
     StatusCode:=200;
     ArqStream:=TMemoryStream.Create;
     ArqStream.LoadFromFile(arq);
     ArqStream.Position:=0;

    Ret:= uDWJsonObject.TJSONValue.Create;
    Ret.LoadFromStream(ArqStream);
    Result:=Ret.ToJSON;
   finally
     ArqStream.DisposeOf;
     Ret.DisposeOf;
   end;
   end else
   begin
     StatusCode:=401;
     Result:='Arquivo nao contrado'+ arq;
   end;

   Result :='Hello Maxiwel';
end;

end.
