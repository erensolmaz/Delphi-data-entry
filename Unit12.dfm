object Form12: TForm12
  Left = 549
  Top = 231
  Caption = 'Yedekle'
  ClientHeight = 460
  ClientWidth = 669
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 192
    Top = 112
    Width = 280
    Height = 22
    Caption = 'Verileri yedeklemek i'#231'in t'#305'klay'#305'n'#305'z.'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 232
    Top = 192
    Width = 209
    Height = 113
    Caption = 'Yedekle'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * INTO personellerl'
      
        ' IN '#39'C:\Users\solma\OneDrive\Masa'#252'st'#252'\erensolmaz\database\yedek.' +
        'mdb'#39' '
      'FROM personeller')
    Left = 104
    Top = 256
  end
  object DataSource1: TDataSource
    Left = 144
    Top = 344
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * INTO urunler'
      
        ' IN '#39'C:\Users\solma\OneDrive\Masa'#252'st'#252'\erensolmaz\database\yedek.' +
        'mdb'#39' '
      'FROM urunler')
    Left = 320
    Top = 384
  end
  object ADOQuery3: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT * INTO ihtiyaclar'
      
        ' IN '#39'C:\Users\solma\OneDrive\Masa'#252'st'#252'\erensolmaz\database\yedek.' +
        'mdb'#39' '
      'FROM ihtiyaclar')
    Left = 488
    Top = 272
  end
end
