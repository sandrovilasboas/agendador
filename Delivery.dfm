object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 712
  ClientWidth = 1305
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object container: TPanel
    Left = 0
    Top = 0
    Width = 1305
    Height = 712
    Align = alClient
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object header: TPanel
      Left = 1
      Top = 1
      Width = 1303
      Height = 80
      Align = alTop
      BevelOuter = bvNone
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 0
    end
    object footer: TPanel
      Left = 1
      Top = 616
      Width = 1303
      Height = 95
      Align = alBottom
      BevelOuter = bvNone
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 1
      object btnlancar: TSpeedButton
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 175
        Height = 75
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alLeft
      end
      object btnFinalizar: TSpeedButton
        AlignWithMargins = True
        Left = 1118
        Top = 10
        Width = 175
        Height = 75
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alRight
        ExplicitLeft = 10
      end
    end
    object body: TPanel
      Left = 1
      Top = 81
      Width = 1303
      Height = 535
      Align = alClient
      TabOrder = 2
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 1301
        Height = 533
        Align = alClient
        DataSource = dsMainGrid
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object MainMenu: TMainMenu
    Left = 1248
    Top = 200
    object PRODUTO1: TMenuItem
      Caption = 'PRODUTO'
      object CADASTRARPRODUTO1: TMenuItem
        Caption = 'CADASTRAR PRODUTO'
      end
      object CONSULTARPRODUTO1: TMenuItem
        Caption = 'CONSULTAR PRODUTO'
      end
    end
    object CLIENTE1: TMenuItem
      Caption = 'CLIENTE'
      object CADASTRARCLIENTE1: TMenuItem
        Caption = 'CADASTRAR CLIENTE'
      end
      object CONSULTARCLIENTE1: TMenuItem
        Caption = 'CONSULTAR CLIENTE'
      end
    end
    object RELATORIO1: TMenuItem
      Caption = 'RELATORIO'
      object RELATORIODEPRODUTO1: TMenuItem
        Caption = 'VENDAS'
      end
      object FATURAMENTO1: TMenuItem
        Caption = 'FINANCEIRO'
      end
    end
    object CONFIGURAO1: TMenuItem
      Caption = 'CONFIGURA'#199#195'O'
      object INTEGRAO1: TMenuItem
        Caption = 'INTEGRA'#199#195'O'
      end
    end
  end
  object dsMainGrid: TDataSource
    Left = 1249
    Top = 241
  end
  object postgres: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    Catalog = ''
    HostName = 'localhost'
    Port = 5432
    Database = 'projeto_delivery'
    User = 'postgres'
    Password = ''
    Protocol = 'postgresql'
    LibraryLocation = 'D:\Projetos\libpq.dll'
    Left = 1249
    Top = 385
  end
  object qry: TZQuery
    Connection = postgres
    Params = <>
    Left = 1249
    Top = 329
  end
end
