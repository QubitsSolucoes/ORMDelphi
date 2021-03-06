unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uClientes;

type
  TfmMain = class(TForm)
    edtNome: TEdit;
    edtCpf: TEdit;
    edtEndereco: TEdit;
    edtCEP: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    edtID: TEdit;
    Label5: TLabel;
    Update: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure UpdateClick(Sender: TObject);
  private
    { Private declarations }
     FCliente: TCliente;
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

{$R *.dfm}

procedure TfmMain.Button1Click(Sender: TObject);
begin
  with TCliente.Create do
  try
    Nome := edtNome.Text;
    CnpjCpf := edtCpf.Text;
    Endereco := edtEndereco.Text;
    Cep := edtCEP.Text;
    if Insert then
    begin
      ShowMessage('Inserido com sucesso!');
      edtID.Text := IntToStr(ID);
    end;
  finally
    Free;
  end;
end;

procedure TfmMain.Button2Click(Sender: TObject);
begin
  if not Assigned(FCliente) then
    FCliente := TCliente.Create;
  FCliente.Load(StrToIntDef(edtID.Text,0));
  with FCliente do
  begin
    edtNome.Text := Nome;
    edtCpf.Text := CnpjCpf;
    edtEndereco.Text := Endereco;
    edtCEP.Text := Cep;
  end;
end;

procedure TfmMain.UpdateClick(Sender: TObject);
begin
  with FCliente do
  begin
    Nome := edtNome.Text;
    CnpjCpf := edtCpf.Text;
    Endereco := edtEndereco.Text;
    Cep := edtCEP.Text;
    Update;
  end;
end;

end.
