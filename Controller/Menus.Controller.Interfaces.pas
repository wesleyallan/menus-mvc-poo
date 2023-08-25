unit Menus.Controller.Interfaces;

interface

uses
  Menus.Controller.Connections.Interfaces, Menus.Controller.Entity.Interfaces,
  Menus.Controller.ListBox.Interfaces;

type
  IControllerFacade = interface
    ['{A659DDC4-D3A0-4870-80F1-494B26BCF67E}']
    function Connection : IControllerConnectionsFacade;
    function Entity : IControllerEntityFacade;
    function Menu : IControllerListBoxFacade;
  end;

implementation

end.
