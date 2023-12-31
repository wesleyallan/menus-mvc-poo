unit Menus.Controller.ListBox.Product;

interface

uses Menus.Controller.ListBox.Interfaces, System.Classes;

type
  TControllerListBoxProduct = class(TInterfacedObject, IControllerListBoxMenu)
  private
    FContainer : TComponent;
  public
    constructor Create(Container : TComponent);
    destructor Destroy; override;
    class function New(Container : TComponent) : IControllerListBoxMenu;
    procedure Show;
  end;

implementation

{ TControllerListBoxProduct }

uses Menus.Controller.ListBox.Factory, Menus.Controller.ListBox.Itens.Factory;

constructor TControllerListBoxProduct.Create(Container: TComponent);
begin
  FContainer := Container;
end;

destructor TControllerListBoxProduct.Destroy;
begin
  inherited;
end;

class function TControllerListBoxProduct.New(
  Container: TComponent): IControllerListBoxMenu;
begin
  Result := Self.Create(Container);
end;

procedure TControllerListBoxProduct.Show;
begin
  TControllerListBoxFactory.New
    .Default(FContainer)
    .AddItem(TControllerListBoxItensFactory.New.Client.Show)
    .Show;
end;

end.
