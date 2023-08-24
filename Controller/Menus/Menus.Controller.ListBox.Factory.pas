unit Menus.Controller.ListBox.Factory;

interface

uses
  Menus.Controller.ListBox.Interfaces, System.Classes;

type
  TControllerListBoxFactory = class(TInterfacedObject, IControllerListBoxFactory)
    constructor Create;
    destructor Destroy; override;
    class function New : IControllerListBoxFactory;
    function Default(Container : TComponent) : IControllerListBoxDefault;
    function Main(Container : TComponent) : IControllerListBoxMenu;
    function Product(Container : TComponent) : IControllerListBoxMenu;
    function Client(Container : TComponent) : IControllerListBoxMenu;
  end;

implementation

{ TControlerListBoxFactory }

uses
  Menus.Controller.ListBox.Main, Menus.Controller.ListBox.Default,
  Menus.Controller.ListBox.Product, Menus.Controller.ListBox.Client;

function TControllerListBoxFactory.Client(
  Container: TComponent): IControllerListBoxMenu;
begin
  Result := TControllerListBoxClient.New(Container);
end;

constructor TControllerListBoxFactory.Create;
begin
end;

function TControllerListBoxFactory.Default(
  Container: TComponent): IControllerListBoxDefault;
begin
  Result := TControllerListBoxDefault.New(Container);
end;

destructor TControllerListBoxFactory.Destroy;
begin
  inherited;
end;

function TControllerListBoxFactory.Main(
  Container: TComponent): IControllerListBoxMenu;
begin
  Result := TControllerListBoxMain.New(Container);
end;

class function TControllerListBoxFactory.New: IControllerListBoxFactory;
begin
  Result := Self.Create;
end;

function TControllerListBoxFactory.Product(
  Container: TComponent): IControllerListBoxMenu;
begin
  Result := TControllerListBoxProduct.New(Container);
end;

end.
