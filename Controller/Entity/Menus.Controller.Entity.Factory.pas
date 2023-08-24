unit Menus.Controller.Entity.Factory;

interface

uses
  Menus.Controller.Entity.Interfaces;

type
  TControllerEntityFactory = class(TInterfacedObject, IControllerEntityFactory)
    constructor Create;
    destructor Destroy; override;
    class function New : IControllerEntityFactory;
    function Product : IControllerEntity;
  end;

implementation

{ TControllerEntityFactory }

uses
  Menus.Controller.Entity.Product;


constructor TControllerEntityFactory.Create;
begin
end;

destructor TControllerEntityFactory.Destroy;
begin
  inherited;
end;

class function TControllerEntityFactory.New: IControllerEntityFactory;
begin
  Result := Self.Create;
end;

function TControllerEntityFactory.Product: IControllerEntity;
begin
  Result := TControllerEntityProduct.New;
end;

end.
