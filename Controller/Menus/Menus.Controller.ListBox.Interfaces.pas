unit Menus.Controller.ListBox.Interfaces;

interface

uses
  System.Classes, FMX.Types;

type
  IControllerListBoxItensDefault = interface;
  IControllerListBoxDefault = interface;
  IControllerListBoxItemForm = interface;
  IControllerListBoxMenu = interface;

  IControllerListBoxItensFactory = interface
    ['{C518E9E0-FA2C-4192-B39E-AFADCE391856}']
    function Default : IControllerListBoxItensDefault;
    function Product : IControllerListBoxItemForm;
    function Client : IControllerListBoxItemForm;
  end;

  IControllerListBoxFactory = interface
    ['{2CF9C5AF-450E-4BAC-92C5-53A7E8C9127C}']
    function Default(Container : TComponent) : IControllerListBoxDefault;
    function Main(Container : TComponent) : IControllerListBoxMenu;
    function Product(Container : TComponent) : IControllerListBoxMenu;
    function Client(Container : TCOmponent) : IControllerListBoxMenu;
  end;

  IControllerListBoxItensDefault = interface
    ['{CC877695-D775-442B-913C-206DB7704153}']
    function Name(Value : string) : IControllerListBoxItensDefault;
    function Text(Value : string) : IControllerListBoxItensDefault;
    function StyleLookup(Value : string) : IControllerListBoxItensDefault;
    function OnClick(Value : TNotifyEvent): IControllerListBoxItensDefault;
    function Item : TFMXObject;
  end;

  IControllerListBoxDefault = interface
    ['{5ACF0263-F708-4B76-927E-BE239C08ACED}']
    function Name(Value : string) : IControllerListBoxDefault;
    function Align(Value : TAlignLayout) : IControllerListBoxDefault;
    function ItemHeight(Value : integer) : IControllerListBoxDefault;
    function AddItem(Value : TFMXObject) : IControllerListBoxDefault;
    function List : TFMXObject;
    procedure Show;
  end;

  IControllerListBoxItemForm = interface
    ['{4327BA1D-D3F8-44F2-BC51-ABAA2A02FBBA}']
    function Show : TFMXObject;
  end;

  IControllerListBoxMenu = interface
    ['{CC490D63-34CB-4B51-903B-EB5428E93A61}']
    procedure Show;
  end;

  IControllerListBoxFacade = interface
    ['{B84DA150-95BC-400D-8DFB-B6CA483B434B}']
    function ListBox : IControllerListBoxFactory;
    function ListBoxItem : IControllerListBoxItensFactory;
  end;

implementation

end.
