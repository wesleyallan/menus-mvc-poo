unit Menus.Model.Entity.Products;

interface

uses Menus.Model.Entity.Interfaces, System.Classes,
  Menus.Model.Connections.Interfaces;

type
  TModelEntityProducts = class(TInterfacedObject, IModelEntity)
  private
    FDataset : IModelDataSet;
  public
    constructor Create(DataSet : IModelDataSet);
    destructor Destroy; override;
    class function New(DataSet : IModelDataSet) : IModelEntity;
    function List : TComponent;
  end;

implementation

{ TModelEntityProducts }

const
  FTABLENAME = 'PRODUCTS';

constructor TModelEntityProducts.Create(DataSet : IModelDataSet);
begin
  FDataSet := DataSet;
end;

destructor TModelEntityProducts.Destroy;
begin
  inherited;
end;

function TModelEntityProducts.List: TComponent;
begin
  Result := FDataSet.Open(FTABLENAME).EndDataSet;
end;

class function TModelEntityProducts.New(DataSet : IModelDataSet) : IModelEntity;
begin
  Result := Self.Create(DataSet);
end;

end.
