# ==============================================================================
# Script de Automação de Criação de Issues — TaskLab
# Disciplina: Tópicos Especiais em Engenharia de Software I — Unidade II
# Docente: Profª Rebeca Barbosa Lourenço
# ==============================================================================

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " TaskLab — Criador Automatizado de Issues no GitHub" -ForegroundColor Cyan
Write-Host " Repositório: Rebecabl/tasklab-git-github" -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

# 1. Verifica se o GitHub CLI está instalado
if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    Write-Host "[ERRO] O GitHub CLI (gh) não está instalado neste computador." -ForegroundColor Red
    Write-Host "Você pode criar as issues manualmente seguindo o guia: docs/ISSUES_CATALOGO.md" -ForegroundColor Yellow
    exit 1
}

# 2. Verifica autenticação
Write-Host "`n[1/3] Verificando autenticação no GitHub..." -ForegroundColor Yellow
$authStatus = gh auth status 2>&1
if ($LASTEXITCODE -ne 0) {
    Write-Host "[AVISO] O GitHub CLI não está autenticado no momento." -ForegroundColor Red
    Write-Host "Para autenticar, execute no terminal:" -ForegroundColor Yellow
    Write-Host "    gh auth login -h github.com" -ForegroundColor Green
    Write-Host "Após o login, execute este script novamente para criar as 20 issues automaticamente!" -ForegroundColor Yellow
    Write-Host "`nCaso prefira o método manual, consulte o arquivo docs/ISSUES_CATALOGO.md." -ForegroundColor White
    exit 1
}

Write-Host "[OK] Autenticado com sucesso!" -ForegroundColor Green

# 3. Criação de Etiquetas (Labels) Personalizadas
Write-Host "`n[2/3] Criando etiquetas da disciplina no repositório..." -ForegroundColor Yellow
$labels = @(
    @{ name="equipe-01"; color="1d76db"; desc="Atividades da Equipe 01 - Interface e UX" },
    @{ name="equipe-02"; color="0e8a16"; desc="Atividades da Equipe 02 - Cadastro e Validação" },
    @{ name="equipe-03"; color="fbca04"; desc="Atividades da Equipe 03 - Filtros e Contadores" },
    @{ name="equipe-04"; color="d93f0b"; desc="Atividades da Equipe 04 - Edição, Exclusão e Busca" },
    @{ name="equipe-05"; color="5319e7"; desc="Atividades da Equipe 05 - Documentação e Acessibilidade" },
    @{ name="priority-high"; color="b60205"; desc="Prioridade Alta" },
    @{ name="priority-medium"; color="d93f0b"; desc="Prioridade Média" },
    @{ name="priority-low"; color="0e8a16"; desc="Prioridade Baixa" }
)

foreach ($l in $labels) {
    gh label create $l.name --color $l.color --description $l.desc --repo "Rebecabl/tasklab-git-github" --force 2>$null
}
Write-Host "[OK] Etiquetas configuradas!" -ForegroundColor Green

# 4. Criação das 20 Issues
Write-Host "`n[3/3] Criando as 20 issues educacionais..." -ForegroundColor Yellow

