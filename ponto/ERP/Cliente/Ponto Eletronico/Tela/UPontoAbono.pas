{ *******************************************************************************
  Title: T2Ti ERP
  Description: Janela Cadastro de Abonos para o Ponto Eletrônico

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
unit UPontoAbono;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTelaCadastro, DB, DBClient, Menus, StdCtrls, ExtCtrls, Buttons, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, ComCtrls, PontoAbonoVO,
  PontoAbonoController, Tipos, Atributos, Constantes, LabeledCtrls, JvToolEdit,
  Mask, JvExMask, JvBaseEdits, Math, StrUtils, ActnList, Generics.Collections,
  RibbonSilverStyleActnCtrls, ActnMan, ToolWin, ActnCtrls;

type
  [TFormDescription(TConstantes.MODULO_PONTO_ELETRONICO, 'Abonos')]

  TFPontoAbono = class(TFTelaCadastro)
    DSPontoAbonoUtilizacao: TDataSource;
    CDSPontoAbonoUtilizacao: TClientDataSet;
    CDSPontoAbonoUtilizacaoID: TIntegerField;
    CDSPontoAbonoUtilizacaoID_PONTO_ABONO: TIntegerField;
    CDSPontoAbonoUtilizacaoDATA_UTILIZACAO: TDateField;
    CDSPontoAbonoUtilizacaoOBSERVACAO: TStringField;
    PanelMestre: TPanel;
    EditIdColaborador: TLabeledCalcEdit;
    EditColaborador: TLabeledEdit;
    EditInicioUtilizacao: TLabeledDateEdit;
    EditQuantidade: TLabeledCalcEdit;
    EditDataCadastro: TLabeledDateEdit;
    EditUtilizado: TLabeledCalcEdit;
    EditSaldo: TLabeledCalcEdit;
    MemoObservacao: TLabeledMemo;
    PageControlItens: TPageControl;
    tsItens: TTabSheet;
    PanelItens: TPanel;
    GridParcelas: TJvDBUltimGrid;
    procedure FormCreate(Sender: TObject);
    procedure EditIdColaboradorExit(Sender: TObject);
    procedure EditIdColaboradorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GridDblClick(Sender: TObject);
    procedure EditIdColaboradorKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure GridParaEdits; override;
    procedure LimparCampos; override;

    // Controles CRUD
    function DoInserir: Boolean; override;
    function DoEditar: Boolean; override;
    function DoExcluir: Boolean; override;
    function DoSalvar: Boolean; override;

    procedure ConfigurarLayoutTela;
  end;

var
  FPontoAbono: TFPontoAbono;

implementation

uses ULookup, Biblioteca, UDataModule, PontoAbonoUtilizacaoVO,
ColaboradorVO, ColaboradorController;
{$R *.dfm}

{$REGION 'Infra'}
procedure TFPontoAbono.FormCreate(Sender: TObject);
begin
  ClasseObjetoGridVO := TPontoAbonoVO;
  ObjetoController := TPontoAbonoController.Create;

  inherited;
end;

procedure TFPontoAbono.LimparCampos;
begin
  inherited;
  CDSPontoAbonoUtilizacao.EmptyDataSet;
end;

procedure TFPontoAbono.ConfigurarLayoutTela;
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
{$ENDREGION}

{$REGION 'Controles CRUD'}
function TFPontoAbono.DoInserir: Boolean;
begin
  Result := inherited DoInserir;

  ConfigurarLayoutTela;
  if Result then
  begin
    EditIdColaborador.SetFocus;
  end;
end;

function TFPontoAbono.DoEditar: Boolean;
begin
  Result := inherited DoEditar;

  ConfigurarLayoutTela;
  if Result then
  begin
    EditIdColaborador.SetFocus;
  end;
end;

function TFPontoAbono.DoExcluir: Boolean;
begin
  if inherited DoExcluir then
  begin
    try
      Result := TPontoAbonoController(ObjetoController).Exclui(IdRegistroSelecionado);
    except
      Result := False;
    end;
  end
  else
  begin
    Result := False;
  end;

  if Result then
    TPontoAbonoController(ObjetoController).Consulta(Filtro, Pagina);
end;

function TFPontoAbono.DoSalvar: Boolean;
begin
  Result := inherited DoSalvar;

  if Result then
  begin
    try
      if not Assigned(ObjetoVO) then
        ObjetoVO := TPontoAbonoVO.Create;

      TPontoAbonoVO(ObjetoVO).IdColaborador := EditIdColaborador.AsInteger;
      TPontoAbonoVO(ObjetoVO).Quantidade := EditQuantidade.AsInteger;
      TPontoAbonoVO(ObjetoVO).Utilizado := EditUtilizado.AsInteger;
      TPontoAbonoVO(ObjetoVO).Saldo := EditSaldo.AsInteger;
      TPontoAbonoVO(ObjetoVO).DataCadastro := EditDataCadastro.Date;
      TPontoAbonoVO(ObjetoVO).InicioUtilizacao := EditInicioUtilizacao.Date;
      TPontoAbonoVO(ObjetoVO).Observacao := MemoObservacao.Text;

      TPontoAbonoVO(ObjetoVO).ColaboradorVO := Nil;
      if Assigned(ObjetoOldVO) then
      begin
        TPontoAbonoVO(ObjetoOldVO).ColaboradorVO := Nil;
      end;

      if StatusTela = stInserindo then
        Result := TPontoAbonoController(ObjetoController).Insere(TPontoAbonoVO(ObjetoVO))
      else if StatusTela = stEditando then
      begin
        if TPontoAbonoVO(ObjetoVO).ToJSONString <> TPontoAbonoVO(ObjetoOldVO).ToJSONString then
        begin
          Result := TPontoAbonoController(ObjetoController).Altera(TPontoAbonoVO(ObjetoVO), TPontoAbonoVO(ObjetoOldVO));
        end
        else
          Application.MessageBox('Nenhum dado foi alterado.', 'Mensagem do Sistema', MB_OK + MB_ICONINFORMATION);
      end;
    except
      Result := False;
    end;
  end;
end;
{$ENDREGION}

{$REGION 'Campos Transientes'}
procedure TFPontoAbono.EditIdColaboradorExit(Sender: TObject);
var
  Filtro: String;
begin
  if EditIdColaborador.Value <> 0 then
  begin
    try
      Filtro := 'ID = ' + EditIdColaborador.Text;
      EditIdColaborador.Clear;
      EditColaborador.Clear;
      if not PopulaCamposTransientes(Filtro, TColaboradorVO, TColaboradorController) then
        PopulaCamposTransientesLookup(TColaboradorVO, TColaboradorController);
      if CDSTransiente.RecordCount > 0 then
      begin
        EditIdColaborador.Text := CDSTransiente.FieldByName('ID').AsString;
        EditColaborador.Text := CDSTransiente.FieldByName('PESSOA.NOME').AsString;
      end
      else
      begin
        Exit;
        EditIdColaborador.SetFocus;
      end;
    finally
      CDSTransiente.Close;
    end;
  end
  else
  begin
    EditColaborador.Clear;
  end;
end;

procedure TFPontoAbono.EditIdColaboradorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F1 then
  begin
    EditIdColaborador.Value := -1;
    EditQuantidade.SetFocus;
  end;
end;

procedure TFPontoAbono.EditIdColaboradorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    EditQuantidade.SetFocus;
  end;
end;
{$ENDREGION}

{$REGION 'Controle de Grid'}
procedure TFPontoAbono.GridDblClick(Sender: TObject);
begin
  inherited;
  ConfigurarLayoutTela;
end;

procedure TFPontoAbono.GridParaEdits;
var
  PontoAbonoUtilizacaoEnumerator: TEnumerator<TPontoAbonoUtilizacaoVO>;
begin
  inherited;

  if not CDSGrid.IsEmpty then
  begin
    ObjetoVO := ObjetoController.VO<TPontoAbonoVO>(IdRegistroSelecionado);
    if StatusTela = stEditando then
      ObjetoOldVO := ObjetoController.VO<TPontoAbonoVO>(IdRegistroSelecionado);
  end;

  if Assigned(ObjetoVO) then
  begin
    EditIdColaborador.AsInteger := TPontoAbonoVO(ObjetoVO).IdColaborador;
    EditColaborador.Text := TPontoAbonoVO(ObjetoVO).ColaboradorNome;
    EditQuantidade.AsInteger := TPontoAbonoVO(ObjetoVO).Quantidade;
    EditUtilizado.AsInteger := TPontoAbonoVO(ObjetoVO).Utilizado;
    EditSaldo.AsInteger := TPontoAbonoVO(ObjetoVO).Saldo;
    EditDataCadastro.Date := TPontoAbonoVO(ObjetoVO).DataCadastro;
    EditInicioUtilizacao.Date := TPontoAbonoVO(ObjetoVO).InicioUtilizacao;
    MemoObservacao.Text := TPontoAbonoVO(ObjetoVO).Observacao;

    // Utilização
    PontoAbonoUtilizacaoEnumerator := TPontoAbonoVO(ObjetoVO).ListaPontoAbonoUtilizacaoVO.GetEnumerator;
    try
      with PontoAbonoUtilizacaoEnumerator do
      begin
        while MoveNext do
        begin
          CDSPontoAbonoUtilizacao.Append;

          CDSPontoAbonoUtilizacaoID.AsInteger := Current.id;
          CDSPontoAbonoUtilizacaoID_PONTO_ABONO.AsInteger := Current.IdPontoAbono;
          CDSPontoAbonoUtilizacaoDATA_UTILIZACAO.AsDateTime := Current.DataUtilizacao;
          CDSPontoAbonoUtilizacaoOBSERVACAO.AsString := Current.Observacao;

          CDSPontoAbonoUtilizacao.Post;
        end;
      end;
    finally
      PontoAbonoUtilizacaoEnumerator.Free;
    end;
    TPontoAbonoVO(ObjetoVO).ListaPontoAbonoUtilizacaoVO := Nil;
    if Assigned(TPontoAbonoVO(ObjetoOldVO)) then
      TPontoAbonoVO(ObjetoOldVO).ListaPontoAbonoUtilizacaoVO := Nil;
  end;
  ConfigurarLayoutTela;
end;
{$ENDREGION}

end.
