unit Unit12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB;

type
  TForm12 = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation
uses unit1;

{$R *.dfm}

procedure TForm12.Button1Click(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.ExecSQL;
ADOQuery2.Close;
ADOQuery2.ExecSQL;
ADOQuery3.Close;
ADOQuery3.ExecSQL;
ShowMessage('Veriler Yedeklendi.')
end;

end.
