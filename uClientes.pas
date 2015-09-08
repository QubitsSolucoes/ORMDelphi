unit uClientes;

interface

uses uPersistentObject,uAtrib;

type
  [Tablename('CLIENTES')]
  TCliente = class(TPersintentObject)
  private
    FCep: String;
    FCnpjCpf: String;
    FID: Integer;
    FNome: String;
    FEndere�o: String;
  public
    [FieldName('ID',True,True)]
    property ID: Integer read FID write FID;
    [FieldName('NOME')]
    property Nome: String read FNome write FNome;
    [FieldName('CNPJCPF')]
    property CnpjCpf: String read FCnpjCpf write FCnpjCpf;
    [FieldName('ENDERECO')]
    property Endereco: String read FEndere�o write Fendere�o;
    [FieldName('CEP')]
    property Cep: String read FCep write FCep;
    procedure Load(const AValue: Integer); override;
  end;

implementation

{ TCliente }

procedure TCliente.Load(const AValue: Integer);
begin
  ID := AValue;

  inherited Load;
end;

end.
