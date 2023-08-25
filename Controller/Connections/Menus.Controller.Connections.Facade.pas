unit Menus.Controller.Connections.Facade;

interface

uses
  Menus.Controller.Connections.Interfaces, Menus.Model.Connections.Interfaces;

type
  TControllerConnectionsFacade = class(TInterfacedObject, IControllerConnectionsFacade)
  private
    FConnection : IModelConnection;
    FDataSet : IModelDataSet;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : IControllerConnectionsFacade;
    function IConnection : IModelConnection;
    function IDataset : IModelDataSet;
  end;

implementation

{ TControllerConnectionsFacade }

uses Menus.Controller.Connections.Factory.Connection,
  Menus.Controller.Connections.Factory.DataSet;

constructor TControllerConnectionsFacade.Create;
begin
  FConnection := TControllerConnectionsFactoryConnection.New.Connection.Connect;
  FDataset := TControllerConnectionsFactoryDataSet.New.DataSet(FConnection);
end;

destructor TControllerConnectionsFacade.Destroy;
begin
  inherited;
end;

function TControllerConnectionsFacade.IConnection: IModelConnection;
begin
  Result := FConnection;
end;

function TControllerConnectionsFacade.IDataset: IModelDataSet;
begin
  Result := FDataSet;
end;

class function TControllerConnectionsFacade.New: IControllerConnectionsFacade;
begin
  Result := Self.Create;
end;

end.
