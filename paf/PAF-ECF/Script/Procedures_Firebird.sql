/******************************************************************************/
/***          Generated by IBExpert 2008.11.27 29/8/2011 20:25:33           ***/
/******************************************************************************/

SET SQL DIALECT 3;

SET NAMES WIN1252;

SET CLIENTLIB 'C:\Arquivos de programas\Firebird\Firebird_2_5\bin\fbclient.dll';

CREATE DATABASE 'C:\T2TIPAFECF\T2TIPAFECF.FDB'
USER 'SYSDBA' PASSWORD 'masterkey'
PAGE_SIZE 8192
DEFAULT CHARACTER SET WIN1252
COLLATION WIN_PTBR;




SET TERM ^ ; 



/******************************************************************************/
/***                           Stored Procedures                            ***/
/******************************************************************************/

CREATE OR ALTER PROCEDURE CARGA_BANCO (
    ID TYPE OF COLUMN BANCO.ID,
    CODIGO TYPE OF COLUMN BANCO.CODIGO,
    NOME TYPE OF COLUMN BANCO.NOME,
    URL TYPE OF COLUMN BANCO.URL)
AS
BEGIN
  EXIT;
END^


CREATE OR ALTER PROCEDURE CARGA_CFOP (
    ID TYPE OF COLUMN CFOP.ID,
    CFOP TYPE OF COLUMN CFOP.CFOP,
    DESCRICAO TYPE OF COLUMN CFOP.DESCRICAO,
    APLICACAO TYPE OF COLUMN CFOP.APLICACAO)
AS
BEGIN
  EXIT;
END^


CREATE OR ALTER PROCEDURE CARGA_CLIENTE (
    ID TYPE OF COLUMN CLIENTE.ID,
    ID_SITUACAO_CLI TYPE OF COLUMN CLIENTE.ID_SITUACAO_CLI,
    NOME TYPE OF COLUMN CLIENTE.NOME,
    CPF_CNPJ TYPE OF COLUMN CLIENTE.CPF_CNPJ,
    RG TYPE OF COLUMN CLIENTE.RG,
    ORGAO_RG TYPE OF COLUMN CLIENTE.ORGAO_RG,
    INSCRICAO_ESTADUAL TYPE OF COLUMN CLIENTE.INSCRICAO_ESTADUAL,
    INSCRICAO_MUNICIPAL TYPE OF COLUMN CLIENTE.INSCRICAO_MUNICIPAL,
    DESDE TYPE OF COLUMN CLIENTE.DESDE,
    TIPO_PESSOA TYPE OF COLUMN CLIENTE.TIPO_PESSOA,
    EXCLUIDO TYPE OF COLUMN CLIENTE.EXCLUIDO,
    DATA_CADASTRO TYPE OF COLUMN CLIENTE.DATA_CADASTRO)
AS
BEGIN
  EXIT;
END^


CREATE OR ALTER PROCEDURE CARGA_ECF_CONTADOR (
    ID TYPE OF COLUMN ECF_CONTADOR.ID,
    ID_ECF_EMPRESA TYPE OF COLUMN ECF_CONTADOR.ID_ECF_EMPRESA,
    CPF TYPE OF COLUMN ECF_CONTADOR.CPF,
    CNPJ TYPE OF COLUMN ECF_CONTADOR.CNPJ,
    NOME TYPE OF COLUMN ECF_CONTADOR.NOME,
    INSCRICAO_CRC TYPE OF COLUMN ECF_CONTADOR.INSCRICAO_CRC,
    FONE TYPE OF COLUMN ECF_CONTADOR.FONE,
    FAX TYPE OF COLUMN ECF_CONTADOR.FAX,
    LOGRADOURO TYPE OF COLUMN ECF_CONTADOR.LOGRADOURO,
    NUMERO TYPE OF COLUMN ECF_CONTADOR.NUMERO,
    COMPLEMENTO TYPE OF COLUMN ECF_CONTADOR.COMPLEMENTO,
    BAIRRO TYPE OF COLUMN ECF_CONTADOR.BAIRRO,
    CEP TYPE OF COLUMN ECF_CONTADOR.CEP,
    CODIGO_MUNICIPIO TYPE OF COLUMN ECF_CONTADOR.CODIGO_MUNICIPIO,
    UF TYPE OF COLUMN ECF_CONTADOR.UF,
    EMAIL TYPE OF COLUMN ECF_CONTADOR.EMAIL)
AS
BEGIN
  EXIT;
END^


