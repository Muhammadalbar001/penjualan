unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button6baru: TButton;
    Button1simpan: TButton;
    Button2ubah: TButton;
    Button3hapus: TButton;
    Button5batal: TButton;
    Label7: TLabel;
    Edit6: TEdit;
    DBGrid1: TDBGrid;
    Button4laporan: TButton;
    cbb1: TComboBox;
    diskon: TLabel;
    procedure Button6baruClick(Sender: TObject);
    procedure Button1simpanClick(Sender: TObject);
    procedure Button2ubahClick(Sender: TObject);
    procedure Button3hapusClick(Sender: TObject);
    procedure Button5batalClick(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure Edit5Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure Button4laporanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  a : string;

implementation

uses Unit4, Unit8;

{$R *.dfm}

procedure TForm6.Button6baruClick(Sender: TObject);
begin
  Button1simpan.Enabled:= True;
  Button2ubah.Enabled:= False;
  Button3hapus.Enabled:= False;
  Button4laporan.Enabled:= False;
  Button5batal.Enabled:= True;
  Button6baru.Enabled:= False;
  Edit1.Enabled:= True;
  Edit2.Enabled:= True;
  Edit3.Enabled:= True;
  Edit4.Enabled:= True;
  Edit6.Enabled:= True;
  cbb1.Enabled:= True;
end;

procedure TForm6.Button1simpanClick(Sender: TObject);
begin
if edit1.Text = '' then
begin
  ShowMessage('Nama Kustomer Tidak Boleh Kosong!');
end else
  if DataModule4.Zkustomer.Locate('name',Edit1.Text,[]) then
begin
  ShowMessage('Nama Kustomer '+edit1.Text+' Sudah Ada Didalam Sistem');
end else

Begin // simpan
  with DataModule4.Zkustomer do
begin
  SQL.Clear;
  SQL.Add('insert into kustomer values(null,"'+edit1.Text+'","'+edit2.Text+'","'+edit3.Text+'","'+edit4.Text+'","'+edit6.Text+'","'+cbb1.Text+'")');
  ExecSQL ;
  SQL.Clear;
  SQL.Add('select * from kustomer');
  Open;
end;
  ShowMessage('Data Berhasil Disimpan!');
end;
end;

procedure TForm6.Button2ubahClick(Sender: TObject);
begin
if edit1.Text = '' then
begin
  ShowMessage('Nama Kustomer Tidak Boleh Kosong!');
end else

begin //kode update
  with DataModule4.Zkustomer do
begin
  SQL.Clear;
  SQL.Add('update kustomer set nik="'+edit1.Text+'", name="'+edit2.Text+'",alamat="'+edit3.Text+'", telp="'+edit4.Text+'", email="'+edit6.Text+'", member="'+cbb1.Text+'" where id= "'+a+'"');
  ExecSQL;
  SQL.Clear;
  SQL.Add('select * from kustomer');
  Open;
end;
  ShowMessage('Data Berhasil Diupdate!');
end;
  posisiawal;
end;

procedure TForm6.Button3hapusClick(Sender: TObject);
begin //kode delete
if MessageDlg('Apakah Anda Yakin Menghapus Data ini',mtWarning,[mbYes,mbNo],0)=mryes then
begin
  with DataModule4.Zkustomer do
begin
  SQL.Clear;
  SQL.Add('delete from kustomer where id= "'+a+'"');
  ExecSQL ;
  SQL.Clear;
  SQL.Add('select * from kustomer');
  Open;
end;
  ShowMessage('Data Berhasil DiDelete!');
end else
begin
  ShowMessage('Data Batal Dihapus!');
end;
  posisiawal;
end;

procedure TForm6.Button5batalClick(Sender: TObject);
begin
posisiawal;
bersih;
end;

procedure TForm6.posisiawal;
begin
Button6baru.Enabled:= True;
Button1simpan.Enabled:= false;
Button2ubah.Enabled:= false;
Button5batal.Enabled:= false;
Button3hapus.Enabled:= false;
Edit1.Clear;
Edit1.Enabled:= false;
Edit2.Clear;
Edit2.Enabled:= false;
Edit3.Clear;
Edit3.Enabled:= false;
Edit4.Clear;
Edit4.Enabled:= false;
Edit6.Clear;
Edit6.Enabled:= false;
end;

procedure TForm6.bersih;
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit6.Clear;
end;

procedure TForm6.Edit5Change(Sender: TObject);
begin
with DataModule4.Zkustomer do
begin
  SQL.Clear;
  SQL.Add('select * from kustomer where name like "%'+edit5.Text+'%"');
  Open;
end;
end;

procedure TForm6.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text := DataModule4.Zkustomer.Fields[1].AsString;
Edit2.Text := DataModule4.Zkustomer.Fields[2].AsString;
Edit3.Text := DataModule4.Zkustomer.Fields[3].AsString;
Edit4.Text := DataModule4.Zkustomer.Fields[4].AsString;
Edit6.Text := DataModule4.Zkustomer.Fields[5].AsString;
cbb1.Text := DataModule4.Zkustomer.Fields[6].AsString;
a:= DataModule4.Zkustomer.Fields[0].AsString;
Edit1.Enabled:= True;
Edit2.Enabled:= True;
Edit3.Enabled:= True;
Edit4.Enabled:= True;
Edit6.Enabled:= True;
cbb1.Enabled:= True;
Button2ubah.Enabled:= True;
Button3hapus.Enabled:= True;
Button5batal.Enabled:= True;
Button6baru.Enabled:= False;
Button1simpan.Enabled:= False;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm6.cbb1Change(Sender: TObject);
begin
if cbb1.Text = 'Yes' then
diskon.Caption := '10%'
else if cbb1.Text = 'No' then
diskon.Caption := '5%'
end;

procedure TForm6.Button4laporanClick(Sender: TObject);
begin
form8.frxReport4.showReport();
end;

end.
