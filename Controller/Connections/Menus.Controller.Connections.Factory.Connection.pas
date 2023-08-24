unit Menus.Controller.Connections.Factory.Connection;

interface

uses
  Menus.Controller.Connections.Interfaces, Menus.Model.Connections.Interfaces;

type
  TControllerConnectionsFactoryConnection = class(TInterfacedObject, IControllerFactoryConnection)
    constructor Create;
    destructor Destroy; override;
    class function New : IControllerFactoryConnection;
    function Connection : IModelConnection;
  end;

implementation

{ TControllerConnectionsFactoryConnection }

uses
    Menus.Model.Connections.Factory.Connection;

function TControllerConnectionsFactoryConnection.Connection: IModelConnection;
begin
  {$IFDEF FIREDAC}
  Result := TModelConnectionsFactoryConnecton.New.ConnectionFireDac
              .Params
                .DataBase('C:\Bancos\Firebird\TESTE.FDB')
                .UserName('SYSDBA')
                .Password('MATERKEY')
                .DriverID('FB')
                .Server('localhost')
                .Porta(3050)
              .EndParams
              .Connect;
  {$ENDIF}
end;

constructor TControllerConnectionsFactoryConnection.Create;
begin
end;

destructor TControllerConnectionsFactoryConnection.Destroy;
begin
  inherited;
end;

class function TControllerConnectionsFactoryConnection.New: IControllerFactoryConnection;
begin
  Result := Self.Create;
end;

end.
