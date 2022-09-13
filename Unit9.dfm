object Form9: TForm9
  Left = 686
  Top = 386
  Caption = #220'r'#252'nleri D'#252'zenle'
  ClientHeight = 468
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 272
    Top = 40
    Width = 149
    Height = 24
    Caption = #220'r'#252'nleri D'#252'zenle'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 112
    Top = 88
    Width = 473
    Height = 265
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'urun_kodu'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'urun_adi'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'urun_miktari'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 192
    Top = 375
    Width = 340
    Height = 49
    DataSource = DataSource1
    TabOrder = 1
  end
  object ADOTable1: TADOTable
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'urunler'
    Left = 48
    Top = 304
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 48
    Top = 360
  end
end
