unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Label1: TLabel;
    Yenile: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure YenileClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation
uses Unit1;
{$R *.dfm}

procedure TForm4.YenileClick(Sender: TObject);
begin
AdoTable1.Close;
AdoTable1.Open;
end;

procedure TForm4.FormActivate(Sender: TObject);
begin
AdoTable1.Open;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
AdoTable1.Close;
end;

end.
