unit Menus.Model.Connections.Factory.Connection;

interface

uses
  {$IFDEF FIREDAC}
  Menus.Model.Connections.ConnectFiredac,
  {$ENDIF}
  Menus.Model.Connections.Interfaces;

type
  TModelConnectionsFactoryConnecton = class(TInterfacedObject, IModelFactoryConnection)
    constructor Create;
    destructor Destroy; override;
    class function New : IModelFactoryConnection;
    function ConnectionFireDac : IModelConnection;
  end;

implementation

{ TModelConnectionsFactoryConnecton }

function TModelConnectionsFactoryConnecton.ConnectionFireDac: IModelConnection;
begin
  {$IFDEF FIREDAC}
  Result := TModelConnectionFiredac.New;
  {$ENDIF}
end;

constructor TModelConnectionsFactoryConnecton.Create;
begin
end;

destructor TModelConnectionsFactoryConnecton.Destroy;
begin
  inherited;
end;

class function TModelConnectionsFactoryConnecton.New: IModelFactoryConnection;
begin
  Result := Self.Create;
end;

end.
