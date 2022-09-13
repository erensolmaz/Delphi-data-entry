object Form6: TForm6
  Left = 760
  Top = 457
  Caption = #220'r'#252'n Ekle'
  ClientHeight = 251
  ClientWidth = 658
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
    Left = 99
    Top = 35
    Width = 54
    Height = 13
    Caption = #220'r'#252'n Kodu:'
  end
  object Label2: TLabel
    Left = 99
    Top = 75
    Width = 45
    Height = 13
    Caption = #220'r'#252'n Ad'#305':'
  end
  object Label3: TLabel
    Left = 98
    Top = 112
    Width = 61
    Height = 13
    Caption = #220'r'#252'n Miktar'#305':'
  end
  object Label4: TLabel
    Left = 400
    Top = 184
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Edit1: TEdit
    Left = 160
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 160
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
    OnChange = Edit2Change
  end
  object Button1: TButton
    Left = 184
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Urun ekle'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 160
    Top = 109
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 304
    Top = 24
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 4
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
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <
      item
        Name = 'x'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'y'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'z'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'insert into urunler values (:x,:y,:z)')
    Left = 48
    Top = 96
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'x'#39'%'#39
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from urunler'
      'where urun_adi like '#39'%'#39' +:x'#39'%'#39)
    Left = 512
    Top = 176
    object ADOQuery2urun_kodu: TIntegerField
      FieldName = 'urun_kodu'
    end
    object ADOQuery2urun_adi: TWideStringField
      FieldName = 'urun_adi'
      Size = 255
    end
    object ADOQuery2urun_miktari: TIntegerField
      FieldName = 'urun_miktari'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery2
    Left = 576
    Top = 176
  end
end
