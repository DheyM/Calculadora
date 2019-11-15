unit U_inicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls;

type
  TF_Calc = class(TForm)
    EditCampo: TEdit;
    btn_0: TSpeedButton;
    btn_1: TSpeedButton;
    btn_2: TSpeedButton;
    btn_3: TSpeedButton;
    btn_4: TSpeedButton;
    btn_5: TSpeedButton;
    btn_6: TSpeedButton;
    btn_7: TSpeedButton;
    btn_8: TSpeedButton;
    btn_9: TSpeedButton;
    btn_Mul: TSpeedButton;
    btn_Mais: TSpeedButton;
    btn_Menos: TSpeedButton;
    btn_Div: TSpeedButton;
    SpeedApagar: TSpeedButton;
    SpeedResul: TSpeedButton;
    EditVisor: TEdit;
    btn_Porc: TSpeedButton;
    btn_Ponto: TSpeedButton;

    procedure btn_0Click(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
    procedure btn_6Click(Sender: TObject);
    procedure btn_7Click(Sender: TObject);
    procedure btn_8Click(Sender: TObject);
    procedure btn_9Click(Sender: TObject);
    procedure SpeedApagarClick(Sender: TObject);
    procedure btn_MulClick(Sender: TObject);
    procedure btn_MaisClick(Sender: TObject);
    procedure btn_MenosClick(Sender: TObject);
    procedure btn_DivClick(Sender: TObject);
    procedure btn_PorcClick(Sender: TObject);
    procedure SpeedResulClick(Sender: TObject);
    procedure btn_PontoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }

    var
    valor : Double;
    funcao: Char; // a adicao - d divisao - s subtracao - m multiplicacao

  public
    { Public declarations }
  end;

var
  F_Calc: TF_Calc;

implementation

{$R *.dfm}

procedure TF_Calc.btn_0Click(Sender: TObject);
begin
  //Butao ZERO

  EditCampo.Text := Editcampo.Text + TspeedButton(sender).Caption;
  EditVisor.Text := EditVisor.Text + EditCampo.Text;
end;

procedure TF_Calc.btn_1Click(Sender: TObject);
begin
  //Butao UM
  EditCampo.Text := Editcampo.Text + TspeedButton(sender).Caption;
  EditVisor.Text := EditVisor.Text + TspeedButton(sender).Caption;
end;

procedure TF_Calc.btn_2Click(Sender: TObject);
begin
  //Butao DOIS
  EditCampo.Text := Editcampo.Text + TspeedButton(sender).Caption;
  EditVisor.Text := EditVisor.Text + TspeedButton(sender).Caption;
end;

procedure TF_Calc.btn_3Click(Sender: TObject);
begin
//Butao TRES
  EditCampo.Text := Editcampo.Text + TspeedButton(sender).Caption;
  EditVisor.Text := EditVisor.Text + TspeedButton(sender).Caption;
end;

procedure TF_Calc.btn_4Click(Sender: TObject);
begin
  //Butao QUATRO
  EditCampo.Text := Editcampo.Text + TspeedButton(sender).Caption;
  EditVisor.Text := EditVisor.Text + TspeedButton(sender).Caption;
end;

procedure TF_Calc.btn_5Click(Sender: TObject);
begin
//Butao CINCO
  EditCampo.Text := Editcampo.Text + TspeedButton(sender).Caption;
  EditVisor.Text := EditVisor.Text + TspeedButton(sender).Caption;
end;

procedure TF_Calc.btn_6Click(Sender: TObject);
begin
  //Butao SEIS
  EditCampo.Text := Editcampo.Text + TspeedButton(sender).Caption;
  EditVisor.Text := EditVisor.Text + TspeedButton(sender).Caption;
end;

procedure TF_Calc.btn_7Click(Sender: TObject);
begin
  //Butao SETE
  EditCampo.Text := Editcampo.Text + TspeedButton(sender).Caption;
  EditVisor.Text := EditVisor.Text + TspeedButton(sender).Caption;
end;

procedure TF_Calc.btn_8Click(Sender: TObject);
begin
  //Butao OITO
  EditCampo.Text := Editcampo.Text + TspeedButton(sender).Caption;
  EditVisor.Text := EditVisor.Text + TspeedButton(sender).Caption;
end;

