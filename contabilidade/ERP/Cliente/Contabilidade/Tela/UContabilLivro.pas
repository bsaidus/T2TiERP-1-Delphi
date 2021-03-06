{ *******************************************************************************
  Title: T2Ti ERP
  Description: Janela de Cadastro de Livros Cont�beis para o m�dulo Contabilidade

  The MIT License

  Copyright: Copyright (C) 2010 T2Ti.COM

  Permission is hereby granted, free of charge, to any person
  obtaining a copy of this software and associated documentation
  files (the "Software"), to deal in the Software without
  restriction, including without limitation the rights to use,
  copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the
  Software is furnished to do so, subject to the following
  conditions:

  The above copyright notice and this permission notice shall be
  included in all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
  OTHER DEALINGS IN THE SOFTWARE.

  The author may be contacted at:
  t2ti.com@gmail.com</p>

  @author Albert Eije (alberteije@gmail.com)
  @version 1.0
  ******************************************************************************* }
unit UContabilLivro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTelaCadastro, DB, DBClient, Menus, StdCtrls, ExtCtrls, Buttons, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, ComCtrls, ContabilLivroVO,
  ContabilLivroController, Tipos, Atributos, Constantes, LabeledCtrls, JvToolEdit,
  Mask, JvExMask, JvBaseEdits, Math, StrUtils, ActnList, Generics.Collections,
  RibbonSilverStyleActnCtrls, ActnMan, ToolWin, ActnCtrls;

type
  [TFormDescription(TConstantes.MODULO_CONTABILIDADE, 'Livros Cont�beis')]

  TFContabilLivro = class(TFTelaCadastro)
    DSContabilTermo: TDataSource;
    CDSContabilTermo: TClientDataSet;
    PanelMestre: TPanel;
    PageControlItens: TPageControl;
    tsItens: TTabSheet;
    PanelItens: TPanel;
    GridDetalhe: TJvDBUltimGrid;
    EditDescricao: TLabeledEdit;
    CDSContabilTermoID: TIntegerField;
    CDSContabilTermoID_CONTABIL_LIVRO: TIntegerField;
    CDSContabilTermoABERTURA_ENCERRAMENTO: TStringField;
    CDSContabilTermoNUMERO: TIntegerField;
    CDSContabilTermoPAGINA_INICIAL: TIntegerField;
    CDSContabilTermoPAGINA_FINAL: TIntegerField;
    CDSContabilTermoREGISTRADO: TStringField;
    CDSContabilTermoNUMERO_REGISTRO: TStringField;
    CDSContabilTermoDATA_DESPACHO: TDateField;
    CDSContabilTermoDATA_ABERTURA: TDateField;
    CDSContabilTermoDATA_ENCERRAMENTO: TDateField;
    CDSContabilTermoESCRITURACAO_INICIO: TDateField;
    CDSContabilTermoESCRITURACAO_FIM: TDateField;
    CDSContabilTermoTEXTO: TStringField;
    EditCompetencia: TLabeledMaskEdit;
    ComboBoxFormaEscrituracao: TLabeledComboBox;
    procedure FormCreate(Sender: TObject);
    procedure GridDblClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure GridParaEdits; override;
    procedure LimparCampos; override;
    procedure ControlaBotoes; override;
    procedure ControlaPopupMenu; override;

    // Controles CRUD
    function DoInserir: Boolean; override;
    function DoEditar: Boolean; override;
    function DoExcluir: Boolean; override;
    function DoSalvar: Boolean; override;

    procedure ConfigurarLayoutTela;
  end;

var
  FContabilLivro: TFContabilLivro;

implementation

uses ULookup, Biblioteca, UDataModule, ContabilTermoVO;
{$R *.dfm}

{$REGION 'Controles Infra'}
procedure TFContabilLivro.FormCreate(Sender: TObject);
begin
  ClasseObjetoGridVO := TContabilLivroVO;
  ObjetoController := TContabilLivroController.Create;

  inherited;
end;

procedure TFContabilLivro.LimparCampos;
begin
  inherited;
  CDSContabilTermo.EmptyDataSet;
end;

