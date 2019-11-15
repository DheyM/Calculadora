program Calculadora;

uses
  Vcl.Forms,
  U_inicial in 'U_inicial.pas' {F_Calc};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_Calc, F_Calc);
  Application.Run;
end.
