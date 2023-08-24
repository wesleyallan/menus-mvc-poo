unit Menus.Controller.ListBox.Default;

interface

uses
  Menus.Controller.ListBox.Interfaces, FMX.ListBox, FMX.Types, System.Classes;

type
  TControllerListBoxDefault = class(TInterfacedObject, IControllerListBoxDefault)
  private
    FContainer : TComponent;
    FListBox : TListBox;
  public
    constructor Create(Container : TComponent);
    destructor Destroy; override;
    class function New(Container : TComponent) : IControllerListBoxDefault;
    function Name(Value : string) : IControllerListBoxDefault;
    function Align(Value : TAlignLayout) : IControllerListBoxDefault;
    function ItemHeight(Value : integer) : IControllerListBoxDefault;
    function AddItem(Value : TFMXObject) : IControllerListBoxDefault;
    function List : TFMXObject;
    procedure Show;
  end;

implementation

{ TControllerListBoxDefault }

uses
  FMX.Layouts;

function TControllerListBoxDefault.AddItem(
  Value: TFMXObject): IControllerListBoxDefault;
begin
  FListBox.AddObject(Value);
  Result := Self;
end;

function TControllerListBoxDefault.Align(
  Value: TAlignLayout): IControllerListBoxDefault;
begin
  FListBox.Align := Value;
  Result := Self;
end;

constructor TControllerListBoxDefault.Create(Container : TComponent);
begin
  FContainer := Container;
  FListBox := TListBox.Create(nil);
  FListBox.Name := 'ListDefault';
  FListBox.Align := TAlignLayout.Client;
  FListBox.ItemHeight := 60;
end;

destructor TControllerListBoxDefault.Destroy;
begin
  inherited;
end;

function TControllerListBoxDefault.ItemHeight(
  Value: integer): IControllerListBoxDefault;
begin
  FListBox.ItemHeight := Value;
  Result := Self;
end;

function TControllerListBoxDefault.List: TFMXObject;
begin
  Result := FListBox;
end;

function TControllerListBoxDefault.Name(
  Value: string): IControllerListBoxDefault;
begin
  FListBox.Name := Value;
  Result := Self;
end;

class function TControllerListBoxDefault.New(Container : TComponent) : IControllerListBoxDefault;
begin
  Result := Self.Create(Container);
end;

procedure TControllerListBoxDefault.Show;
begin
  TLayout(FContainer).AddObject(FListBox);
end;

end.
