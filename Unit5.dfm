object Form5: TForm5
  Left = 686
  Top = 463
  Caption = #304'htiya'#231' Ekle'
  ClientHeight = 479
  ClientWidth = 721
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
    Left = 193
    Top = 288
    Width = 87
    Height = 13
    Caption = 'Al'#305'nacak '#220'r'#252'n Ad'#305':'
  end
  object Label2: TLabel
    Left = 193
    Top = 331
    Width = 97
    Height = 13
    Caption = 'Al'#305'nacak '#220'r'#252'n Adeti:'
  end
  object Label3: TLabel
    Left = 193
    Top = 376
    Width = 98
    Height = 13
    Caption = 'Al'#305'nacak '#220'r'#252'n Fiyat'#305':'
  end
  object Label4: TLabel
    Left = 304
    Top = 16
    Width = 79
    Height = 22
    Caption = #304'htiya'#231'lar'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 304
    Top = 416
    Width = 97
    Height = 33
    Caption = 'Ekle'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 104
    Top = 56
    Width = 481
    Height = 193
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
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
  object Edit1: TEdit
    Left = 296
    Top = 285
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 296
    Top = 328
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 296
    Top = 373
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'ihtiyaclar'
    Left = 48
    Top = 368
    object ADOTable1id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOTable1a_urun_adi: TWideStringField
      FieldName = 'a_urun_adi'
      Size = 255
    end
    object ADOTable1a_urun_adet: TIntegerField
      FieldName = 'a_urun_adet'
    end
    object ADOTable1a_urun_fiyat: TBCDField
      FieldName = 'a_urun_fiyat'
      Precision = 19
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 112
    Top = 368
  end
end
