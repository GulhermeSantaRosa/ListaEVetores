object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Lista e Vetores'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object nbPrincipal: TNotebook
    Left = 0
    Top = 0
    Width = 447
    Height = 201
    Align = alClient
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'principal'
      object lbTitulo: TLabel
        Left = 56
        Top = 8
        Width = 357
        Height = 22
        Caption = 'Digite um n'#250'mero m'#250'ltiplo de 10 entre 100 e 1000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
      end
      object edNumero: TEdit
        Left = 162
        Top = 36
        Width = 117
        Height = 34
        Margins.Left = 100
        Margins.Top = 20
        Margins.Right = 100
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
      end
      object btnIniciar: TButton
        Left = 168
        Top = 88
        Width = 99
        Height = 49
        Caption = 'Iniciar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnIniciarClick
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'resultados'
      object lbResultado: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 93
        Width = 441
        Height = 26
        Margins.Top = 20
        Align = alTop
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -20
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 6
      end
      object Button3: TButton
        Left = 0
        Top = 152
        Width = 57
        Height = 49
        Caption = 'Voltar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        WordWrap = True
        OnClick = Button3Click
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 447
        Height = 73
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object btnSomaImpar: TButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 121
          Height = 67
          Align = alLeft
          Caption = 'Soma das posi'#231#245'es '#237'mpares'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          WordWrap = True
          OnClick = btnSomaImparClick
        end
        object btnSomaPar: TButton
          AlignWithMargins = True
          Left = 323
          Top = 3
          Width = 121
          Height = 67
          Align = alRight
          Caption = 'Soma das posi'#231#245'es pares'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          WordWrap = True
          OnClick = btnSomaParClick
        end
      end
    end
  end
end
