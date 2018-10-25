program bab43checkbox;

{$MODE Delphi}

uses
  Forms, Interfaces,
  Unit3checkbox in 'Unit3checkbox.pas' {Form1};

{.$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
