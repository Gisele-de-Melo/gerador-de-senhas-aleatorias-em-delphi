//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse código foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto não me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    EditLength: TEdit;
    CheckBoxUpperCase: TCheckBox;
    CheckBoxLowerCase: TCheckBox;
    CheckBoxNumbers: TCheckBox;
    CheckBoxSymbols: TCheckBox;
    ButtonGenerate: TButton;
    LabelResult: TLabel;
    procedure ButtonGenerateClick(Sender: TObject);
  private
    { Private declarations }
    function GeneratePassword(aLength: Integer; aUseUpperCase, aUseLowerCase, aUseNumbers, aUseSymbols: Boolean): String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ButtonGenerateClick(Sender: TObject);
var
  Length: Integer;
  Password: String;
begin
  Length := StrToInt(EditLength.Text);
  Password := GeneratePassword(Length, CheckBoxUpperCase.Checked, CheckBoxLowerCase.Checked, CheckBoxNumbers.Checked, CheckBoxSymbols.Checked);
  LabelResult.Caption := Password;
end;

function TForm1.GeneratePassword(aLength: Integer; aUseUpperCase, aUseLowerCase, aUseNumbers, aUseSymbols: Boolean): String;
const
  UpperCaseChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  LowerCaseChars = 'abcdefghijklmnopqrstuvwxyz';
  NumberChars = '0123456789';
  SymbolChars = '!@#$%^&*()-_=+[]{}|;:,.<>?/';
var
  CharSet: String;
  I: Integer;
begin
  CharSet := '';
  Result := '';

  if aUseUpperCase then
    CharSet := CharSet + UpperCaseChars;

  if aUseLowerCase then
    CharSet := CharSet + LowerCaseChars;

  if aUseNumbers then
    CharSet := CharSet + NumberChars;

  if aUseSymbols then
    CharSet := CharSet + SymbolChars;

  Randomize;
  for I := 1 to aLength do
    Result := Result + CharSet[Random(Length(CharSet)) + 1];
end;

end.
