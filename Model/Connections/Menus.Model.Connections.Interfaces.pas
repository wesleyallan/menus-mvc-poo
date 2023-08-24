unit Menus.Model.Connections.Interfaces;

interface

uses
  System.Classes;

type
  IModelConnectionParams = interface;

  IModelConnection = interface
    ['{0BD0485F-506E-4A4F-97D4-CA2AAC2D6260}']
    function Connect : IModelConnection;
    function EndConnection : TComponent;
    function Params : IModelConnectionParams;
  end;

  IModelConnectionParams = interface
    ['{13AB7890-A4F4-4E2F-99DC-0C53551D2E93}']
    function DataBase(Value : string) : IModelConnectionParams;
    function UserName(Value : string) : IModelConnectionParams;
    function Password(Value : string) : IModelConnectionParams;
    function DriverID(Value : string) : IModelConnectionParams;
    function Server(Value : string) : IModelConnectionParams;
    function Porta(Value : Integer) : IModelConnectionParams;
    function EndParams : IModelConnection;
  end;

  IModelDataSet = interface
    ['{FC1C15A0-C2B5-4165-A6ED-93E94CBE5727}']
    function Open(aTable : string) : IModelDataSet;
    function EndDataSet : TComponent;
  end;

  IModelFactoryConnection = interface
    ['{F259D7AA-BE92-4742-B062-498C09777351}']
    function ConnectionFireDac : IModelConnection;
  end;

  IModelFactoryDataSet = interface
    ['{A9B3D59B-EF39-4C32-8467-A829F268DDBE}']
    function DataSetFireDac(Connection : IModelConnection) : IModelDataSet;
  end;

implementation

end.
