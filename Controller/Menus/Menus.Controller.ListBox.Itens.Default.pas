unit Menus.Controller.ListBox.Itens.Default;

interface

uses Menus.Controller.ListBox.Interfaces, FMX.ListBox, FMX.Types, System.Classes;

type
  TControllerListBoxItensDefault = class(TInterfacedObject, IControllerListBoxItensDefault)
  private
    FListBoxItem : TListBoxItem;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : IControllerListBoxItensDefault;
    function Name(Value : string) : IControllerListBoxItensDefault;
    function Text(Value : string) : IControllerListBoxItensDefault;
    function StyleLookup(Value : string) : IControllerListBoxItensDefault;
    function OnClick(Value : TNotifyEvent): IControllerListBoxItensDefault;
    function Item : TFMXObject;
  end;

implementation

{ TControllerListBoxItensDefault }

constructor TControllerListBoxItensDefault.Create;
begin
  FListBoxItem := TListBoxItem.Create(nil);
  FListBoxItem.Name := 'btnDefault';
  FListBoxItem.Text := 'Default';
  FListBoxItem.StyleLookup := 'listboxitemdetaillabel';
end;

destructor TControllerListBoxItensDefault.Destroy;
begin
  inherited;
end;

function TControllerListBoxItensDefault.Item: TFMXObject;
begin
  Result := FListBoxItem;
end;

function TControllerListBoxItensDefault.Name(
  Value: string): IControllerListBoxItensDefault;
begin
  FListBoxItem.Name := value;
  Result := Self;
end;

class function TControllerListBoxItensDefault.New: IControllerListBoxItensDefault;
begin
  Result := Self.Create;
end;

function TControllerListBoxItensDefault.OnClick(
  Value: TNotifyEvent): IControllerListBoxItensDefault;
begin
  FListBoxItem.OnClick := Value;
  Result := Self;
end;

function TControllerListBoxItensDefault.StyleLookup(
  Value: string): IControllerListBoxItensDefault;
begin
  FListBoxItem.StyleLookup := value;
  Result := Self;
end;

function TControllerListBoxItensDefault.Text(
  Value: string): IControllerListBoxItensDefault;
begin
  FListBoxItem.Text := value;
  Result := Self;
end;

end.