CREATE OR ALTER PROCEDURE CARGA_ECF_EMPRESA (
    ID TYPE OF COLUMN ECF_EMPRESA.ID,
    RAZAO_SOCIAL TYPE OF COLUMN ECF_EMPRESA.RAZAO_SOCIAL,
    NOME_FANTASIA TYPE OF COLUMN ECF_EMPRESA.NOME_FANTASIA,
    CNPJ TYPE OF COLUMN ECF_EMPRESA.CNPJ,
    INSCRICAO_ESTADUAL TYPE OF COLUMN ECF_EMPRESA.INSCRICAO_ESTADUAL,
    INSCRICAO_ESTADUAL_ST TYPE OF COLUMN ECF_EMPRESA.INSCRICAO_ESTADUAL_ST,
    INSCRICAO_MUNICIPAL TYPE OF COLUMN ECF_EMPRESA.INSCRICAO_MUNICIPAL,
    INSCRICAO_JUNTA_COMERCIAL TYPE OF COLUMN ECF_EMPRESA.INSCRICAO_JUNTA_COMERCIAL,
    DATA_INSC_JUNTA_COMERCIAL TYPE OF COLUMN ECF_EMPRESA.DATA_INSC_JUNTA_COMERCIAL,
    MATRIZ_FILIAL TYPE OF COLUMN ECF_EMPRESA.MATRIZ_FILIAL,
    DATA_CADASTRO TYPE OF COLUMN ECF_EMPRESA.DATA_CADASTRO,
    DATA_INICIO_ATIVIDADES TYPE OF COLUMN ECF_EMPRESA.DATA_INICIO_ATIVIDADES,
    SUFRAMA TYPE OF COLUMN ECF_EMPRESA.SUFRAMA,
    EMAIL TYPE OF COLUMN ECF_EMPRESA.EMAIL,
    IMAGEM_LOGOTIPO TYPE OF COLUMN ECF_EMPRESA.IMAGEM_LOGOTIPO,
    CRT TYPE OF COLUMN ECF_EMPRESA.CRT,
    TIPO_REGIME TYPE OF COLUMN ECF_EMPRESA.TIPO_REGIME,
    ALIQUOTA_PIS TYPE OF COLUMN ECF_EMPRESA.ALIQUOTA_PIS,
    ALIQUOTA_COFINS TYPE OF COLUMN ECF_EMPRESA.ALIQUOTA_COFINS,
    LOGRADOURO TYPE OF COLUMN ECF_EMPRESA.LOGRADOURO,
    NUMERO TYPE OF COLUMN ECF_EMPRESA.NUMERO,
    COMPLEMENTO TYPE OF COLUMN ECF_EMPRESA.COMPLEMENTO,
    CEP TYPE OF COLUMN ECF_EMPRESA.CEP,
    BAIRRO TYPE OF COLUMN ECF_EMPRESA.BAIRRO,
    CIDADE TYPE OF COLUMN ECF_EMPRESA.CIDADE,
    UF TYPE OF COLUMN ECF_EMPRESA.UF,
    FONE TYPE OF COLUMN ECF_EMPRESA.FONE,
    FAX TYPE OF COLUMN ECF_EMPRESA.FAX,
    CONTATO TYPE OF COLUMN ECF_EMPRESA.CONTATO,
    CODIGO_IBGE_CIDADE TYPE OF COLUMN ECF_EMPRESA.CODIGO_IBGE_CIDADE,
    CODIGO_IBGE_UF TYPE OF COLUMN ECF_EMPRESA.CODIGO_IBGE_UF)
AS
BEGIN
  EXIT;
END^


CREATE OR ALTER PROCEDURE CARGA_ECF_FUNCIONARIO (
    ID TYPE OF COLUMN ECF_FUNCIONARIO.ID,
    NOME TYPE OF COLUMN ECF_FUNCIONARIO.NOME,
    TELEFONE TYPE OF COLUMN ECF_FUNCIONARIO.TELEFONE,
    CELULAR TYPE OF COLUMN ECF_FUNCIONARIO.CELULAR,
    EMAIL TYPE OF COLUMN ECF_FUNCIONARIO.EMAIL,
    COMISSAO_VISTA TYPE OF COLUMN ECF_FUNCIONARIO.COMISSAO_VISTA,
    COMISSAO_PRAZO TYPE OF COLUMN ECF_FUNCIONARIO.COMISSAO_PRAZO,
    NIVEL_AUTORIZACAO TYPE OF COLUMN ECF_FUNCIONARIO.NIVEL_AUTORIZACAO)
AS
BEGIN
  EXIT;
END^


CREATE OR ALTER PROCEDURE CARGA_ECF_OPERADOR (
    ID TYPE OF COLUMN ECF_OPERADOR.ID,
    ID_ECF_FUNCIONARIO TYPE OF COLUMN ECF_OPERADOR.ID_ECF_FUNCIONARIO,
    LOGIN TYPE OF COLUMN ECF_OPERADOR.LOGIN,
    SENHA TYPE OF COLUMN ECF_OPERADOR.SENHA)
AS
BEGIN
  EXIT;
END^


CREATE OR ALTER PROCEDURE CARGA_ECF_TURNO (
    ID TYPE OF COLUMN ECF_TURNO.ID,
    DESCRICAO TYPE OF COLUMN ECF_TURNO.DESCRICAO,
    HORA_INICIO TYPE OF COLUMN ECF_TURNO.HORA_INICIO,
    HORA_FIM TYPE OF COLUMN ECF_TURNO.HORA_FIM)
AS
BEGIN
  EXIT;
END^


CREATE OR ALTER PROCEDURE CARGA_FICHA_TECNICA (
    ID TYPE OF COLUMN FICHA_TECNICA.ID,
    ID_PRODUTO TYPE OF COLUMN FICHA_TECNICA.ID_PRODUTO,
    DESCRICAO TYPE OF COLUMN FICHA_TECNICA.DESCRICAO,
    ID_PRODUTO_FILHO TYPE OF COLUMN FICHA_TECNICA.ID_PRODUTO_FILHO,
    QUANTIDADE TYPE OF COLUMN FICHA_TECNICA.QUANTIDADE)
AS
BEGIN
  EXIT;
END^


