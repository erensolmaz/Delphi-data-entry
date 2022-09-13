unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls;

type
  TForm7 = class(TForm)
    Button1: TButton;
    ADOTable1: TADOTable;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ADOTable1id: TAutoIncField;
    ADOTable1ad: TWideStringField;
    ADOTable1soyad: TWideStringField;
    ADOTable1yas: TIntegerField;
    ADOTable1cinsiyet: TBooleanField;
    ADOTable1adres: TWideStringField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation
uses Unit1;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
AdoTable1.Insert;
ADOTable1ad.Value:=Edit1.Text;
ADOTable1soyad.Value:=Edit2.Text;
ADOTable1yas.Value:=strtoint(Edit3.Text);
ADOTable1cinsiyet.Value:=Radiobutton1.Checked;
ADOTable1adres.Value:=Edit4.Text;
ADOTable1.Post;
ShowMessage('Baþarý ile personel eklendi.');
end;

end.
