unit Menus.Controller.Facade;

interface

uses
  Menus.Controller.Interfaces, Menus.Controller.Connections.Interfaces,
  Menus.Controller.Entity.Interfaces, Menus.Controller.ListBox.Interfaces;

type
  TControllerFacade = class(TInterfacedObject, IControllerFacade)
  private
    FConnection : IControllerConnectionsFacade;
    FEntity : IControllerEntityFacade;
    FMenu : IControllerListBoxFacade;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : IControllerFacade;
    function Connection : IControllerConnectionsFacade;
    function Entity : IControllerEntityFacade;
    function Menu : IControllerListBoxFacade;
  end;

implementation

{ TControllerFacade }

uses
  Menus.Controller.Connections.Facade, Menus.Controller.Entity.Facade,
  Menus.Controller.ListBox.Facade;

function TControllerFacade.Connection: IControllerConnectionsFacade;
begin
  FConnection := TControllerConnectionsFacade.New;
  Result := FConnection;
end;

constructor TControllerFacade.Create;
begin
end;

destructor TControllerFacade.Destroy;
begin
  inherited;
end;

function TControllerFacade.Entity: IControllerEntityFacade;
begin
  FEntity := TControllerEntityFacade.New;
  Result := FEntity;
end;

function TControllerFacade.Menu: IControllerListBoxFacade;
begin
  FMenu := TControllerListBoxFacade.New;
  Result := FMenu;
end;

class function TControllerFacade.New: IControllerFacade;
begin
  Result := Self.Create;
end;

end.
