unit Menus.View.Product;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Controls.Presentation, FMX.Types, System.Rtti,
  FMX.Grid.Style, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, FMX.Edit, FMX.ScrollBox, FMX.Grid,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, Data.DB,
  Menus.Controller.Entity.Interfaces;

type
  TfrmProduct = class(TForm)
    ToolBar1: TToolBar;
    lbProduct: TLabel;
    ltMenu: TLayout;
    DataSource1: TDataSource;
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    ltCrud: TLayout;
    edtShortDescription: TEdit;
    edtCode: TEdit;
    btnSave: TButton;
    btnEdit: TButton;
    btnDelete: TButton;
    brnNew: TButton;
    procedure FormCreate(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure btnEditClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure brnNewClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
    FEntity : IControllerEntity;
    procedure FillInData;
  public
    { Public declarations }
  end;

var
  frmProduct: TfrmProduct;

implementation

{$R *.fmx}

uses
  Menus.Controller.Facade;

procedure TfrmProduct.brnNewClick(Sender: TObject);
begin
  DataSource1.DataSet.Append;
end;

procedure TfrmProduct.btnDeleteClick(Sender: TObject);
begin
  DataSource1.DataSet.Delete;
end;

procedure TfrmProduct.btnEditClick(Sender: TObject);
begin
  DataSource1.DataSet.Edit;
end;

procedure TfrmProduct.btnSaveClick(Sender: TObject);
begin
  FillInData;
  DataSource1.DataSet.Post;
end;

procedure TfrmProduct.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  edtCode.Text := DataSource1.DataSet.FieldByName('CODIGO').AsString;
  edtShortDescription.Text := DataSource1.DataSet.FieldByName('DESCRICAO_ABREVIADA').AsString;
end;

procedure TfrmProduct.FillInData;
begin
  DataSource1.DataSet.FieldByName('CODIGO').Value := edtCode.Text;
  DataSource1.DataSet.FieldByName('DESCRICAO_ABREVIADA').Value := edtShortDescription.Text;
end;

procedure TfrmProduct.FormCreate(Sender: TObject);
begin
  TControllerFacade.New.Menu.ListBox.Product(ltMenu).Show;
  FEntity := TControllerFacade.New.Entity.Entity.Product.List(DataSource1);
end;

initialization
  RegisterFmxClasses([TfrmProduct]);

end.