procedure TFContabilLivro.ConfigurarLayoutTela;
begin
  PanelEdits.Enabled := True;

  if StatusTela = stNavegandoEdits then
  begin
    PanelMestre.Enabled := False;
    PanelItens.Enabled := False;
  end
  else
  begin
    PanelMestre.Enabled := True;
    PanelItens.Enabled := True;
  end;
end;

procedure TFContabilLivro.ControlaBotoes;
begin
  inherited;

  BotaoImprimir.Visible := False;
end;

procedure TFContabilLivro.ControlaPopupMenu;
begin
  inherited;

  MenuImprimir.Visible := False;
end;
{$ENDREGION}

{$REGION 'Controles CRUD'}
function TFContabilLivro.DoInserir: Boolean;
begin
  Result := inherited DoInserir;

  ConfigurarLayoutTela;
  if Result then
  begin
    EditDescricao.SetFocus;
  end;
end;

function TFContabilLivro.DoEditar: Boolean;
begin
  Result := inherited DoEditar;

  ConfigurarLayoutTela;
  if Result then
  begin
    EditDescricao.SetFocus;
  end;
end;

function TFContabilLivro.DoExcluir: Boolean;
begin
  if inherited DoExcluir then
  begin
    try
      Result := TContabilLivroController(ObjetoController).Exclui(IdRegistroSelecionado);
    except
      Result := False;
    end;
  end
  else
  begin
    Result := False;
  end;

  if Result then
    TContabilLivroController(ObjetoController).Consulta(Filtro, Pagina);
end;

function TFContabilLivro.DoSalvar: Boolean;
var
  ContabilTermo: TContabilTermoVO;
begin
  DecimalSeparator := '.';
  Result := inherited DoSalvar;

  if Result then
  begin
    try
      if not Assigned(ObjetoVO) then
        ObjetoVO := TContabilLivroVO.Create;

      TContabilLivroVO(ObjetoVO).IdEmpresa := Sessao.IdEmpresa;
      TContabilLivroVO(ObjetoVO).Descricao := EditDescricao.Text;
      TContabilLivroVO(ObjetoVO).Competencia := EditCompetencia.Text;
      TContabilLivroVO(ObjetoVO).FormaEscrituracao := Copy(ComboBoxFormaEscrituracao.Text, 1, 1);
      // Termos
      TContabilLivroVO(ObjetoVO).ListaContabilTermoVO := TObjectList<TContabilTermoVO>.Create;
      CDSContabilTermo.DisableControls;
      CDSContabilTermo.First;
      while not CDSContabilTermo.Eof do
      begin
        ContabilTermo := TContabilTermoVO.Create;
        ContabilTermo.Id := CDSContabilTermoID.AsInteger;
        ContabilTermo.IdContabilLivro := TContabilLivroVO(ObjetoVO).Id;
        ContabilTermo.AberturaEncerramento := CDSContabilTermoABERTURA_ENCERRAMENTO.AsString;
        ContabilTermo.Numero := CDSContabilTermoNUMERO.AsInteger;
        ContabilTermo.PaginaInicial := CDSContabilTermoPAGINA_INICIAL.AsInteger;
        ContabilTermo.PaginaFinal := CDSContabilTermoPAGINA_FINAL.AsInteger;
        ContabilTermo.Registrado := CDSContabilTermoREGISTRADO.AsString;
        ContabilTermo.NumeroRegistro := CDSContabilTermoNUMERO_REGISTRO.AsString;
        ContabilTermo.DataDespacho := CDSContabilTermoDATA_DESPACHO.AsDateTime;
        ContabilTermo.DataAbertura := CDSContabilTermoDATA_ABERTURA.AsDateTime;
        ContabilTermo.DataEncerramento := CDSContabilTermoDATA_ENCERRAMENTO.AsDateTime;
        ContabilTermo.EscrituracaoInicio := CDSContabilTermoESCRITURACAO_INICIO.AsDateTime;
        ContabilTermo.EscrituracaoFim := CDSContabilTermoESCRITURACAO_FIM.AsDateTime;
        ContabilTermo.Texto := CDSContabilTermoTEXTO.AsString;
        TContabilLivroVO(ObjetoVO).ListaContabilTermoVO.Add(ContabilTermo);
        CDSContabilTermo.Next;
      end;
      CDSContabilTermo.EnableControls;

      if StatusTela = stInserindo then
        Result := TContabilLivroController(ObjetoController).Insere(TContabilLivroVO(ObjetoVO))
      else if StatusTela = stEditando then
      begin
        if TContabilLivroVO(ObjetoVO).ToJSONString <> TContabilLivroVO(ObjetoOldVO).ToJSONString then
        begin
          Result := TContabilLivroController(ObjetoController).Altera(TContabilLivroVO(ObjetoVO), TContabilLivroVO(ObjetoOldVO));
        end
        else
          Application.MessageBox('Nenhum dado foi alterado.', 'Mensagem do Sistema', MB_OK + MB_ICONINFORMATION);
      end;
    except
      Result := False;
    end;
  end;
  DecimalSeparator := ',';
