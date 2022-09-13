unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm13 = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1id: TAutoIncField;
    ADOQuery1ad: TWideStringField;
    ADOQuery1soyad: TWideStringField;
    ADOQuery1yas: TIntegerField;
    ADOQuery1cinsiyet: TBooleanField;
    ADOQuery1adres: TWideStringField;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation
uses unit1;

{$R *.dfm}

procedure TForm13.Button1Click(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.Parameters[0].Value:=Edit1.Text;
ADOQuery1.Open;
if ADOQuery1.RecordCount=0 then
ShowMessage('KAYIT BULUNAMADI');
end;

end.
