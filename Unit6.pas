unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm6 = class(TForm)
    ADOQuery1: TADOQuery;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    ADOQuery2: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery2urun_kodu: TIntegerField;
    ADOQuery2urun_adi: TWideStringField;
    ADOQuery2urun_miktari: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation
uses Unit1;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
if (Edit1.Text<>'') and (Edit2.Text<>'') and (Edit3.Text<>'') then
begin
  ADOQuery1.Close;
  AdoQuery1.Parameters[0].Value:=StrToInt(Edit1.Text);
  AdoQuery1.Parameters[1].Value:=Edit2.Text;
  AdoQuery1.Parameters[2].Value:=StrToInt(Edit3.Text);
  AdoQuery1.ExecSQL;
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  ShowMessage('Ürün Eklendi');

end
  else
  ShowMessage('Ayný ürün mevcut ya da eksik girilmiþ.');

end;

procedure TForm6.Edit2Change(Sender: TObject);
begin
ADOQuery2.Close;
AdoQuery2.Parameters[0].Value:=Edit2.Text;
AdoQuery2.Open;
Label4.Caption:=inttostr(AdoQuery2.RecordCount);
end;

end.