CREATE OR ALTER PROCEDURE CARGA_LOG_IMPORTACAO (
    DATA_IMPORTACAO TYPE OF COLUMN LOG_IMPORTACAO.DATA_IMPORTACAO,
    LOG_ERRO TYPE OF COLUMN LOG_IMPORTACAO.LOG_ERRO)
AS
BEGIN
  EXIT;
END^


CREATE OR ALTER PROCEDURE CARGA_PRODUTO (
    ID TYPE OF COLUMN PRODUTO.ID,
    ID_UNIDADE_PRODUTO TYPE OF COLUMN PRODUTO.ID_UNIDADE_PRODUTO,
    GTIN TYPE OF COLUMN PRODUTO.GTIN,
    CODIGO_INTERNO TYPE OF COLUMN PRODUTO.CODIGO_INTERNO,
    NOME TYPE OF COLUMN PRODUTO.NOME,
    DESCRICAO TYPE OF COLUMN PRODUTO.DESCRICAO,
    DESCRICAO_PDV TYPE OF COLUMN PRODUTO.DESCRICAO_PDV,
    VALOR_VENDA TYPE OF COLUMN PRODUTO.VALOR_VENDA,
    QTD_ESTOQUE TYPE OF COLUMN PRODUTO.QTD_ESTOQUE,
    ESTOQUE_MIN TYPE OF COLUMN PRODUTO.ESTOQUE_MIN,
    ESTOQUE_MAX TYPE OF COLUMN PRODUTO.ESTOQUE_MAX,
    IAT TYPE OF COLUMN PRODUTO.IAT,
    IPPT TYPE OF COLUMN PRODUTO.IPPT,
    NCM TYPE OF COLUMN PRODUTO.NCM,
    TIPO_ITEM_SPED TYPE OF COLUMN PRODUTO.TIPO_ITEM_SPED,
    DATA_ESTOQUE TYPE OF COLUMN PRODUTO.DATA_ESTOQUE,
    HASH_TRIPA TYPE OF COLUMN PRODUTO.HASH_TRIPA,
    TAXA_IPI TYPE OF COLUMN PRODUTO.TAXA_IPI,
    TAXA_ISSQN TYPE OF COLUMN PRODUTO.TAXA_ISSQN,
    TAXA_PIS TYPE OF COLUMN PRODUTO.TAXA_PIS,
    TAXA_COFINS TYPE OF COLUMN PRODUTO.TAXA_COFINS,
    TAXA_ICMS TYPE OF COLUMN PRODUTO.TAXA_ICMS,
    CST TYPE OF COLUMN PRODUTO.CST,
    TOTALIZADOR_PARCIAL TYPE OF COLUMN PRODUTO.TOTALIZADOR_PARCIAL,
    ECF_ICMS_ST TYPE OF COLUMN PRODUTO.ECF_ICMS_ST,
    CODIGO_BALANCA TYPE OF COLUMN PRODUTO.CODIGO_BALANCA,
    PAF_P_ST TYPE OF COLUMN PRODUTO.PAF_P_ST)
AS
BEGIN
  EXIT;
END^


CREATE OR ALTER PROCEDURE CARGA_PRODUTO_PROMOCAO (
    ID TYPE OF COLUMN PRODUTO_PROMOCAO.ID,
    ID_PRODUTO TYPE OF COLUMN PRODUTO_PROMOCAO.ID_PRODUTO,
    DATA_INICIO TYPE OF COLUMN PRODUTO_PROMOCAO.DATA_INICIO,
    DATA_FIM TYPE OF COLUMN PRODUTO_PROMOCAO.DATA_FIM,
    QUANTIDADE_EM_PROMOCAO TYPE OF COLUMN PRODUTO_PROMOCAO.QUANTIDADE_EM_PROMOCAO,
    QUANTIDADE_MAXIMA_CLIENTE TYPE OF COLUMN PRODUTO_PROMOCAO.QUANTIDADE_MAXIMA_CLIENTE,
    VALOR TYPE OF COLUMN PRODUTO_PROMOCAO.VALOR)
AS
BEGIN
  EXIT;
END^


CREATE OR ALTER PROCEDURE CARGA_SITUACAO_CLI (
    ID TYPE OF COLUMN SITUACAO_CLI.ID,
    NOME TYPE OF COLUMN SITUACAO_CLI.NOME,
    DESCRICAO TYPE OF COLUMN SITUACAO_CLI.DESCRICAO)
AS
BEGIN
  EXIT;
END^


CREATE OR ALTER PROCEDURE CARGA_UNIDADE_PRODUTO (
    ID TYPE OF COLUMN UNIDADE_PRODUTO.ID,
    NOME TYPE OF COLUMN UNIDADE_PRODUTO.NOME,
    DESCRICAO TYPE OF COLUMN UNIDADE_PRODUTO.DESCRICAO,
    PODE_FRACIONAR TYPE OF COLUMN UNIDADE_PRODUTO.PODE_FRACIONAR)
AS
BEGIN
  EXIT;
END^



SET TERM ; ^



/******************************************************************************/
/***                           Stored Procedures                            ***/
/******************************************************************************/


SET TERM ^ ;

CREATE OR ALTER PROCEDURE CARGA_BANCO (
    ID TYPE OF COLUMN BANCO.ID,
    CODIGO TYPE OF COLUMN BANCO.CODIGO,
    NOME TYPE OF COLUMN BANCO.NOME,
    URL TYPE OF COLUMN BANCO.URL)
