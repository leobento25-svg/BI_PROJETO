# BI Gestão de Projetos

Este é um dashboard interativo para gestão de projetos, desenvolvido em Python com Streamlit, Pandas e Plotly.

## Estrutura do Projeto

```
bi_projetos/
├── data/
│   ├── criar_exemplo.py  # Script para gerar dados de exemplo
│   └── projetos_exemplo.xlsx  # Arquivo Excel de exemplo
├── src/
│   └── app.py  # Aplicação principal
├── requirements.txt  # Dependências
└── README.md  # Este arquivo
```

## Instalação

1. Clone ou baixe o projeto
2. Instale as dependências:
   ```
   pip install -r requirements.txt
   ```

## Execução

### Local
1. Navegue até a pasta do projeto:
   ```
   cd bi_projetos
   ```

2. Execute a aplicação:
   ```
   streamlit run src/app.py
   ```

3. Abra o navegador na URL indicada (geralmente http://localhost:8501)

### Deploy no Streamlit Cloud (Recomendado)
1. Acesse [share.streamlit.io](https://share.streamlit.io)
2. Conecte sua conta GitHub
3. Selecione o repositório `bi_projetos`
4. Configure o arquivo principal como `src/app.py`
5. Clique em "Deploy"
6. Aguarde o deploy e acesse o link público gerado

O dashboard estará disponível 24/7 sem necessidade de manter um servidor local rodando.

## Estrutura dos Dados

### Arquivo Excel esperado:
- **Aba "Dados Projetos"**: Contém informações gerais dos projetos
- **Aba "Projeto 1 Cronograma"**: Contém o cronograma de atividades

### Colunas esperadas em "Dados Projetos":
- Nome Projeto
- Gerente
- Cliente Área
- Status Projeto
- Categoria
- Prioridade
- Data Início Planejada
- Data Fim Planejada
- Data Início Real
- Data Fim Real
- Orçamento Planejado
- Custo Real
- Percentual Conclusão
- SPI
- CPI
- Indicador Escopo
- Indicador Qualidade
- Indicador Risco

### Colunas esperadas em "Projeto 1 Cronograma":
- Projeto
- Atividade
- Responsável
- Data Início
- Data Fim
- Data Base
- Percentual Atividade
- Status Prazo Atividade
- Desvio Dias
- Marco
- Observação

## Funcionalidades

### Páginas do Dashboard:
1. **Visão Executiva**: KPIs principais, status dos projetos, distribuição por saúde
2. **Prazo e Cronograma**: Gráfico de Gantt, atividades atrasadas
3. **Custo e Performance**: CPI, variação orçamentária
4. **Risco, Escopo e Qualidade**: Score geral, mapa de risco

### Recursos:
- Filtros interativos
- Gráficos responsivos
- Métricas calculadas automaticamente
- Classificação automática de saúde dos projetos
- Suporte a múltiplos projetos

## Modelo de Dados

### dim_projeto
Tabela dimensão com informações básicas dos projetos.

### fato_projetos
Tabela fato com métricas calculadas:
- Score geral (0-100)
- Classificação de saúde (Saudável/Atenção/Crítico)

### fato_cronograma
Tabela fato com detalhes do cronograma.

## Cálculos Automáticos

### Score Geral
Calculado com pesos:
- Prazo: 30%
- Custo: 25%
- Escopo: 15%
- Qualidade: 15%
- Risco: 15%

### Classificações
- Saudável: 85-100
- Atenção: 70-84
- Crítico: <70

## Melhorias Futuras

1. **Integração com bancos de dados**: PostgreSQL, MySQL
2. **Autenticação e autorização**: Controle de acesso por usuário
3. **Alertas por email**: Notificações automáticas
4. **Exportação**: PDF, Excel, PowerPoint
5. **APIs**: Integração com sistemas externos
6. **Machine Learning**: Previsões de risco e custo
7. **Mobile**: Versão responsiva para dispositivos móveis
8. **Tempo real**: Atualização automática dos dados
9. **Histórico**: Versionamento e auditoria
10. **Dashboards personalizados**: Por usuário/perfil

## Adaptação para Múltiplos Projetos

O sistema já está preparado para múltiplos projetos. Basta adicionar mais linhas na aba "Dados Projetos" e ajustar o cronograma conforme necessário.

## Publicação Interna

### Opções:
1. **Streamlit Cloud**: Deploy gratuito
2. **Heroku**: Plataforma PaaS
3. **Docker**: Containerização
4. **Servidor interno**: IIS, Apache
5. **Azure/AWS**: Cloud computing

### Passos para publicação:
1. Configurar variáveis de ambiente
2. Otimizar performance
3. Implementar cache
4. Configurar logs
5. Testar em produção

## Migração para Power BI

### Passos:
1. **Exportar dados**: Usar Python para gerar arquivos CSV/Power Query
2. **Criar modelo**: Importar tabelas no Power BI Desktop
3. **DAX Measures**: Recriar cálculos em DAX
4. **Visualizações**: Migrar gráficos para Power BI
5. **Publicação**: Power BI Service

### Vantagens do Power BI:
- Integração nativa com Excel
- Compartilhamento fácil
- Atualização automática
- Licenciamento corporativo

## Suporte

Para dúvidas ou problemas, verifique:
1. Logs do console
2. Estrutura do arquivo Excel
3. Compatibilidade das versões das bibliotecas