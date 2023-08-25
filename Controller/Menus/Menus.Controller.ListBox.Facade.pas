unit Menus.Controller.ListBox.Facade;

interface

uses
  Menus.Controller.ListBox.Interfaces;

type
  TControllerListBoxFacade = class(TInterfacedObject, IControllerListBoxFacade)
  private
    FListBox : IControllerListBoxFactory;
    FListBoxItens : IControllerListBoxItensFactory;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : IControllerListBoxFacade;
    function ListBox : IControllerListBoxFactory;
    function ListBoxItem : IControllerListBoxItensFactory;
  end;

implementation

uses
  Menus.Controller.ListBox.Factory, Menus.Controller.ListBox.Itens.Factory;

{ TControllerListBoxFacade }

constructor TControllerListBoxFacade.Create;
begin
end;

destructor TControllerListBoxFacade.Destroy;
begin
  inherited;
end;

function TControllerListBoxFacade.ListBox: IControllerListBoxFactory;
begin
  FListBox := TControllerListBoxFactory.New;
  Result := FListBox;
end;

function TControllerListBoxFacade.ListBoxItem: IControllerListBoxItensFactory;
begin
  FListBoxItens := TControllerListBoxItensFactory.New;
  Result := FListBoxItens;
end;

class function TControllerListBoxFacade.New: IControllerListBoxFacade;
begin
  Result := Self.Create;
end;

end.