AS
begin
  if (exists(select id from banco where (id = :id))) then
    update banco
    set codigo = :codigo,
        nome = :nome,
        url = :url
    where (id = :id);
  else
    insert into banco (
        id,
        codigo,
        nome,
        url)
    values (
        :id,
        :codigo,
        :nome,
        :url);
end^


CREATE OR ALTER PROCEDURE CARGA_CFOP (
    ID TYPE OF COLUMN CFOP.ID,
    CFOP TYPE OF COLUMN CFOP.CFOP,
    DESCRICAO TYPE OF COLUMN CFOP.DESCRICAO,
    APLICACAO TYPE OF COLUMN CFOP.APLICACAO)
AS
begin
  if (exists(select id from cfop where (id = :id))) then
    update cfop
    set cfop = :cfop,
        descricao = :descricao,
        aplicacao = :aplicacao
    where (id = :id);
  else
    insert into cfop (
        id,
        cfop,
        descricao,
        aplicacao)
    values (
        :id,
        :cfop,
        :descricao,
        :aplicacao);
end^


CREATE OR ALTER PROCEDURE CARGA_CLIENTE (
    ID TYPE OF COLUMN CLIENTE.ID,
    ID_SITUACAO_CLI TYPE OF COLUMN CLIENTE.ID_SITUACAO_CLI,
    NOME TYPE OF COLUMN CLIENTE.NOME,
    CPF_CNPJ TYPE OF COLUMN CLIENTE.CPF_CNPJ,
    RG TYPE OF COLUMN CLIENTE.RG,
    ORGAO_RG TYPE OF COLUMN CLIENTE.ORGAO_RG,
    INSCRICAO_ESTADUAL TYPE OF COLUMN CLIENTE.INSCRICAO_ESTADUAL,
    INSCRICAO_MUNICIPAL TYPE OF COLUMN CLIENTE.INSCRICAO_MUNICIPAL,
    DESDE TYPE OF COLUMN CLIENTE.DESDE,
    TIPO_PESSOA TYPE OF COLUMN CLIENTE.TIPO_PESSOA,
    EXCLUIDO TYPE OF COLUMN CLIENTE.EXCLUIDO,
    DATA_CADASTRO TYPE OF COLUMN CLIENTE.DATA_CADASTRO)
AS
begin
  if (exists(select id from cliente where (id = :id))) then
    update cliente
    set id_situacao_cli = :id_situacao_cli,
        nome = :nome,
        cpf_cnpj = :cpf_cnpj,
        rg = :rg,
        orgao_rg = :orgao_rg,
        inscricao_estadual = :inscricao_estadual,
        inscricao_municipal = :inscricao_municipal,
        desde = :desde,
        tipo_pessoa = :tipo_pessoa,
        excluido = :excluido,
        data_cadastro = :data_cadastro
    where (id = :id);
  else
    insert into cliente (
        id,
        id_situacao_cli,
        nome,
        cpf_cnpj,
        rg,
        orgao_rg,
        inscricao_estadual,
        inscricao_municipal,
        desde,
        tipo_pessoa,
        excluido,
        data_cadastro)
    values (
        :id,
        :id_situacao_cli,
        :nome,
        :cpf_cnpj,
        :rg,
        :orgao_rg,
        :inscricao_estadual,
        :inscricao_municipal,
        :desde,
        :tipo_pessoa,
        :excluido,
        :data_cadastro);
end^


CREATE OR ALTER PROCEDURE CARGA_ECF_CONTADOR (
    ID TYPE OF COLUMN ECF_CONTADOR.ID,
    ID_ECF_EMPRESA TYPE OF COLUMN ECF_CONTADOR.ID_ECF_EMPRESA,
    CPF TYPE OF COLUMN ECF_CONTADOR.CPF,
    CNPJ TYPE OF COLUMN ECF_CONTADOR.CNPJ,
    NOME TYPE OF COLUMN ECF_CONTADOR.NOME,
    INSCRICAO_CRC TYPE OF COLUMN ECF_CONTADOR.INSCRICAO_CRC,
    FONE TYPE OF COLUMN ECF_CONTADOR.FONE,
    FAX TYPE OF COLUMN ECF_CONTADOR.FAX,
    LOGRADOURO TYPE OF COLUMN ECF_CONTADOR.LOGRADOURO,
    NUMERO TYPE OF COLUMN ECF_CONTADOR.NUMERO,
    COMPLEMENTO TYPE OF COLUMN ECF_CONTADOR.COMPLEMENTO,
    BAIRRO TYPE OF COLUMN ECF_CONTADOR.BAIRRO,
    CEP TYPE OF COLUMN ECF_CONTADOR.CEP,
    CODIGO_MUNICIPIO TYPE OF COLUMN ECF_CONTADOR.CODIGO_MUNICIPIO,
    UF TYPE OF COLUMN ECF_CONTADOR.UF,
    EMAIL TYPE OF COLUMN ECF_CONTADOR.EMAIL)
