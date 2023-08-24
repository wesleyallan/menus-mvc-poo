unit Menus.Controller.Entity.Product;

interface

uses
  Menus.Controller.Entity.Interfaces, Menus.Model.Connections.Interfaces,
  Menus.Model.Entity.Interfaces, Data.DB;

type
  TControllerEntityProduct = class(TInterfacedObject, IControllerEntity)
  private
    FConnection : IModelConnection;
    FDataSet : IModelDataSet;
    FEntity :  IModelEntity;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : IControllerEntity;
    function List(aDataSource : TDataSource) : IControllerEntity;
  end;

implementation

{ TControllerEntityProduct }

uses
  Menus.Controller.Connections.Factory.Connection, Menus.Controller.Connections.Factory.DataSet,
  Menus.Model.Entity.Factory;

constructor TControllerEntityProduct.Create;
begin
  FConnection := TControllerConnectionsFactoryConnection.New.Connection;
  FDataSet := TControllerConnectionsFactoryDataSet.New.DataSet(FConnection);
  FEntity := TModelEntityFactory.New.Products(FDataSet);
end;

destructor TControllerEntityProduct.Destroy;
begin
  inherited;
end;

function TControllerEntityProduct.List(
  aDataSource: TDataSource): IControllerEntity;
begin
  aDataSource.DataSet := TDataSet(FEntity.List);
  Result := Self;
end;

class function TControllerEntityProduct.New: IControllerEntity;
begin
  Result := Self.Create;
end;

end.
