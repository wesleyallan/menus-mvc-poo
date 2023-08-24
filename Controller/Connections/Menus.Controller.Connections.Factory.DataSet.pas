unit Menus.Controller.Connections.Factory.DataSet;

interface

uses
  Menus.Controller.Connections.Interfaces, Menus.Model.Connections.Interfaces;

type
  TControllerConnectionsFactoryDataSet = class(TInterfacedObject, IControllerFactoryDataSet)
    constructor Create;
    destructor Destroy; override;
    class function New : IControllerFactoryDataSet;
    function DataSet(Connection : IModelConnection) : IModelDataSet;
  end;

implementation

{ TControllerConnectionsFactoryDataSet }

uses
  Menus.Model.Connections.Factory.DataSet;

constructor TControllerConnectionsFactoryDataSet.Create;
begin
end;

function TControllerConnectionsFactoryDataSet.DataSet(Connection : IModelConnection): IModelDataSet;
begin
  {$IFDEF FIREDAC}
  Result := TModelConnectionsFactoryDataSet.New.DataSetFireDac(Connection);
  {$ENDIF}
end;

destructor TControllerConnectionsFactoryDataSet.Destroy;
begin
  inherited;
end;

class function TControllerConnectionsFactoryDataSet.New: IControllerFactoryDataSet;
begin
  Result := Self.Create;
end;

end.
