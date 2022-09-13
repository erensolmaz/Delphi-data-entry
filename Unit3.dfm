object Form3: TForm3
  Left = 640
  Top = 374
  Caption = 'Personel Detay'
  ClientHeight = 580
  ClientWidth = 795
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
    Left = 136
    Top = 280
    Width = 64
    Height = 19
    Caption = #304'htiya'#231'lar'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 480
    Top = 216
    Width = 273
    Height = 19
    Caption = 'Urunler (urun kodu 54 olan urunu bul sql)'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 352
    Top = 24
    Width = 76
    Height = 19
    Caption = 'Personeller'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid2: TDBGrid
    Left = 24
    Top = 320
    Width = 336
    Height = 161
    DataSource = DataSource2
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'a_urun_adi'
        Width = 100
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
  object DBGrid3: TDBGrid
    Left = 414
    Top = 257
    Width = 356
    Height = 185
    DataSource = DataSource3
    TabOrder = 1
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
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'urun_miktari'
        Visible = True
      end>
  end
  object DBGrid1: TDBGrid
    Left = 72
    Top = 64
    Width = 649
    Height = 137
    DataSource = DataSource1
    TabOrder = 2
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
        Width = 200
        Visible = True
      end>
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*'
      'from urunler'
      'where urun_kodu=54')
    Left = 624
    Top = 504
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 560
    Top = 536
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'ihtiyaclar'
    Left = 528
    Top = 536
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery1
    Left = 664
    Top = 504
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'personeller'
    Left = 400
    Top = 528
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 448
    Top = 528
  end
end