AS
begin
  if (exists(select id from ecf_contador where (id = :id))) then
    update ecf_contador
    set id_ecf_empresa = :id_ecf_empresa,
        cpf = :cpf,
        cnpj = :cnpj,
        nome = :nome,
        inscricao_crc = :inscricao_crc,
        fone = :fone,
        fax = :fax,
        logradouro = :logradouro,
        numero = :numero,
        complemento = :complemento,
        bairro = :bairro,
        cep = :cep,
        codigo_municipio = :codigo_municipio,
        uf = :uf,
        email = :email
    where (id = :id);
  else
    insert into ecf_contador (
        id,
        id_ecf_empresa,
        cpf,
        cnpj,
        nome,
        inscricao_crc,
        fone,
        fax,
        logradouro,
        numero,
        complemento,
        bairro,
        cep,
        codigo_municipio,
        uf,
        email)
    values (
        :id,
        :id_ecf_empresa,
        :cpf,
        :cnpj,
        :nome,
        :inscricao_crc,
        :fone,
        :fax,
        :logradouro,
        :numero,
        :complemento,
        :bairro,
        :cep,
        :codigo_municipio,
        :uf,
        :email);
end^


CREATE OR ALTER PROCEDURE CARGA_ECF_EMPRESA (
    ID TYPE OF COLUMN ECF_EMPRESA.ID,
    RAZAO_SOCIAL TYPE OF COLUMN ECF_EMPRESA.RAZAO_SOCIAL,
    NOME_FANTASIA TYPE OF COLUMN ECF_EMPRESA.NOME_FANTASIA,
    CNPJ TYPE OF COLUMN ECF_EMPRESA.CNPJ,
    INSCRICAO_ESTADUAL TYPE OF COLUMN ECF_EMPRESA.INSCRICAO_ESTADUAL,
    INSCRICAO_ESTADUAL_ST TYPE OF COLUMN ECF_EMPRESA.INSCRICAO_ESTADUAL_ST,
    INSCRICAO_MUNICIPAL TYPE OF COLUMN ECF_EMPRESA.INSCRICAO_MUNICIPAL,
    INSCRICAO_JUNTA_COMERCIAL TYPE OF COLUMN ECF_EMPRESA.INSCRICAO_JUNTA_COMERCIAL,
    DATA_INSC_JUNTA_COMERCIAL TYPE OF COLUMN ECF_EMPRESA.DATA_INSC_JUNTA_COMERCIAL,
    MATRIZ_FILIAL TYPE OF COLUMN ECF_EMPRESA.MATRIZ_FILIAL,
    DATA_CADASTRO TYPE OF COLUMN ECF_EMPRESA.DATA_CADASTRO,
    DATA_INICIO_ATIVIDADES TYPE OF COLUMN ECF_EMPRESA.DATA_INICIO_ATIVIDADES,
    SUFRAMA TYPE OF COLUMN ECF_EMPRESA.SUFRAMA,
    EMAIL TYPE OF COLUMN ECF_EMPRESA.EMAIL,
    IMAGEM_LOGOTIPO TYPE OF COLUMN ECF_EMPRESA.IMAGEM_LOGOTIPO,
    CRT TYPE OF COLUMN ECF_EMPRESA.CRT,
    TIPO_REGIME TYPE OF COLUMN ECF_EMPRESA.TIPO_REGIME,
    ALIQUOTA_PIS TYPE OF COLUMN ECF_EMPRESA.ALIQUOTA_PIS,
    ALIQUOTA_COFINS TYPE OF COLUMN ECF_EMPRESA.ALIQUOTA_COFINS,
    LOGRADOURO TYPE OF COLUMN ECF_EMPRESA.LOGRADOURO,
    NUMERO TYPE OF COLUMN ECF_EMPRESA.NUMERO,
    COMPLEMENTO TYPE OF COLUMN ECF_EMPRESA.COMPLEMENTO,
    CEP TYPE OF COLUMN ECF_EMPRESA.CEP,
    BAIRRO TYPE OF COLUMN ECF_EMPRESA.BAIRRO,
    CIDADE TYPE OF COLUMN ECF_EMPRESA.CIDADE,
    UF TYPE OF COLUMN ECF_EMPRESA.UF,
    FONE TYPE OF COLUMN ECF_EMPRESA.FONE,
    FAX TYPE OF COLUMN ECF_EMPRESA.FAX,
    CONTATO TYPE OF COLUMN ECF_EMPRESA.CONTATO,
    CODIGO_IBGE_CIDADE TYPE OF COLUMN ECF_EMPRESA.CODIGO_IBGE_CIDADE,
    CODIGO_IBGE_UF TYPE OF COLUMN ECF_EMPRESA.CODIGO_IBGE_UF)
