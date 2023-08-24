unit Menus.Model.Connections.TableFiredac;

interface

uses
  Menus.Model.Connections.Interfaces, FireDAC.Comp.Client, System.Classes;

type
  TModelConnectionsTableFireDac = class(TInterfacedObject, IModelDataSet)
  private
    FTable : TFDTable;
  public
    constructor Create(Connection : IModelConnection);
    destructor Destroy; override;
    class function New(Connection : IModelConnection) : IModelDataSet;
    function Open(aTable : string) : IModelDataSet;
    function EndDataSet : TComponent;
  end;

implementation

{ TModelConnectionsTableFireDac }

constructor TModelConnectionsTableFireDac.Create(Connection : IModelConnection);
begin
  FTable := TFDTable.Create(nil);
  FTable.Connection := (Connection.EndConnection as TFDConnection);
end;

destructor TModelConnectionsTableFireDac.Destroy;
begin
  FTable.Free;
  inherited;
end;

function TModelConnectionsTableFireDac.EndDataSet: TComponent;
begin
  Result := FTable;
end;

class function TModelConnectionsTableFireDac.New(Connection : IModelConnection) : IModelDataSet;
begin
  Result := Self.Create(Connection);
end;

function TModelConnectionsTableFireDac.Open(aTable: string): IModelDataSet;
begin
  FTable.Open(ATable);
  Result := Self;
end;

end.
