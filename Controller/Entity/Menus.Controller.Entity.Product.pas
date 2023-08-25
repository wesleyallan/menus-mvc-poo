unit Menus.Controller.Entity.Product;

interface

uses
  Menus.Controller.Entity.Interfaces, Menus.Model.Connections.Interfaces,
  Menus.Model.Entity.Interfaces, Data.DB,
  Menus.Controller.Connections.Interfaces;

type
  TControllerEntityProduct = class(TInterfacedObject, IControllerEntity)
  private
    FFacade : IControllerConnectionsFacade;
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
  Menus.Model.Entity.Factory, Menus.Controller.Connections.Facade;

constructor TControllerEntityProduct.Create;
begin
  FFacade := TControllerConnectionsFacade.New;
  FEntity := TModelEntityFactory.New.Products(FFacade.IDataset);
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
