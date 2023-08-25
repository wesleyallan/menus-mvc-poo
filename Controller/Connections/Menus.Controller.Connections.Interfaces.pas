unit Menus.Controller.Connections.Interfaces;

interface

uses
  Menus.Model.Connections.Interfaces;

type
  IControllerFactoryConnection = interface
    ['{DC506C25-9682-4CA0-8580-EFF2446013EC}']
    function Connection : IModelConnection;
  end;

  IControllerFactoryDataSet = interface
    ['{0C459C46-8FD4-486D-8250-5D6EB81FD2CB}']
    function DataSet(Connection : IModelConnection) : IModelDataSet;
  end;

  IControllerConnectionsFacade = interface
    ['{F17FB23B-5D1A-4B29-BF8F-AFF21624A9AF}']
    function IConnection : IModelConnection;
    function IDataset : IModelDataSet;
  end;

implementation

end.