AS
begin
  if (exists(select ID from ECF_EMPRESA where (ID = :ID))) then
    update ECF_EMPRESA
    set RAZAO_SOCIAL = :RAZAO_SOCIAL,
        NOME_FANTASIA = :NOME_FANTASIA,
        CNPJ = :CNPJ,
        INSCRICAO_ESTADUAL = :INSCRICAO_ESTADUAL,
        INSCRICAO_ESTADUAL_ST = :INSCRICAO_ESTADUAL_ST,
        INSCRICAO_MUNICIPAL = :INSCRICAO_MUNICIPAL,
        INSCRICAO_JUNTA_COMERCIAL = :INSCRICAO_JUNTA_COMERCIAL,
        DATA_INSC_JUNTA_COMERCIAL = :DATA_INSC_JUNTA_COMERCIAL,
        MATRIZ_FILIAL = :MATRIZ_FILIAL,
        DATA_CADASTRO = :DATA_CADASTRO,
        DATA_INICIO_ATIVIDADES = :DATA_INICIO_ATIVIDADES,
        SUFRAMA = :SUFRAMA,
        EMAIL = :EMAIL,
        IMAGEM_LOGOTIPO = :IMAGEM_LOGOTIPO,
        CRT = :CRT,
        TIPO_REGIME = :TIPO_REGIME,
        ALIQUOTA_PIS = :ALIQUOTA_PIS,
        ALIQUOTA_COFINS = :ALIQUOTA_COFINS,
        LOGRADOURO = :LOGRADOURO,
        NUMERO = :NUMERO,
        COMPLEMENTO = :COMPLEMENTO,
        CEP = :CEP,
        BAIRRO = :BAIRRO,
        CIDADE = :CIDADE,
        UF = :UF,
        FONE = :FONE,
        FAX = :FAX,
        CONTATO = :CONTATO,
        CODIGO_IBGE_CIDADE = :CODIGO_IBGE_CIDADE,
        CODIGO_IBGE_UF = :CODIGO_IBGE_UF
    where (ID = :ID);
  else
    insert into ECF_EMPRESA (
        ID,
        RAZAO_SOCIAL,
        NOME_FANTASIA,
        CNPJ,
        INSCRICAO_ESTADUAL,
        INSCRICAO_ESTADUAL_ST,
        INSCRICAO_MUNICIPAL,
        INSCRICAO_JUNTA_COMERCIAL,
        DATA_INSC_JUNTA_COMERCIAL,
        MATRIZ_FILIAL,
        DATA_CADASTRO,
        DATA_INICIO_ATIVIDADES,
        SUFRAMA,
        EMAIL,
        IMAGEM_LOGOTIPO,
        CRT,
        TIPO_REGIME,
        ALIQUOTA_PIS,
        ALIQUOTA_COFINS,
        LOGRADOURO,
        NUMERO,
        COMPLEMENTO,
        CEP,
        BAIRRO,
        CIDADE,
        UF,
        FONE,
        FAX,
        CONTATO,
        CODIGO_IBGE_CIDADE,
        CODIGO_IBGE_UF)
    values (
        :ID,
        :RAZAO_SOCIAL,
        :NOME_FANTASIA,
        :CNPJ,
        :INSCRICAO_ESTADUAL,
        :INSCRICAO_ESTADUAL_ST,
        :INSCRICAO_MUNICIPAL,
        :INSCRICAO_JUNTA_COMERCIAL,
        :DATA_INSC_JUNTA_COMERCIAL,
        :MATRIZ_FILIAL,
        :DATA_CADASTRO,
        :DATA_INICIO_ATIVIDADES,
        :SUFRAMA,
        :EMAIL,
        :IMAGEM_LOGOTIPO,
        :CRT,
        :TIPO_REGIME,
        :ALIQUOTA_PIS,
        :ALIQUOTA_COFINS,
        :LOGRADOURO,
        :NUMERO,
        :COMPLEMENTO,
        :CEP,
        :BAIRRO,
        :CIDADE,
        :UF,
        :FONE,
        :FAX,
        :CONTATO,
        :CODIGO_IBGE_CIDADE,
        :CODIGO_IBGE_UF);
end^


CREATE OR ALTER PROCEDURE CARGA_ECF_FUNCIONARIO (
    ID TYPE OF COLUMN ECF_FUNCIONARIO.ID,
    NOME TYPE OF COLUMN ECF_FUNCIONARIO.NOME,
    TELEFONE TYPE OF COLUMN ECF_FUNCIONARIO.TELEFONE,
    CELULAR TYPE OF COLUMN ECF_FUNCIONARIO.CELULAR,
    EMAIL TYPE OF COLUMN ECF_FUNCIONARIO.EMAIL,
    COMISSAO_VISTA TYPE OF COLUMN ECF_FUNCIONARIO.COMISSAO_VISTA,
    COMISSAO_PRAZO TYPE OF COLUMN ECF_FUNCIONARIO.COMISSAO_PRAZO,
    NIVEL_AUTORIZACAO TYPE OF COLUMN ECF_FUNCIONARIO.NIVEL_AUTORIZACAO)
AS
begin
  if (exists(select id from ecf_funcionario where (id = :id))) then
    update ecf_funcionario
    set nome = :nome,
        telefone = :telefone,
        celular = :celular,
        email = :email,
        comissao_vista = :comissao_vista,
        comissao_prazo = :comissao_prazo,
        nivel_autorizacao = :nivel_autorizacao
    where (id = :id);
  else
    insert into ecf_funcionario (
        id,
        nome,
        telefone,
        celular,
        email,
        comissao_vista,
        comissao_prazo,
        nivel_autorizacao)
    values (
        :id,
        :nome,
        :telefone,
        :celular,
        :email,
        :comissao_vista,
        :comissao_prazo,
        :nivel_autorizacao);
end^


CREATE OR ALTER PROCEDURE CARGA_ECF_OPERADOR (
    ID TYPE OF COLUMN ECF_OPERADOR.ID,
    ID_ECF_FUNCIONARIO TYPE OF COLUMN ECF_OPERADOR.ID_ECF_FUNCIONARIO,
    LOGIN TYPE OF COLUMN ECF_OPERADOR.LOGIN,
    SENHA TYPE OF COLUMN ECF_OPERADOR.SENHA)
AS
begin
  if (exists(select id from ecf_operador where (id = :id))) then
    update ecf_operador
    set id_ecf_funcionario = :id_ecf_funcionario,
        login = :login,
        senha = :senha
    where (id = :id);
  else
    insert into ecf_operador (
        id,
        id_ecf_funcionario,
        login,
        senha)
    values (
        :id,
        :id_ecf_funcionario,
        :login,
        :senha);
