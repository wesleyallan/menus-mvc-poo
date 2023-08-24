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
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

uses
  Menus.Controller.ListBox.Factory;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  {$IFDEF FIREDAC}
    lbVersion.Text := 'Conectado via FireDAC';
  {$ENDIF}
  {$IFDEF ZEOS}
    lbVersion:= 'Conectado com Zeos';
  {$ENDIF}

  TControllerListBoxFactory.New.Main(Layout1).Show;
end;

end.
