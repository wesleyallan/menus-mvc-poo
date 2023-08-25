unit Menus.View.Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmMain = class(TForm)
    Layout1: TLayout;
    lbVersion: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    procedure ShowConnectionConfig;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

uses
  Menus.Controller.Facade;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  ShowConnectionConfig;
  TControllerFacade.New.Menu.ListBox.Main(Layout1).Show;
end;

procedure TfrmMain.ShowConnectionConfig;
begin
  {$IFDEF FIREDAC}
    lbVersion.Text := 'Conectado via FireDAC';
  {$ENDIF}
  {$IFDEF ZEOS}
    lbVersion:= 'Conectado com Zeos';
  {$ENDIF}

end;

end.
