unit Menus.Model.Connections.ConnectFiredac;

interface

uses
  System.Classes, FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.FB,
  Menus.Model.Connections.Interfaces, FireDAC.Stan.Intf, FireDAC.Stan.Def,
  FireDac.DApt;

type
  TModelConnectionFiredac = class(TInterfacedObject, IModelConnection, IModelConnectionParams)
  private
    FConnection : TFDConnection;
    FDGUIxWaitCursor : TFDGUIxWaitCursor;
    FDPhysFBDriverLink : TFDPhysFBDriverLink;
    FDataBase : string;
    FUserName : string;
    FPassword : string;
    FDriverID : string;
    FServer : string;
    FPorta : Integer;
    procedure ReadParameters;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : IModelConnection;
    function EndConnection : TComponent;
    function Params : IModelConnectionParams;
    function DataBase(Value : string) : IModelConnectionParams;
    function UserName(Value : string) : IModelConnectionParams;
    function Password(Value : string) : IModelConnectionParams;
    function DriverID(Value : string) : IModelConnectionParams;
    function Server(Value : string) : IModelConnectionParams;
    function Porta(Value : Integer) : IModelConnectionParams;
    function Connect : IModelConnection;
    function EndParams : IModelConnection;
  end;

implementation

uses
  System.SysUtils;

{ TModelConnectionFiredac }

function TModelConnectionFiredac.Connect: IModelConnection;
begin
  ReadParameters;
  FConnection.Connected := True;
  Result := Self;
end;

constructor TModelConnectionFiredac.Create;
begin
  FConnection := TFDConnection.Create(nil);
  FDGUIxWaitCursor := TFDGUIxWaitCursor.Create(nil);
  FDPhysFBDriverLink := TFDPhysFBDriverLink(nil);
end;

function TModelConnectionFiredac.DataBase(
  Value: string): IModelConnectionParams;
begin
  FDataBase := Value;
  Result := Self;
end;

destructor TModelConnectionFiredac.Destroy;
begin
  FConnection.Free;
  FDGUIxWaitCursor.Free;
  FDPhysFBDriverLink.Free;
  inherited;
end;

function TModelConnectionFiredac.DriverID(
  Value: string): IModelConnectionParams;
begin
  FDriverID := Value;
  Result := Self;
end;

function TModelConnectionFiredac.EndConnection: TComponent;
begin
  Result := FConnection;
end;

function TModelConnectionFiredac.EndParams: IModelConnection;
begin
  Result := Self;
end;

procedure TModelConnectionFiredac.ReadParameters;
begin
  FConnection.Params.Database := FDataBase;
  FConnection.Params.UserName := FUserName;
  FConnection.Params.Password := FPassword;
  FConnection.Params.DriverID := FDriverID;
  FConnection.Params.Add('Server=' + FServer);
  FConnection.Params.Add('Port=' + IntToStr(FPorta));
end;

class function TModelConnectionFiredac.New: IModelConnection;
begin
  Result := Self.Create;
end;

function TModelConnectionFiredac.Params: IModelConnectionParams;
begin
  Result := Self;
end;

function TModelConnectionFiredac.Password(
  Value: string): IModelConnectionParams;
begin
  FPassword := Value;
  Result := Self;
end;

function TModelConnectionFiredac.Porta(Value: Integer): IModelConnectionParams;
begin
  FPorta := Value;
  Result := Self;
end;

function TModelConnectionFiredac.Server(Value: string): IModelConnectionParams;
begin
  FServer := Value;
  Result := Self;
end;

function TModelConnectionFiredac.UserName(
  Value: string): IModelConnectionParams;
begin
  FUserName := Value;
  Result := Self;
end;

end.
