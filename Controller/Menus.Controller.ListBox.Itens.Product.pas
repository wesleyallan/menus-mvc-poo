unit Menus.Controller.ListBox.Itens.Product;

interface

uses
  Menus.Controller.ListBox.Interfaces, FMX.Types;

type
  TControllerListBoxItensProduct = class(TInterfacedObject, IControllerListBoxItemForm)
    constructor Create;
    destructor Destroy; override;
    class function New : IControllerListBoxItemForm;
    function Show : TFMXObject;
    procedure OnClick(Sender : TObject);
  end;

implementation

{ TControllerListBoxItensProduto }

uses
  Menus.Controller.ListBox.Itens.Factory, Menus.Controller.Forms.Default;

constructor TControllerListBoxItensProduct.Create;
begin
end;

destructor TControllerListBoxItensProduct.Destroy;
begin
  inherited;
end;

class function TControllerListBoxItensProduct.New: IControllerListBoxItemForm;
begin
  Result := Self.Create;
end;

procedure TControllerListBoxItensProduct.OnClick(Sender: TObject);
begin
  TControllerFormDefault.CreateForm('TfrmProduct');
end;

function TControllerListBoxItensProduct.Show: TFMXObject;
begin
  Result := TControllerListBoxItensFactory.New
              .Default
              .Name('btnProdutos')
              .Text('Produtos')
              .OnClick(OnClick)
              .Item;
end;

end.
