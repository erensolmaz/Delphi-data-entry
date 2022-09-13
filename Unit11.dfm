object Form11: TForm11
  Left = 754
  Top = 463
  Caption = #304'htiya'#231'lar'#305' D'#252'zenle'
  ClientHeight = 472
  ClientWidth = 638
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
    Left = 232
    Top = 40
    Width = 154
    Height = 22
    Caption = #304'htiya'#231'lar'#305' D'#252'zenle'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 83
    Top = 88
    Width = 502
    Height = 257
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
        FieldName = 'a_urun_adi'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'a_urun_adet'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'a_urun_fiyat'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 152
    Top = 368
    Width = 350
    Height = 65
    DataSource = DataSource1
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 24
    Top = 224
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'ihtiyaclar'
    Left = 24
    Top = 112
  end
end