end^


CREATE OR ALTER PROCEDURE CARGA_ECF_TURNO (
    ID TYPE OF COLUMN ECF_TURNO.ID,
    DESCRICAO TYPE OF COLUMN ECF_TURNO.DESCRICAO,
    HORA_INICIO TYPE OF COLUMN ECF_TURNO.HORA_INICIO,
    HORA_FIM TYPE OF COLUMN ECF_TURNO.HORA_FIM)
AS
begin
  if (exists(select id from ecf_turno where (id = :id))) then
    update ecf_turno
    set descricao = :descricao,
        hora_inicio = :hora_inicio,
        hora_fim = :hora_fim
    where (id = :id);
  else
    insert into ecf_turno (
        id,
        descricao,
        hora_inicio,
        hora_fim)
    values (
        :id,
        :descricao,
        :hora_inicio,
        :hora_fim);
end^


CREATE OR ALTER PROCEDURE CARGA_FICHA_TECNICA (
    ID TYPE OF COLUMN FICHA_TECNICA.ID,
    ID_PRODUTO TYPE OF COLUMN FICHA_TECNICA.ID_PRODUTO,
    DESCRICAO TYPE OF COLUMN FICHA_TECNICA.DESCRICAO,
    ID_PRODUTO_FILHO TYPE OF COLUMN FICHA_TECNICA.ID_PRODUTO_FILHO,
    QUANTIDADE TYPE OF COLUMN FICHA_TECNICA.QUANTIDADE)
AS
begin
  if (exists(select id from ficha_tecnica where (id = :id))) then
    update ficha_tecnica
    set id_produto = :id_produto,
        descricao = :descricao,
        id_produto_filho = :id_produto_filho,
        quantidade = :quantidade
    where (id = :id);
  else
    insert into ficha_tecnica (
        id,
        id_produto,
        descricao,
        id_produto_filho,
        quantidade)
    values (
        :id,
        :id_produto,
        :descricao,
        :id_produto_filho,
        :quantidade);
end^


CREATE OR ALTER PROCEDURE CARGA_LOG_IMPORTACAO (
    DATA_IMPORTACAO TYPE OF COLUMN LOG_IMPORTACAO.DATA_IMPORTACAO,
    LOG_ERRO TYPE OF COLUMN LOG_IMPORTACAO.LOG_ERRO)
AS
begin
  insert into LOG_IMPORTACAO (
    DATA_IMPORTACAO,
    LOG_ERRO)
  values (
    :DATA_IMPORTACAO,
    :LOG_ERRO);
end^


CREATE OR ALTER PROCEDURE CARGA_PRODUTO (
    ID TYPE OF COLUMN PRODUTO.ID,
    ID_UNIDADE_PRODUTO TYPE OF COLUMN PRODUTO.ID_UNIDADE_PRODUTO,
    GTIN TYPE OF COLUMN PRODUTO.GTIN,
    CODIGO_INTERNO TYPE OF COLUMN PRODUTO.CODIGO_INTERNO,
    NOME TYPE OF COLUMN PRODUTO.NOME,
    DESCRICAO TYPE OF COLUMN PRODUTO.DESCRICAO,
    DESCRICAO_PDV TYPE OF COLUMN PRODUTO.DESCRICAO_PDV,
    VALOR_VENDA TYPE OF COLUMN PRODUTO.VALOR_VENDA,
    QTD_ESTOQUE TYPE OF COLUMN PRODUTO.QTD_ESTOQUE,
    ESTOQUE_MIN TYPE OF COLUMN PRODUTO.ESTOQUE_MIN,
    ESTOQUE_MAX TYPE OF COLUMN PRODUTO.ESTOQUE_MAX,
    IAT TYPE OF COLUMN PRODUTO.IAT,
    IPPT TYPE OF COLUMN PRODUTO.IPPT,
    NCM TYPE OF COLUMN PRODUTO.NCM,
    TIPO_ITEM_SPED TYPE OF COLUMN PRODUTO.TIPO_ITEM_SPED,
    DATA_ESTOQUE TYPE OF COLUMN PRODUTO.DATA_ESTOQUE,
    HASH_TRIPA TYPE OF COLUMN PRODUTO.HASH_TRIPA,
    TAXA_IPI TYPE OF COLUMN PRODUTO.TAXA_IPI,
    TAXA_ISSQN TYPE OF COLUMN PRODUTO.TAXA_ISSQN,
    TAXA_PIS TYPE OF COLUMN PRODUTO.TAXA_PIS,
    TAXA_COFINS TYPE OF COLUMN PRODUTO.TAXA_COFINS,
    TAXA_ICMS TYPE OF COLUMN PRODUTO.TAXA_ICMS,
    CST TYPE OF COLUMN PRODUTO.CST,
    TOTALIZADOR_PARCIAL TYPE OF COLUMN PRODUTO.TOTALIZADOR_PARCIAL,
    ECF_ICMS_ST TYPE OF COLUMN PRODUTO.ECF_ICMS_ST,
    CODIGO_BALANCA TYPE OF COLUMN PRODUTO.CODIGO_BALANCA,
    PAF_P_ST TYPE OF COLUMN PRODUTO.PAF_P_ST)