procedure TF_Calc.btn_9Click(Sender: TObject);
begin
  //Butao NOVE
  EditCampo.Text := Editcampo.Text + TspeedButton(sender).Caption;
  EditVisor.Text := EditVisor.Text + TspeedButton(sender).Caption;
end;

procedure TF_Calc.btn_PontoClick(Sender: TObject);
begin
  //Butao Ponto Flutuante
  EditCampo.Text := Editcampo.Text + TspeedButton(sender).Caption;
  EditVisor.Text := EditVisor.Text + TspeedButton(sender).Caption;
end;

procedure TF_Calc.btn_PorcClick(Sender: TObject);
begin
  //Porcentagem
  valor := Strtofloat(EditCampo.Text);
  EditVisor.Text := EditCampo.Text + '%';
  EditCampo.Clear;
  funcao := 'p';
end;

procedure TF_Calc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 case key of
 // numeros de 0 a 9
  VK_NUMPAD0: btn_0.Click;
  VK_NUMPAD1: btn_1.Click;
  VK_NUMPAD2: btn_2.Click;
  VK_NUMPAD3: btn_3.Click;
  VK_NUMPAD4: btn_4.Click;
  VK_NUMPAD5: btn_5.Click;
  VK_NUMPAD6: btn_6.Click;
  VK_NUMPAD7: btn_7.Click;
  VK_NUMPAD8: btn_8.Click;
  VK_NUMPAD9: btn_9.Click;

  //butao do teclado
  VK_ESCAPE: speedApagar.Click;
  VK_DELETE: speedApagar.Click;
  VK_ADD: btn_Mais.Click;
  VK_SUBTRACT: btn_Menos.Click;
  VK_DIVIDE: btn_Div.Click;
  VK_MULTIPLY: btn_Mul.Click;
  VK_DECIMAL: btn_Ponto.Click;
  VK_F17: btn_Porc.Click;

  // returna valor
  VK_RETURN: speedResul.Click;


 end;
end;

procedure TF_Calc.btn_DivClick(Sender: TObject);
begin
  //Divisao
  valor := Strtofloat(EditCampo.Text);
  EditVisor.Text := EditCampo.Text + '/';
  EditCampo.Clear;
  funcao := 'd';
end;

procedure TF_Calc.btn_MaisClick(Sender: TObject);
begin
  //Adicao
  valor := Strtofloat(EditCampo.Text);
  EditVisor.Text := EditCampo.Text + '+';
  EditCampo.Clear;
  funcao := 'a';
end;

procedure TF_Calc.btn_MenosClick(Sender: TObject);
begin
  //Subtracao
  valor := Strtofloat(EditCampo.Text);
  EditVisor.Text := EditCampo.Text + '-';
  EditCampo.Clear;
  funcao := 's';
end;

procedure TF_Calc.btn_MulClick(Sender: TObject);
begin
  //multiplicacao
  valor := Strtofloat(EditCampo.Text);
  EditVisor.Text := EditCampo.Text + '*';
  EditCampo.Clear;
  funcao := 'm';

end;

procedure TF_Calc.SpeedApagarClick(Sender: TObject);
begin
  //Apagar campo
  EditCampo.Clear;
  EditVisor.Clear;
end;

procedure TF_Calc.SpeedResulClick(Sender: TObject);
begin
  // butao de  - onde e feito a operacao.
  // a adicao - d divisao - s subtracao - m multiplicacao

  //Por motivos didaticos vamos utilizar o Case

  case funcao of
    'a': valor := valor + strtofloat(EditCampo.Text);
    'd': valor  := valor / strtofloat(EditCampo.Text);
    's': valor  := valor - strtofloat(EditCampo.Text);
    'm': valor  := valor * strtofloat(EditCampo.Text);
    'p': valor  := (valor / 100) * strtofloat(EditCampo.Text);
  end;





   {Foi utilizado o Case para entender com se utiliza ele no Delphi
   if (funcao = 'a') then
    valor := valor + strtofloat(EditCampo.Text)
   else if (funcao = 'd') then
    valor  := valor / strtofloat(EditCampo.Text)
   else if (funcao = 's') then
    valor  := valor - strtofloat(EditCampo.Text)
   else if (funcao = 'm') then
    valor  := valor + strtofloat(EditCampo.Text)
   else if (funcao = 'p') then
    valor  := (valor / 100) * strtofloat(EditCampo.Text);}

  EditCampo.Text := Floattostr(valor);

end;

end.
