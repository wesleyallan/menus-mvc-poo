unit Menus.Controller.ListBox.Itens.Factory;

interface

uses
  Menus.Controller.ListBox.Interfaces;

type
  TControllerListBoxItensFactory = class(TInterfacedObject, IControllerListBoxItensFactory)
    constructor Create;
    destructor Destroy; override;
    class function New : IControllerListBoxItensFactory;
    function Default : IControllerListBoxItensDefault;
    function Product : IControllerListBoxItemForm;
    function Client : IControllerListBoxItemForm;
  end;

implementation

{ TControllerListBoxItensFactory }

uses
  Menus.Controller.ListBox.Itens.Default, Menus.Controller.ListBox.Itens.Product,
  Menus.Controller.ListBox.Itens.Client;

function TControllerListBoxItensFactory.Client: IControllerListBoxItemForm;
begin
  Result := TControllerListBoxItensClient.New;
end;

constructor TControllerListBoxItensFactory.Create;
begin

end;

function TControllerListBoxItensFactory.Default: IControllerListBoxItensDefault;
begin
  Result := TControllerListBoxItensDefault.New;
end;

destructor TControllerListBoxItensFactory.Destroy;
begin
  inherited;
end;

class function TControllerListBoxItensFactory.New: IControllerListBoxItensFactory;
begin
  Result := Self.Create;
end;

function TControllerListBoxItensFactory.Product: IControllerListBoxItemForm;
begin
  Result := TControllerListBoxItensProduct.New;
end;

end.
