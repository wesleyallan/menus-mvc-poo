unit Menus.Controller.ListBox.Client;

interface

uses Menus.Controller.ListBox.Interfaces, System.Classes;

type
  TControllerListBoxClient = class(TInterfacedObject, IControllerListBoxMenu)
  private
    FContainer : TComponent;
  public
    constructor Create(Container : TComponent);
    destructor Destroy; override;
    class function New(Container : TComponent) : IControllerListBoxMenu;
    procedure Show;
  end;

implementation

{ TControllerListBoxClient }

uses
  Menus.Controller.ListBox.Factory, Menus.Controller.ListBox.Itens.Factory;

constructor TControllerListBoxClient.Create(Container: TComponent);
begin
  FContainer := Container;
end;

destructor TControllerListBoxClient.Destroy;
begin
  inherited;
end;

class function TControllerListBoxClient.New(
  Container: TComponent): IControllerListBoxMenu;
begin
  Result := Self.Create(Container);
end;

procedure TControllerListBoxClient.Show;
begin
  TControllerListBoxFactory.New
    .Default(FContainer)
    .AddItem(TControllerListBoxItensFactory.New.Product.Show)
    .Show;
end;

end.
