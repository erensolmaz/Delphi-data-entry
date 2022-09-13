unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TForm2 = class(TForm)
    ADOTable1: TADOTable;
    ADOTable1id: TAutoIncField;
    ADOTable1ad: TWideStringField;
    ADOTable1soyad: TWideStringField;
    ADOTable1yas: TIntegerField;
    ADOTable1cinsiyet: TBooleanField;
    ADOTable1adres: TWideStringField;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Memo1: TMemo;
    DBComboBox1: TDBComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;
{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
I: Integer;
begin
AdoTable1.First;
for I := 1 to AdoTable1.RecordCount do
begin
Memo1.Lines.Add(AdoTable1ad.Value);
if AdoTable1ad.Value='eren' then
Memo1.Lines.Add('Eren isimli kayýt mevcut.');
AdoTable1.Next;
end;

end;

procedure TForm2.FormActivate(Sender: TObject);
begin
AdoTable1.Open;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
AdoTable1.Close;
end;

end.
