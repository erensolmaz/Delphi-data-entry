object Form7: TForm7
  Left = 823
  Top = 463
  Caption = 'Personel Ekle'
  ClientHeight = 515
  ClientWidth = 684
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
    Left = 249
    Top = 24
    Width = 160
    Height = 22
    Caption = 'PERSONEL EKLE'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 216
    Top = 112
    Width = 22
    Height = 15
    Caption = 'AD:'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 216
    Top = 154
    Width = 45
    Height = 15
    Caption = 'SOYAD:'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 216
    Top = 202
    Width = 27
    Height = 15
    Caption = 'YA'#350':'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 216
    Top = 264
    Width = 44
    Height = 15
    Caption = 'ADRES:'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 216
    Top = 344
    Width = 57
    Height = 15
    Caption = 'C'#304'NS'#304'YET:'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 294
    Top = 400
    Width = 115
    Height = 41
    Caption = 'Personel Ekle'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 270
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 270
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 270
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 270
    Top = 243
    Width = 155
    Height = 21
    TabOrder = 4
  end
  object RadioButton1: TRadioButton
    Left = 296
    Top = 328
    Width = 113
    Height = 17
    Caption = 'Erkek'
    Checked = True
    TabOrder = 5
    TabStop = True
  end
  object RadioButton2: TRadioButton
    Left = 296
    Top = 351
    Width = 113
    Height = 17
    Caption = 'Kad'#305'n'
    TabOrder = 6
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'personeller'
    Left = 88
    Top = 128
    object ADOTable1id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOTable1ad: TWideStringField
      FieldName = 'ad'
      Size = 255
    end
    object ADOTable1soyad: TWideStringField
      FieldName = 'soyad'
      Size = 255
    end
    object ADOTable1yas: TIntegerField
      FieldName = 'yas'
    end
    object ADOTable1cinsiyet: TBooleanField
      FieldName = 'cinsiyet'
    end
    object ADOTable1adres: TWideStringField
      FieldName = 'adres'
      Size = 50
    end
  end
end
