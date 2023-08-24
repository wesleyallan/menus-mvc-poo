unit Menus.Model.Entity.Factory;

interface

uses
  Menus.Model.Entity.Interfaces, Menus.Model.Connections.Interfaces;

type
  TModelEntityFactory = class(TInterfacedObject, IModelEntityFactory)
    constructor Create;
    destructor Destroy; override;
    class function New : IModelEntityFactory;
    function Products(DataSet : IModelDataSet) : IModelEntity;
  end;

implementation

{ TModelEntityFactory }

uses
  Menus.Model.Entity.Products;

constructor TModelEntityFactory.Create;
begin
end;

destructor TModelEntityFactory.Destroy;
begin
  inherited;
end;

class function TModelEntityFactory.New: IModelEntityFactory;
begin
  Result := Self.Create;
end;

function TModelEntityFactory.Products(DataSet : IModelDataSet) : IModelEntity;
begin
  Result := TModelEntityProducts.New(DataSet);
end;

end.
