unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    nbPrincipal: TNotebook;
    edNumero: TEdit;
    btnIniciar: TButton;
    lbTitulo: TLabel;
    Button3: TButton;
    lbResultado: TLabel;
    Panel1: TPanel;
    btnSomaImpar: TButton;
    btnSomaPar: TButton;
    procedure FormResize(Sender: TObject);
    procedure btnIniciarClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSomaImparClick(Sender: TObject);
    procedure btnSomaParClick(Sender: TObject);
  private
    { Private declarations }
    procedure RecalculaPosicoes;
    procedure CalculaPosicoes;
    function Soma(Impar:Boolean) : Currency;
  public
    { Public declarations }
    FPosicoes : TArray<Currency>;
    FNumeroInformado : Integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnIniciarClick(Sender: TObject);
var Num : Integer;
begin
  if (Trim(edNumero.Text)<>'') then
  begin
    Num := StrToInt(edNumero.Text);
    if ((Num<100) or (Num>1000)) then
    begin
      ShowMessage('O n�mero deve ser entre 100 e 1000');
      Exit;
    end;
    if (not (Num mod 10 = 0)) then
    begin
      ShowMessage('O n�mero deve ser m�ltiplo de 10');
      Exit;
    end;
    FNumeroInformado := Num;
    nbPrincipal.PageIndex := 1;
    CalculaPosicoes;
  end;
end;

procedure TForm1.btnSomaImparClick(Sender: TObject);
begin
  lbResultado.Caption := 'Resultado: ' + CurrToStr(Soma(True));
end;

procedure TForm1.btnSomaParClick(Sender: TObject);
begin
  lbResultado.Caption := 'Resultado: ' + CurrToStr(Soma(False));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  nbPrincipal.PageIndex := 0;
  lbResultado.Caption := '';
  edNumero.Text := '';
end;

procedure TForm1.CalculaPosicoes;
var
  Loop: Integer;
begin
  SetLength(FPosicoes,0);
  SetLength(FPosicoes,10);
  for Loop := Low(FPosicoes) to High(FPosicoes) do
  begin
    if ((Loop+1) mod 3 = 0) then
      FPosicoes[Loop] := (Loop+1) * 30/100 * FNumeroInformado
    else
      FPosicoes[Loop] := (Loop+1) * 10/100 * FNumeroInformado
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  nbPrincipal.PageIndex := 0;
  Self.Left:=Trunc((Screen.Width-Width)  / 2);
  Self.Top:=Trunc((Screen.Height-Height) / 2);
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  RecalculaPosicoes
end;

procedure TForm1.RecalculaPosicoes;
begin
  edNumero.Left := Trunc(Self.Width/2 - edNumero.Width/2);
  btnIniciar.Left := Trunc(Self.Width/2 - btnIniciar.Width/2);
  lbTitulo.Left := Trunc(Self.Width/2 - lbTitulo.Width/2);
end;

function TForm1.Soma(Impar: Boolean): Currency;
var
  Loop: Integer;
begin
  Result := 0;
  for Loop := Low(FPosicoes) to High(FPosicoes) do
  begin
    if (Impar) then
    begin
      if (not ((Loop+1) mod 2 = 0)) then
        Result := Result + FPosicoes[Loop];
    end
    else
    begin
      if ((Loop+1) mod 2 = 0) then
        Result := Result + FPosicoes[Loop];
    end;
  end;
end;

end.
