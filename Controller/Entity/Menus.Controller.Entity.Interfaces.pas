unit Menus.Controller.Entity.Interfaces;

interface

uses
  Data.DB;

type
  IControllerEntity = interface
    ['{374C0241-6E0A-4E35-ABF0-5F0C8EB0B797}']
    function List(aDataSource : TDataSource) : IControllerEntity;
  end;

  IControllerEntityFactory = interface
    ['{434E71A1-47E3-45C8-A32E-0293AEDC1FD0}']
    function Product : IControllerEntity;
  end;

implementation

end.