$issues = @(
    # Equipe 01
    @{
        title = "[Equipe 01] Aperfeiçoamento do Cabeçalho e Identidade Visual"
        labels = "equipe-01,feature,priority-medium"
        body = "### Equipe Responsável: Equipe 01 — Interface e UX`n`n**Objetivo:** Melhorar a identidade visual do cabeçalho da aplicação com transições suaves e alinhamento tipográfico refinado.`n`n**Arquivos Envolvidos:** css/style.css, index.html`n`n**Critérios de Aceitação:**`n- Adicionar efeitos de :hover suaves nos links da barra de navegação.`n- Garantir contraste e tipografia acessível.`n`n**Como Testar:** Abrir index.html e testar os links de navegação."
    },
    @{
        title = "[Equipe 01] Padronização de Botões e Efeitos de Interação"
        labels = "equipe-01,feature,priority-medium"
        body = "### Equipe Responsável: Equipe 01 — Interface e UX`n`n**Objetivo:** Padronizar os botões do sistema com estados visuais refinados (:hover, :focus, :active).`n`n**Arquivos Envolvidos:** css/style.css`n`n**Critérios de Aceitação:**`n- Botões com sombra sutil e animação leve ao clicar.`n- Distinção visual entre botão primário e botões secundários.`n`n**Como Testar:** Clicar e passar o mouse sobre os botões do formulário e da lista."
    },
    @{
        title = "[Equipe 01] Otimização da Responsividade em Dispositivos Móveis"
        labels = "equipe-01,feature,priority-high"
        body = "### Equipe Responsável: Equipe 01 — Interface e UX`n`n**Objetivo:** Aperfeiçoar o layout para telas estreitas (320px a 480px).`n`n**Arquivos Envolvidos:** css/responsive.css`n`n**Critérios de Aceitação:**`n- Eliminar barra de rolagem horizontal em telas pequenas.`n- Formulário e cartões alinhados fluidamente no celular.`n`n**Como Testar:** Utilizar a ferramenta de desenvolvedor do navegador (F12) no modo dispositivo móvel."
    },
    @{
        title = "[Equipe 01] Feedback Visual para Tarefas Concluídas"
        labels = "equipe-01,feature,priority-low"
        body = "### Equipe Responsável: Equipe 01 — Interface e UX`n`n**Objetivo:** Criar transição visual suave e estilizada quando uma tarefa for concluída.`n`n**Arquivos Envolvidos:** css/style.css`n`n**Critérios de Aceitação:**`n- Cartões concluídos recebem fundo verde claro e texto tachado suave.`n`n**Como Testar:** Alternar status de uma tarefa e observar a transição."
    },
    # Equipe 02
    @{
        title = "[Equipe 02] Validação de Título Obrigatório no Formulário"
        labels = "equipe-02,feature,priority-high"
        body = "### Equipe Responsável: Equipe 02 — Cadastro de Tarefas`n`n**Objetivo:** Impedir o cadastro de tarefas com título vazio ou contendo apenas espaços.`n`n**Arquivos Envolvidos:** js/tarefas.js, js/app.js`n`n**Critérios de Aceitação:**`n- Impedir submissão com campo em branco.`n- Destacar o campo com borda de aviso.`n`n**Como Testar:** Tentar enviar o formulário sem preencher o título."
    },
    @{
        title = "[Equipe 02] Mensagem de Notificação Visual (Sucesso e Erro)"
        labels = "equipe-02,feature,priority-medium"
        body = "### Equipe Responsável: Equipe 02 — Cadastro de Tarefas`n`n**Objetivo:** Exibir alertas coloridos informando o resultado da operação.`n`n**Arquivos Envolvidos:** index.html, css/style.css, js/app.js`n`n**Critérios de Aceitação:**`n- Alerta verde para sucesso e vermelho para erro.`n- Desaparecer automaticamente após 3 segundos.`n`n**Como Testar:** Cadastrar tarefa válida e tentar cadastrar inválida."
    },
    @{
        title = "[Equipe 02] Seleção de Nível de Prioridade da Tarefa"
        labels = "equipe-02,feature,priority-medium"
        body = "### Equipe Responsável: Equipe 02 — Cadastro de Tarefas`n`n**Objetivo:** Adicionar campo para seleção de prioridade (Baixa, Média, Alta).`n`n**Arquivos Envolvidos:** index.html, js/tarefas.js`n`n**Critérios de Aceitação:**`n- Campo select no formulário.`n- Salvar o atributo no LocalStorage.`n`n**Como Testar:** Cadastrar tarefas com diferentes prioridades e conferir no LocalStorage."
    },
    @{
        title = "[Equipe 02] Renderização da Badge Colorida de Prioridade"
        labels = "equipe-02,feature,priority-low"
        body = "### Equipe Responsável: Equipe 02 — Cadastro de Tarefas`n`n**Objetivo:** Exibir etiqueta com a cor respectiva da prioridade em cada cartão.`n`n**Arquivos Envolvidos:** js/app.js, css/style.css`n`n**Critérios de Aceitação:**`n- Vermelho para Alta, Amarelo para Média, Azul/Verde para Baixa.`n`n**Como Testar:** Cadastrar tarefas e observar as etiquetas de cada uma."
    },
    # Equipe 03
    @{
        title = "[Equipe 03] Filtro de Tarefas por Status (Todas, Pendentes, Concluídas)"
        labels = "equipe-03,feature,priority-high"
        body = "### Equipe Responsável: Equipe 03 — Organização e Filtros`n`n**Objetivo:** Permitir ao usuário filtrar a visualização entre pendentes e concluídas.`n`n**Arquivos Envolvidos:** index.html, js/app.js, css/style.css`n`n**Critérios de Aceitação:**`n- 3 botões de filtro no topo da lista.`n- Filtrar os cartões dinamicamente.`n`n**Como Testar:** Clicar nos botões e conferir as tarefas exibidas."
    },
    @{
        title = "[Equipe 03] Contador Dinâmico de Tarefas"
        labels = "equipe-03,feature,priority-medium"
        body = "### Equipe Responsável: Equipe 03 — Organização e Filtros`n`n**Objetivo:** Exibir contador em tempo real do total, pendentes e concluídas.`n`n**Arquivos Envolvidos:** index.html, js/app.js`n`n**Critérios de Aceitação:**`n- Indicador numérico atualizado a cada alteração.`n`n**Como Testar:** Adicionar tarefas e alternar status, acompanhando os números."
    },
    @{
        title = "[Equipe 03] Ordenação de Tarefas por Nível de Prioridade"
        labels = "equipe-03,feature,priority-medium"
        body = "### Equipe Responsável: Equipe 03 — Organização e Filtros`n`n**Objetivo:** Permitir ordenar a lista priorizando as tarefas urgentes no topo.`n`n**Arquivos Envolvidos:** js/tarefas.js, js/app.js`n`n**Critérios de Aceitação:**`n- Tarefas de prioridade Alta aparecem primeiro.`n`n**Como Testar:** Ordenar a lista e conferir a disposição dos cartões."
    },
    @{
        title = "[Equipe 03] Indicador de Estado Ativo nos Botões de Filtro"
        labels = "equipe-03,feature,priority-low"
        body = "### Equipe Responsável: Equipe 03 — Organização e Filtros`n`n**Objetivo:** Destacar com cor e estilo qual filtro está atualmente selecionado.`n`n**Arquivos Envolvidos:** css/style.css, js/app.js`n`n**Critérios de Aceitação:**`n- Classe .active no botão selecionado.`n`n**Como Testar:** Clicar entre os filtros e checar o botão ativo."
    },
    # Equipe 04
    @{
        title = "[Equipe 04] Exclusão de Tarefas com Caixa de Confirmação"
        labels = "equipe-04,feature,priority-high"
        body = "### Equipe Responsável: Equipe 04 — Edição e Exclusão`n`n**Objetivo:** Permitir a remoção segura de tarefas do LocalStorage.`n`n**Arquivos Envolvidos:** js/tarefas.js, js/app.js, css/style.css`n`n**Critérios de Aceitação:**`n- Botão de exclusão em cada cartão com confirmação do usuário.`n`n**Como Testar:** Excluir uma tarefa confirmando a caixa de diálogo."
    },
    @{
        title = "[Equipe 04] Edição Inline de Título e Descrição de Tarefas"
        labels = "equipe-04,feature,priority-high"
        body = "### Equipe Responsável: Equipe 04 — Edição e Exclusão`n`n**Objetivo:** Permitir alterar dados de tarefas já cadastradas.`n`n**Arquivos Envolvidos:** js/tarefas.js, js/app.js`n`n**Critérios de Aceitação:**`n- Botão de editar e persistência no LocalStorage.`n`n**Como Testar:** Editar um item e recarregar a página para conferir."
    },
    @{
        title = "[Equipe 04] Campo de Busca de Tarefas em Tempo Real"
        labels = "equipe-04,feature,priority-medium"
        body = "### Equipe Responsável: Equipe 04 — Edição e Exclusão`n`n**Objetivo:** Campo de pesquisa para filtrar tarefas por texto.`n`n**Arquivos Envolvidos:** index.html, js/app.js`n`n**Critérios de Aceitação:**`n- Filtrar os cartões à medida que o usuário digita.`n`n**Como Testar:** Digitar termos de tarefas existentes no campo de busca."
    },
    @{
        title = "[Equipe 04] Ação em Lote para Limpar Todas as Concluídas"
        labels = "equipe-04,feature,priority-low"
        body = "### Equipe Responsável: Equipe 04 — Edição e Exclusão`n`n**Objetivo:** Botão para excluir todas as tarefas finalizadas de uma só vez.`n`n**Arquivos Envolvidos:** js/tarefas.js, js/app.js`n`n**Critérios de Aceitação:**`n- Excluir apenas tarefas concluídas, mantendo as pendentes.`n`n**Como Testar:** Concluir tarefas e acionar a limpeza em lote."
    },
    # Equipe 05
    @{
        title = "[Equipe 05] Enriquecimento da Central de Ajuda (pages/ajuda.html)"
        labels = "equipe-05,documentation,priority-medium"
        body = "### Equipe Responsável: Equipe 05 — Documentação e Acessibilidade`n`n**Objetivo:** Escrever instruções completas na página de ajuda sobre as novas funcionalidades.`n`n**Arquivos Envolvidos:** pages/ajuda.html`n`n**Critérios de Aceitação:**`n- Explicações claras e estruturadas em HTML semântico.`n`n**Como Testar:** Navegar em pages/ajuda.html e revisar o conteúdo."
    },
    @{
        title = "[Equipe 05] Inclusão de Atributos Semânticos de Acessibilidade (WAI-ARIA)"
        labels = "equipe-05,feature,priority-high"
        body = "### Equipe Responsável: Equipe 05 — Documentação e Acessibilidade`n`n**Objetivo:** Adicionar atributos ARIA para permitir navegação com leitores de tela.`n`n**Arquivos Envolvidos:** index.html, pages/sobre.html, pages/ajuda.html`n`n**Critérios de Aceitação:**`n- Inserção de aria-label, role='status' e aria-live.`n`n**Como Testar:** Inspecionar os elementos no DevTools ou leitor de tela."
    },
    @{
        title = "[Equipe 05] Estilização de Foco Visível para Navegação por Teclado"
        labels = "equipe-05,feature,priority-medium"
        body = "### Equipe Responsável: Equipe 05 — Documentação e Acessibilidade`n`n**Objetivo:** Garantir indicador claro de foco (:focus-visible) para navegação sem mouse.`n`n**Arquivos Envolvidos:** css/style.css`n`n**Critérios de Aceitação:**`n- Contorno azul visível em todos os botões e inputs ao navegar com Tab.`n`n**Como Testar:** Navegar pela página usando apenas as teclas Tab e Enter."
    },
    @{
        title = "[Equipe 05] Seção de Créditos Institucionais na Página Sobre"
        labels = "equipe-05,documentation,priority-low"
        body = "### Equipe Responsável: Equipe 05 — Documentação e Acessibilidade`n`n**Objetivo:** Criar seção com os créditos da turma e menção à professora Rebeca.`n`n**Arquivos Envolvidos:** pages/sobre.html`n`n**Critérios de Aceitação:**`n- Cartão com design integrado listando as equipes e a disciplina.`n`n**Como Testar:** Abrir pages/sobre.html e verificar o visual do novo cartão."
    }
)

foreach ($item in $issues) {
    Write-Host "Criando: $($item.title)..." -ForegroundColor Gray
    gh issue create --repo "Rebecabl/tasklab-git-github" --title $item.title --body $item.body --label $item.labels
}

Write-Host "`n==========================================================" -ForegroundColor Green
Write-Host " [SUCESSO] Todas as 20 issues foram criadas no GitHub!" -ForegroundColor Green
Write-Host " Repositório: https://github.com/Rebecabl/tasklab-git-github/issues" -ForegroundColor Green
Write-Host "==========================================================" -ForegroundColor Green
