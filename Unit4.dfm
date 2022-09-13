object Form4: TForm4
  Left = 686
  Top = 309
  Caption = 'Personelleri D'#252'zenle'
  ClientHeight = 528
  ClientWidth = 778
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
    Left = 328
    Top = 32
    Width = 100
    Height = 24
    Caption = 'Personeller'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 112
    Top = 72
    Width = 577
    Height = 345
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
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ad'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'soyad'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'yas'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cinsiyet'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adres'
        Width = 250
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 160
    Top = 423
    Width = 480
    Height = 50
    DataSource = DataSource1
    TabOrder = 1
  end
  object Yenile: TButton
    Left = 680
    Top = 488
    Width = 75
    Height = 25
    Caption = 'Yenile'
    TabOrder = 2
    OnClick = YenileClick
  end
  object ADOTable1: TADOTable
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'personeller'
    Left = 40
    Top = 488
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 104
    Top = 488
  end
end
