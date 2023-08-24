unit Menus.Model.Entity.Interfaces;

interface

uses
  Menus.Model.Connections.Interfaces, System.Classes;

type
  IModelEntity = interface
    ['{C03F58A4-1E80-439F-88CA-2754BAEA9932}']
    function List : TComponent;
  end;

  IModelEntityFactory = interface
    ['{95BF1321-241E-43EA-85DC-769C5972E9A1}']
    function Products(DataSet : IModelDataSet) : IModelEntity;
  end;

implementation

end.
