object Form8: TForm8
  Left = 686
  Top = 231
  Caption = #220'r'#252'nleri G'#246'r'#252'nt'#252'le'
  ClientHeight = 448
  ClientWidth = 688
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
  object DBGrid1: TDBGrid
    Left = 184
    Top = 32
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBChart1: TDBChart
    Left = 144
    Top = 176
    Width = 400
    Height = 250
    Title.Text.Strings = (
      #220'r'#252'nler Grafi'#287'i')
    TabOrder = 1
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TBarSeries
      DataSource = ADOTable1
      Title = 'urunler'
      XLabelsSource = 'urun_adi'
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'urun_miktari'
      YValues.Name = 'Bar'
      YValues.Order = loNone
      YValues.ValueSource = 'urun_miktari'
    end
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'urunler'
    Left = 48
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 48
    Top = 248
  end
end
