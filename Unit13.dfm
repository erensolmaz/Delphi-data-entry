object Form13: TForm13
  Left = 549
  Top = 231
  Caption = 'Personel arama'
  ClientHeight = 593
  ClientWidth = 673
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
    Left = 264
    Top = 32
    Width = 106
    Height = 19
    Caption = 'Personel Arama'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 194
    Top = 408
    Width = 242
    Height = 15
    Caption = 'Aramak istedi'#287'iniz personelin ad'#305'n'#305' yaz'#305'n'#305'z.'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 88
    Top = 64
    Width = 473
    Height = 281
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
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ad'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'soyad'
        Width = 80
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
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 168
    Top = 446
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 392
    Top = 440
    Width = 81
    Height = 33
    Caption = 'Ara'
    TabOrder = 2
    OnClick = Button1Click
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ad'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from personeller'
      'where ad=:ad')
    Left = 24
    Top = 360
    object ADOQuery1id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQuery1ad: TWideStringField
      FieldName = 'ad'
      Size = 255
    end
    object ADOQuery1soyad: TWideStringField
      FieldName = 'soyad'
      Size = 255
    end
    object ADOQuery1yas: TIntegerField
      FieldName = 'yas'
    end
    object ADOQuery1cinsiyet: TBooleanField
      FieldName = 'cinsiyet'
    end
    object ADOQuery1adres: TWideStringField
      FieldName = 'adres'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 88
    Top = 368
  end
end