end;
{$ENDREGION}

{$REGION 'Controle de Grid'}
procedure TFContabilLivro.GridDblClick(Sender: TObject);
begin
  inherited;
  ConfigurarLayoutTela;
end;

procedure TFContabilLivro.GridParaEdits;
var
  ContabilTermoEnumerator: TEnumerator<TContabilTermoVO>;
begin
  inherited;

  if not CDSGrid.IsEmpty then
  begin
    ObjetoVO := ObjetoController.VO<TContabilLivroVO>(IdRegistroSelecionado);
    if StatusTela = stEditando then
      ObjetoOldVO := ObjetoController.VO<TContabilLivroVO>(IdRegistroSelecionado);
  end;

  if Assigned(ObjetoVO) then
  begin
    EditDescricao.Text := TContabilLivroVO(ObjetoVO).Descricao;
    EditCompetencia.Text := TContabilLivroVO(ObjetoVO).Competencia;
    ComboBoxFormaEscrituracao.ItemIndex := AnsiIndexStr(TContabilLivroVO(ObjetoVO).FormaEscrituracao, ['G', 'R', 'A', 'Z', 'B']);

    // Termos
    ContabilTermoEnumerator := TContabilLivroVO(ObjetoVO).ListaContabilTermoVO.GetEnumerator;
    try
      with ContabilTermoEnumerator do
      begin
        while MoveNext do
        begin
          CDSContabilTermo.Append;
          CDSContabilTermoID.AsInteger := Current.id;
          CDSContabilTermoID_CONTABIL_Livro.AsInteger := Current.IdContabilLivro;
          CDSContabilTermoABERTURA_ENCERRAMENTO.AsString := Current.AberturaEncerramento;
          CDSContabilTermoNUMERO.AsInteger := Current.Numero;
          CDSContabilTermoPAGINA_INICIAL.AsInteger := Current.PaginaInicial;
          CDSContabilTermoPAGINA_FINAL.AsInteger := Current.PaginaFinal;
          CDSContabilTermoREGISTRADO.AsString := Current.Registrado;
          CDSContabilTermoNUMERO_REGISTRO.AsString := Current.NumeroRegistro;
          CDSContabilTermoDATA_DESPACHO.AsDateTime := Current.DataDespacho;
          CDSContabilTermoDATA_ABERTURA.AsDateTime := Current.DataAbertura;
          CDSContabilTermoDATA_ENCERRAMENTO.AsDateTime := Current.DataEncerramento;
          CDSContabilTermoESCRITURACAO_INICIO.AsDateTime := Current.EscrituracaoInicio;
          CDSContabilTermoESCRITURACAO_FIM.AsDateTime := Current.EscrituracaoFim;
          CDSContabilTermoTEXTO.AsString := Current.Texto;
          CDSContabilTermo.Post;
        end;
      end;
    finally
      ContabilTermoEnumerator.Free;
    end;

    TContabilLivroVO(ObjetoVO).ListaContabilTermoVO := Nil;
    if Assigned(TContabilLivroVO(ObjetoOldVO)) then
      TContabilLivroVO(ObjetoOldVO).ListaContabilTermoVO := Nil;
  end;

  ConfigurarLayoutTela;
end;
{$ENDREGION}

end.
