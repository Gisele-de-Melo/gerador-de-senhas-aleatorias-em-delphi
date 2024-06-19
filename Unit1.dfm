object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Gerador de Senha Aleat'#243'rias'
  ClientHeight = 226
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object LabelResult: TLabel
    Left = 168
    Top = 8
    Width = 69
    Height = 21
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object EditLength: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 23
    TabOrder = 0
    Text = 'Tamanho'
  end
  object CheckBoxUpperCase: TCheckBox
    Left = 8
    Top = 48
    Width = 121
    Height = 17
    Caption = 'Letras mai'#250'sculas'
    TabOrder = 1
  end
  object CheckBoxLowerCase: TCheckBox
    Left = 8
    Top = 80
    Width = 121
    Height = 17
    Caption = 'Letras min'#250'sculas'
    TabOrder = 2
  end
  object CheckBoxNumbers: TCheckBox
    Left = 8
    Top = 112
    Width = 97
    Height = 17
    Caption = 'N'#250'meros'
    TabOrder = 3
  end
  object CheckBoxSymbols: TCheckBox
    Left = 8
    Top = 144
    Width = 97
    Height = 17
    Caption = 'S'#237'mbolos'
    TabOrder = 4
  end
  object ButtonGenerate: TButton
    Left = 8
    Top = 181
    Width = 121
    Height = 36
    Caption = 'Gerar'
    TabOrder = 5
    OnClick = ButtonGenerateClick
  end
end
