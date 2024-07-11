unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    btnsimpan: TButton;
    btnedit: TButton;
    btnhapus: TButton;
    btnbatal: TButton;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Edit3: TEdit;
    btnbaru: TButton;
    btnlaporan: TButton;
    procedure Edit3Change(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure btnbaruClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnhapusClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnlaporanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  a : string;

implementation

uses Unit4, Unit8;

{$R *.dfm}

procedure TForm5.Edit3Change(Sender: TObject);
begin
  with DataModule4.Zsatuan do
  begin
    SQL.Clear;
    SQL.Add('select * from satuan where name like "%'+edit3.Text+'%"');
    Open;
  end;
end;

procedure TForm5.btnsimpanClick(Sender: TObject);
begin
if Edit1.Text = '' then
begin
  ShowMessage('Nama Satuan Tidak Boleh Kosong!');
end else if DataModule4.Zsatuan.Locate('name', Edit1.Text, []) then
begin
  ShowMessage('Nama Satuan ' + Edit1.Text + ' Sudah Ada Didalam Sistem');
end else
begin
  with DataModule4.Zsatuan do
  begin
    SQL.Clear;
    SQL.Add('insert into satuan values(null, "' + Edit1.Text + '", "' + Edit2.Text + '")');
    ExecSQL;
    SQL.Clear;
    SQL.Add('select * from satuan');
    Open;
  end;
  ShowMessage('Data Berhasil Disimpan!');
end;

end;


procedure TForm5.posisiawal;
begin
bersih;
btnsimpan.Enabled:= false;
btnedit.Enabled:= false;
btnhapus.Enabled:= false;
btnbaru.Enabled:= True;
btnbatal.Enabled:= false;
edit1.Clear;
edit1.Enabled:= false;
edit2.Clear;
edit2.Enabled:= false;
end;

procedure TForm5.bersih;
begin
 edit1.Clear;
 edit2.Clear;
end;

procedure TForm5.btnbaruClick(Sender: TObject);
begin
btnsimpan.Enabled:= True;
btnedit.Enabled:= False;
btnhapus.Enabled:= False;
btnlaporan.Enabled:= False;
btnbaru.Enabled:= True;
btnbatal.Enabled:= False;
edit1.Enabled:= True;
edit2.Enabled:= True;
edit3.Enabled:= True;
end;

procedure TForm5.DBGrid1CellClick(Column: TColumn);
begin
edit1.Text:= DataModule4.Zsatuan.Fields[1].AsString;
edit2.Text:= DataModule4.Zsatuan.Fields[2].AsString;
a:= DataModule4.Zsatuan.Fields[0].AsString;
Edit1.Enabled:= True;
edit2.Enabled:= True;
btnedit.Enabled:= True;
btnhapus.Enabled:= True;
btnbaru.Enabled:= True;
btnbatal.Enabled:= True;
btnsimpan.Enabled:= False;
end;

procedure TForm5.btnhapusClick(Sender: TObject);
begin
begin  //kode delete
if MessageDlg('Apakah Anda Yakin Menghapus Data ini',mtWarning,[mbYes,mbNo],0)=mryes then
begin
with DataModule4.Zsatuan do
begin
SQL.Clear;
SQL.Add('delete from satuan where id= "'+a+'"');
ExecSQL ;
SQL.Clear;
SQL.Add('select * from satuan');
Open;
end;
ShowMessage('Data Berhasil DiDelete!');
end else
begin
ShowMessage('Data Batal Dihapus!');
end;
posisiawal;
end;
end;

procedure TForm5.btneditClick(Sender: TObject);
begin
 if edit1.Text = '' then
begin
ShowMessage('Nama Satuan Tidak Boleh Kosong!');
end else


begin //kode update
with DataModule4.Zsatuan do
begin
SQL.Clear;
SQL.Add('update satuan set name="'+edit1.text+'", diskripsi="'+edit2.text+'" where id= "'+a+'"');
ExecSQL ;

SQL.Clear;
SQL.Add('select * from satuan');
Open;
end;
ShowMessage('Data Berhasil Diupdate!');
end;
posisiawal;
end;



procedure TForm5.btnbatalClick(Sender: TObject);
begin
posisiawal;
bersih;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.btnlaporanClick(Sender: TObject);
begin
form8.frxReport2.showReport();
end;

end.
