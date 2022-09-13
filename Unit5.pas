unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm5 = class(TForm)
    Button1: TButton;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable1id: TAutoIncField;
    ADOTable1a_urun_adi: TWideStringField;
    ADOTable1a_urun_adet: TIntegerField;
    ADOTable1a_urun_fiyat: TBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation
 uses Unit1;
{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
var sayi,kod:integer;
begin
//val(edit1.text,sayi,kod);
if (Edit1.Text<>'') and (Edit2.Text<>'') and (Edit3.Text<>'') then
begin
ADOTable1.Insert;
ADOTable1a_urun_adi.Value:=Edit1.Text;
ADOTable1a_urun_adet.Value:=StrToInt(Edit2.Text);
ADOTable1a_urun_fiyat.Value:=strtofloat(Edit3.Text);
ADOTable1.Post;
    end;
end;

procedure TForm5.FormActivate(Sender: TObject);
begin
AdoTable1.Open;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
AdoTable1.Close;
end;

end.
