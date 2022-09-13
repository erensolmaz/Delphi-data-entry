unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Data.Win.ADODB, Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    asd1: TMenuItem;
    PersonelEkle1: TMenuItem;
    rnEkle1: TMenuItem;
    MevcutrnleriGrntle1: TMenuItem;
    htiyalarGrntle1: TMenuItem;
    rnler1: TMenuItem;
    htiyalar1: TMenuItem;
    rnleriGrntle1: TMenuItem;
    rnEkle2: TMenuItem;
    rnleriDzenle1: TMenuItem;
    htiyalarGrntle2: TMenuItem;
    htiyalaraEklemeYap1: TMenuItem;
    htiyalarDzenleSil1: TMenuItem;
    Dier1: TMenuItem;
    N1: TMenuItem;
    rnEkle3: TMenuItem;
    N2: TMenuItem;
    htiyalaraEklemeYap2: TMenuItem;
    Demotablolar1: TMenuItem;
    ADOConnection1: TADOConnection;
    Timer1: TTimer;
    Label1: TLabel;
    k1: TMenuItem;
    k2: TMenuItem;
    k3: TMenuItem;
    k4: TMenuItem;
    yedeklemeyapma1: TMenuItem;
    veriarama1: TMenuItem;
    N3: TMenuItem;
    k5: TMenuItem;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Label5: TLabel;
    procedure MevcutrnleriGrntle1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure htiyalarGrntle1Click(Sender: TObject);
    procedure htiyalaraEklemeYap2Click(Sender: TObject);
    procedure k1Click(Sender: TObject);
    procedure rnEkle1Click(Sender: TObject);
    procedure rnleriGrntle1Click(Sender: TObject);
    procedure rnEkle3Click(Sender: TObject);
    procedure rnleriDzenle1Click(Sender: TObject);
    procedure Demotablolar1Click(Sender: TObject);
    procedure htiyalarGrntle2Click(Sender: TObject);
    procedure htiyalarDzenleSil1Click(Sender: TObject);
    procedure yedeklemeyapma1Click(Sender: TObject);
    procedure veriarama1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10, Unit11,
  Unit12, Unit13;

procedure TForm1.Demotablolar1Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm1.htiyalaraEklemeYap2Click(Sender: TObject);
begin
Application.CreateForm(TForm5, Form5);
Form5.ShowModal;
Form5.Free;

end;

procedure TForm1.htiyalarDzenleSil1Click(Sender: TObject);
begin
Form11.Showmodal;
end;

procedure TForm1.htiyalarGrntle1Click(Sender: TObject);
begin
Form4.Showmodal;
end;

procedure TForm1.htiyalarGrntle2Click(Sender: TObject);
begin
Form10.Showmodal;
end;

procedure TForm1.k1Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.MevcutrnleriGrntle1Click(Sender: TObject);
begin
Application.CreateForm(TForm2, Form2);
Form2.ShowModal;
Form2.Free;
end;

procedure TForm1.rnEkle1Click(Sender: TObject);
begin
Application.CreateForm(TForm7, Form7);
Form7.Showmodal;
Form7.Free;
end;

procedure TForm1.rnEkle3Click(Sender: TObject);
begin
Application.CreateForm(TForm6, Form6);
Form6.Showmodal;
Form6.Free;
end;

procedure TForm1.rnleriDzenle1Click(Sender: TObject);
begin
Form9.Showmodal;
end;

procedure TForm1.rnleriGrntle1Click(Sender: TObject);
begin
Form8.Showmodal;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var s1,s2:string[100];
x:integer;
begin
Label1.Caption:=TimeToStr(now);
x:=Length(form1.Caption);
s1:=copy(form1.Caption,1,1);
s2:=copy(form1.Caption,2,x-1);
form1.Caption:=s2+s1;

end;

procedure TForm1.veriarama1Click(Sender: TObject);
begin
Form13.Showmodal;
end;

procedure TForm1.yedeklemeyapma1Click(Sender: TObject);
begin
Form12.Showmodal;
end;

end.
