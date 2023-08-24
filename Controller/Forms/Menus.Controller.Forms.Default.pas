unit Menus.Controller.Forms.Default;

interface

type
  TControllerFormDefault = class
    class procedure CreateForm(ClassName : string);
  end;

implementation

{ TControllerFormDefault }

uses
  FMX.Types, System.Classes, FMX.Forms, System.SysUtils;

class procedure TControllerFormDefault.CreateForm(ClassName: string);
var
  ObjFMX : TFmxObjectClass;
  newForm : TCustomForm;
begin
  objFMX :=  TFmxObjectClass(GetClass(ClassName));

  try
    newForm := (objFMX.Create(nil) as TCustomForm);
    try
      newForm.Position := TFormPosition.ScreenCenter;
      newForm.ShowModal;
    finally
      newForm.Free;
    end;
  except
    on E : Exception do
      raise Exception.Create(E.ClassName + E.Message);
  end;


end;

end.
