unit Menus.Controller.ListBox.Itens.Client;

interface

uses Menus.Controller.ListBox.Interfaces, FMX.Types;

type
  TControllerListBoxItensClient = class(TInterfacedObject, IControllerListBoxItemForm)
    constructor Create;
    destructor Destroy; override;
    class function New : IControllerListBoxItemForm;
    function Show : TFMXObject;
    procedure OnClick(Sender : TObject);
  end;

implementation

{ TControllerListBoxItensClient }

uses
  Menus.Controller.ListBox.Itens.Factory, Menus.View.Client,
  Menus.Controller.Forms.Default;

constructor TControllerListBoxItensClient.Create;
begin
end;

destructor TControllerListBoxItensClient.Destroy;
begin
  inherited;
end;

class function TControllerListBoxItensClient.New: IControllerListBoxItemForm;
begin
  Result := Self.Create;
end;

procedure TControllerListBoxItensClient.OnClick(Sender: TObject);
begin
  TControllerFormDefault.CreateForm('TfrmClient');
end;

function TControllerListBoxItensClient.Show: TFMXObject;
begin
  Result := TControllerListBoxItensFactory.New
              .Default
              .Name('btnCliente')
              .Text('Cliente')
              .OnClick(OnClick)
              .Item;
end;

end.