AS
begin
  if (exists(select id from produto where (id = :id))) then
    update produto
    set id_unidade_produto = :id_unidade_produto,
        gtin = :gtin,
        codigo_interno = :codigo_interno,
        nome = :nome,
        descricao = :descricao,
        descricao_pdv = :descricao_pdv,
        valor_venda = :valor_venda,
        qtd_estoque = :qtd_estoque,
        estoque_min = :estoque_min,
        estoque_max = :estoque_max,
        iat = :iat,
        ippt = :ippt,
        ncm = :ncm,
        tipo_item_sped = :tipo_item_sped,
        data_estoque = :data_estoque,
        hash_tripa = :hash_tripa,
        taxa_ipi = :taxa_ipi,
        taxa_issqn = :taxa_issqn,
        taxa_pis = :taxa_pis,
        taxa_cofins = :taxa_cofins,
        taxa_icms = :taxa_icms,
        cst = :cst,
        totalizador_parcial = :totalizador_parcial,
        ecf_icms_st = :ecf_icms_st,
        codigo_balanca = :codigo_balanca,
        paf_p_st = :paf_p_st
    where (id = :id);
  else
    insert into produto (
        id,
        id_unidade_produto,
        gtin,
        codigo_interno,
        nome,
        descricao,
        descricao_pdv,
        valor_venda,
        qtd_estoque,
        estoque_min,
        estoque_max,
        iat,
        ippt,
        ncm,
        tipo_item_sped,
        data_estoque,
        hash_tripa,
        taxa_ipi,
        taxa_issqn,
        taxa_pis,
        taxa_cofins,
        taxa_icms,
        cst,
        totalizador_parcial,
        ecf_icms_st,
        codigo_balanca,
        paf_p_st)
    values (
        :id,
        :id_unidade_produto,
        :gtin,
        :codigo_interno,
        :nome,
        :descricao,
        :descricao_pdv,
        :valor_venda,
        :qtd_estoque,
        :estoque_min,
        :estoque_max,
        :iat,
        :ippt,
        :ncm,
        :tipo_item_sped,
        :data_estoque,
        :hash_tripa,
        :taxa_ipi,
        :taxa_issqn,
        :taxa_pis,
        :taxa_cofins,
        :taxa_icms,
        :cst,
        :totalizador_parcial,
        :ecf_icms_st,
        :codigo_balanca,
        :paf_p_st);
end^


CREATE OR ALTER PROCEDURE CARGA_PRODUTO_PROMOCAO (
    ID TYPE OF COLUMN PRODUTO_PROMOCAO.ID,
    ID_PRODUTO TYPE OF COLUMN PRODUTO_PROMOCAO.ID_PRODUTO,
    DATA_INICIO TYPE OF COLUMN PRODUTO_PROMOCAO.DATA_INICIO,
    DATA_FIM TYPE OF COLUMN PRODUTO_PROMOCAO.DATA_FIM,
    QUANTIDADE_EM_PROMOCAO TYPE OF COLUMN PRODUTO_PROMOCAO.QUANTIDADE_EM_PROMOCAO,
    QUANTIDADE_MAXIMA_CLIENTE TYPE OF COLUMN PRODUTO_PROMOCAO.QUANTIDADE_MAXIMA_CLIENTE,
    VALOR TYPE OF COLUMN PRODUTO_PROMOCAO.VALOR)
AS
begin
  if (exists(select id from produto_promocao where (id = :id))) then
    update produto_promocao
    set id_produto = :id_produto,
        data_inicio = :data_inicio,
        data_fim = :data_fim,
        quantidade_em_promocao = :quantidade_em_promocao,
        quantidade_maxima_cliente = :quantidade_maxima_cliente,
        valor = :valor
    where (id = :id);
  else
    insert into produto_promocao (
        id,
        id_produto,
        data_inicio,
        data_fim,
        quantidade_em_promocao,
        quantidade_maxima_cliente,
        valor)
    values (
        :id,
        :id_produto,
        :data_inicio,
        :data_fim,
        :quantidade_em_promocao,
        :quantidade_maxima_cliente,
        :valor);
end^


CREATE OR ALTER PROCEDURE CARGA_SITUACAO_CLI (
    ID TYPE OF COLUMN SITUACAO_CLI.ID,
    NOME TYPE OF COLUMN SITUACAO_CLI.NOME,
    DESCRICAO TYPE OF COLUMN SITUACAO_CLI.DESCRICAO)
AS
begin
  if (exists(select id from situacao_cli where (id = :id))) then
    update situacao_cli
    set nome = :nome,
        descricao = :descricao
    where (id = :id);
  else
    insert into situacao_cli (
        id,
        nome,
        descricao)
    values (
        :id,
        :nome,
        :descricao);
end^


CREATE OR ALTER PROCEDURE CARGA_UNIDADE_PRODUTO (
    ID TYPE OF COLUMN UNIDADE_PRODUTO.ID,
    NOME TYPE OF COLUMN UNIDADE_PRODUTO.NOME,
    DESCRICAO TYPE OF COLUMN UNIDADE_PRODUTO.DESCRICAO,
    PODE_FRACIONAR TYPE OF COLUMN UNIDADE_PRODUTO.PODE_FRACIONAR)
AS
begin
  if (exists(select id from unidade_produto where (id = :id))) then
    update unidade_produto
    set nome = :nome,
        descricao = :descricao,
        pode_fracionar = :pode_fracionar
    where (id = :id);
  else
    insert into unidade_produto (
        id,
        nome,
        descricao,
        pode_fracionar)
    values (
        :id,
        :nome,
        :descricao,
        :pode_fracionar);
end^



SET TERM ; ^