unit Menus.Model.Connections.Factory.DataSet;

interface

uses Menus.Model.Connections.Interfaces;

type
  TModelConnectionsFactoryDataSet = class(TInterfacedObject, IModelFactoryDataSet)
    constructor Create;
    destructor Destroy; override;
    class function New : IModelFactoryDataSet;
    function DataSetFireDac(Connection : IModelConnection) : IModelDataSet;
  end;

implementation

{ TModelConnectionsFactoryDataSet }

uses
  {$IFDEF FIREDAC}
  Menus.Model.Connections.TableFiredac;
  {$ENDIF}

constructor TModelConnectionsFactoryDataSet.Create;
begin
end;

function TModelConnectionsFactoryDataSet.DataSetFireDac(Connection : IModelConnection) : IModelDataSet;
begin
  {$IFDEF FIREDAC}
  Result := TModelConnectionsTableFireDac.New(Connection);
  {$ENDIF}
end;

destructor TModelConnectionsFactoryDataSet.Destroy;
begin
  inherited;
end;

class function TModelConnectionsFactoryDataSet.New: IModelFactoryDataSet;
begin
  Result := Self.Create;
end;

end.
