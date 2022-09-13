object Form2: TForm2
  Left = 686
  Top = 386
  Caption = 'Personelleri G'#246'r'#252'nt'#252'le'
  ClientHeight = 405
  ClientWidth = 629
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
  object Label2: TLabel
    Left = 168
    Top = 48
    Width = 12
    Height = 13
    Caption = 'ad'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 168
    Top = 88
    Width = 29
    Height = 13
    Caption = 'soyad'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 168
    Top = 128
    Width = 17
    Height = 13
    Caption = 'yas'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 168
    Top = 199
    Width = 27
    Height = 13
    Caption = 'adres'
    FocusControl = DBEdit5
  end
  object DBEdit2: TDBEdit
    Left = 200
    Top = 45
    Width = 200
    Height = 21
    DataField = 'ad'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 203
    Top = 85
    Width = 200
    Height = 21
    DataField = 'soyad'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 203
    Top = 125
    Width = 134
    Height = 21
    DataField = 'yas'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBCheckBox1: TDBCheckBox
    Left = 168
    Top = 272
    Width = 97
    Height = 17
    Caption = 'cinsiyet'
    DataField = 'cinsiyet'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 201
    Top = 180
    Width = 217
    Height = 78
    DataField = 'adres'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 178
    Top = 320
    Width = 225
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 5
  end
  object Button1: TButton
    Left = 488
    Top = 178
    Width = 75
    Height = 25
    Caption = 'G'#246'nder'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 440
    Top = 59
    Width = 161
    Height = 87
    Lines.Strings = (
      '')
    TabOrder = 7
  end
  object DBComboBox1: TDBComboBox
    Left = 456
    Top = 237
    Width = 145
    Height = 21
    DataField = 'adres'
    DataSource = DataSource1
    Items.Strings = (
      #304'zmir')
    TabOrder = 8
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 440
    Top = 32
    Width = 145
    Height = 21
    KeyField = 'ad'
    ListField = 'id'
    ListSource = DataSource1
    TabOrder = 9
  end
  object ADOTable1: TADOTable
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'personeller'
    Left = 56
    Top = 168
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
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 80
    Top = 272
  end
end
