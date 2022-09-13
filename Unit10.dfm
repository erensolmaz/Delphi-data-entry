object Form10: TForm10
  Left = 617
  Top = 231
  Caption = #304'htiya'#231'lar'#305' G'#246'r'#252'nt'#252'le'
  ClientHeight = 496
  ClientWidth = 718
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
    Left = 176
    Top = 352
    Width = 377
    Height = 121
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
    Top = 40
    Width = 425
    Height = 282
    Title.Text.Strings = (
      #304'htiya'#231'lar Grafi'#287'i')
    View3D = False
    TabOrder = 1
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      17
      15
      17)
    ColorPaletteIndex = 13
    object Series1: TAreaSeries
      DataSource = ADOTable1
      SeriesColor = 65408
      Title = 'ihtiyaclar'
      XLabelsSource = 'a_urun_adi'
      AreaChartBrush.Color = clGray
      AreaChartBrush.BackColor = clDefault
      DrawArea = True
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'a_urun_adet'
      YValues.Name = 'Y'
      YValues.Order = loNone
      YValues.ValueSource = 'a_urun_adet'
    end
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'ihtiyaclar'
    Left = 80
    Top = 248
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 80
    Top = 328
  end
end
