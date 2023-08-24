program Menus;

uses
  System.StartUpCopy,
  FMX.Forms,
  Menus.View.Main in 'View\Menus.View.Main.pas' {frmMain},
  Menus.Controller.ListBox.Interfaces in 'Controller\Menus\Menus.Controller.ListBox.Interfaces.pas',
  Menus.Controller.ListBox.Itens.Factory in 'Controller\Menus\Menus.Controller.ListBox.Itens.Factory.pas',
  Menus.Controller.ListBox.Factory in 'Controller\Menus\Menus.Controller.ListBox.Factory.pas',
  Menus.Controller.ListBox.Itens.Default in 'Controller\Menus\Menus.Controller.ListBox.Itens.Default.pas',
  Menus.Controller.ListBox.Default in 'Controller\Menus\Menus.Controller.ListBox.Default.pas',
  Menus.Controller.ListBox.Itens.Product in 'Controller\Menus\Menus.Controller.ListBox.Itens.Product.pas',
  Menus.Controller.ListBox.Main in 'Controller\Menus\Menus.Controller.ListBox.Main.pas',
  Menus.Controller.ListBox.Itens.Client in 'Controller\Menus\Menus.Controller.ListBox.Itens.Client.pas',
  Menus.View.Product in 'View\Menus.View.Product.pas' {frmProduct},
  Menus.View.Client in 'View\Menus.View.Client.pas' {frmClient},
  Menus.Controller.ListBox.Product in 'Controller\Menus\Menus.Controller.ListBox.Product.pas',
  Menus.Controller.ListBox.Client in 'Controller\Menus\Menus.Controller.ListBox.Client.pas',
  Menus.Controller.Forms.Default in 'Controller\Forms\Menus.Controller.Forms.Default.pas',
  Menus.Model.Connections.Interfaces in 'Model\Connections\Menus.Model.Connections.Interfaces.pas',
  {$IFDEF FIREDAC}
  Menus.Model.Connections.ConnectFiredac in 'Model\Connections\Menus.Model.Connections.ConnectFiredac.pas',
  Menus.Model.Connections.TableFiredac in 'Model\Connections\Menus.Model.Connections.TableFiredac.pas',
  {$ENDIF }
  Menus.Model.Connections.Factory.Connection in 'Model\Connections\Menus.Model.Connections.Factory.Connection.pas',
  Menus.Model.Connections.Factory.DataSet in 'Model\Connections\Menus.Model.Connections.Factory.DataSet.pas',
  Menus.Model.Entity.Interfaces in 'Model\Entity\Menus.Model.Entity.Interfaces.pas',
  Menus.Model.Entity.Products in 'Model\Entity\Menus.Model.Entity.Products.pas',
  Menus.Model.Entity.Factory in 'Model\Entity\Menus.Model.Entity.Factory.pas',
  Menus.Controller.Connections.Interfaces in 'Controller\Connections\Menus.Controller.Connections.Interfaces.pas',
  Menus.Controller.Connections.Factory.Connection in 'Controller\Connections\Menus.Controller.Connections.Factory.Connection.pas',
  Menus.Controller.Connections.Factory.DataSet in 'Controller\Connections\Menus.Controller.Connections.Factory.DataSet.pas',
  Menus.Controller.Entity.Interfaces in 'Controller\Entity\Menus.Controller.Entity.Interfaces.pas',
  Menus.Controller.Entity.Product in 'Controller\Entity\Menus.Controller.Entity.Product.pas',
  Menus.Controller.Entity.Factory in 'Controller\Entity\Menus.Controller.Entity.Factory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
