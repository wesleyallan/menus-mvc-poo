unit Menus.View.Client;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts;

type
  TfrmClient = class(TForm)
    ToolBar1: TToolBar;
    lbClient: TLabel;
    Layout1: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClient: TfrmClient;

implementation

{$R *.fmx}

uses
  Menus.Controller.Facade;

procedure TfrmClient.FormCreate(Sender: TObject);
begin
  TControllerFacade.New.Menu.ListBox.Client(Layout1).Show;
end;

initialization
  RegisterFmxClasses([TfrmClient]);

end.
