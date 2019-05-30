unit UDMVendas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDMVenda = class(TDataModule)
    FDQVendas: TFDQuery;
    FDQItens: TFDQuery;
    FDQProduto: TFDQuery;
    FDQCliente: TFDQuery;
    FDQClienteid_cliente: TIntegerField;
    FDQClientenm_cliente: TWideStringField;
    FDQClientedt_nasc: TDateField;
    FDQProdutoid_produto: TIntegerField;
    FDQProdutonm_produto: TWideStringField;
    FDQProdutovalor: TBCDField;
    FDQProdutoqtde: TIntegerField;
    FDQProdutoqtd_minima: TIntegerField;
    FDQVendasid_venda: TIntegerField;
    FDQVendasdt_venda: TDateField;
    FDQVendastotal: TIntegerField;
    FDQVendasid_cliente: TIntegerField;
    FDQItensid_venda: TIntegerField;
    FDQItensid_produto: TIntegerField;
    FDQItensqtde: TIntegerField;
    FDQItensvl_unitario: TBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMVenda: TDMVenda;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDMConexao;

{$R *.dfm}

end.
