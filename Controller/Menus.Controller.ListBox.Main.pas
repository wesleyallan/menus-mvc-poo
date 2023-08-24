unit Menus.Controller.ListBox.Main;

interface

uses
  Menus.Controller.ListBox.Interfaces, System.Classes;

type
  TControllerListBoxMain = class(TInterfacedObject, IControllerListBoxMenu)
  private
    FContainer : TComponent;
  public
    constructor Create(Container : TComponent);
    destructor Destroy; override;
    class function New(Container : TComponent) : IControllerListBoxMenu;
    procedure Show;
  end;

implementation

{ TControllerListBoxPrincipal }

uses Menus.Controller.ListBox.Factory, Menus.Controller.ListBox.Itens.Factory;

constructor TControllerListBoxMain.Create(Container: TComponent);
begin
  FContainer := Container;
end;

destructor TControllerListBoxMain.Destroy;
begin
  inherited;
end;

class function TControllerListBoxMain.New(
  Container: TComponent): IControllerListBoxMenu;
begin
  Result := Self.Create(Container);
end;

procedure TControllerListBoxMain.Show;
begin
  TControllerListBoxFactory.New
    .Default(FContainer)
    .AddItem(TControllerListBoxItensFactory.New.Product.Show)
    .AddItem(TControllerListBoxitensFactory.New.Client.Show)
    .Show;
end;

end.
