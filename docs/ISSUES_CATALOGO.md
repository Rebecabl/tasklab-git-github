# 📋 Catálogo Completo de Issues — TaskLab

**Disciplina:** Tópicos Especiais em Engenharia de Software I — Unidade II  
**Docente:** Profª Rebeca Barbosa Lourenço  
**Projeto:** TaskLab — Laboratório de Colaboração em Software  

Este catálogo contém a definição de todas as **20 issues individuais** divididas pelas 5 equipes. A professora pode copiar e colar o conteúdo diretamente na interface web do GitHub ou utilizar o script de automação presente em `scripts/criar_issues_tasklab.ps1`.

---

## 🎨 EQUIPE 01 — Interface e Experiência do Usuário

### Issue #01: [Equipe 01] Aperfeiçoamento do Cabeçalho e Identidade Visual
- **Labels:** `equipe-01`, `feature`, `priority-medium`
- **Equipe:** Equipe 01 — Interface e UX
- **Objetivo:** Melhorar a identidade visual do cabeçalho da aplicação com transições suaves e alinhamento tipográfico refinado.
- **Arquivos Envolvidos:** `css/style.css`, `index.html`
- **Critérios de Aceitação:**
  - Adicionar efeitos de `:hover` suaves nos links da barra de navegação (`transition: 0.2s`).
  - Garantir espaçamento adequado e centralização vertical da logomarca com o texto.
  - Manter contraste acessível entre texto e fundo.
- **Orientações de Teste:** Abrir `index.html`, passar o mouse sobre os links do menu e verificar as animações suaves.
- **Resultado Esperado:** Cabeçalho moderno, elegante e visualmente profissional.

---

### Issue #02: [Equipe 01] Padronização de Botões e Efeitos de Interação
- **Labels:** `equipe-01`, `feature`, `priority-medium`
- **Equipe:** Equipe 01 — Interface e UX
- **Objetivo:** Padronizar os estilos de todos os botões do sistema com estados visuais de foco, clique e hover.
- **Arquivos Envolvidos:** `css/style.css`
- **Critérios de Aceitação:**
  - Definir classes consistentes para botões de ação com sombra sutil.
  - Adicionar leve translação para cima (`translateY(-1px)`) no hover e reset no active.
  - Assegurar distinção clara entre botão primário e botões secundários.
- **Orientações de Teste:** Passar o mouse e clicar no botão "+ Adicionar Tarefa" e nos botões de alternância de status.
- **Resultado Esperado:** Sensação tátil e responsiva ao interagir com botões.

---

### Issue #03: [Equipe 01] Otimização da Responsividade em Dispositivos Móveis
- **Labels:** `equipe-01`, `feature`, `priority-high`
- **Equipe:** Equipe 01 — Interface e UX
- **Objetivo:** Refinar os estilos responsivos em telas de largura estreita (320px a 480px).
- **Arquivos Envolvidos:** `css/responsive.css`
- **Critérios de Aceitação:**
  - Garantir que nenhum formulário ou cartão de tarefa provoque barra de rolagem horizontal no celular.
  - Ajustar o tamanho da tipografia e paddings para melhor aproveitamento do espaço em telas pequenas.
- **Orientações de Teste:** Abrir o modo de inspeção do navegador (`F12`), simular dispositivos como iPhone SE e Moto G4 e verificar a rolagem.
- **Resultado Esperado:** Navegação fluida e sem quebra visual em celulares.

---

### Issue #04: [Equipe 01] Feedback Visual para Tarefas Concluídas
- **Labels:** `equipe-01`, `feature`, `priority-low`
- **Equipe:** Equipe 01 — Interface e UX
- **Objetivo:** Criar um destaque visual harmonioso quando uma tarefa estiver concluída.
- **Arquivos Envolvidos:** `css/style.css`
- **Critérios de Aceitação:**
  - Aplicar uma tonalidade verde clara com borda suave nos cartões com a classe `.completed`.
  - Estilizar o texto tachado com tom de cinza discreto e transição suave.
- **Orientações de Teste:** Marcar uma tarefa pendente como concluída e observar a transformação visual no cartão.
- **Resultado Esperado:** Indicação visual intuitiva do estado finalizado da tarefa.

---

## 📝 EQUIPE 02 — Cadastro e Validação de Tarefas

### Issue #05: [Equipe 02] Validação de Título Obrigatório no Formulário
- **Labels:** `equipe-02`, `feature`, `priority-high`
- **Equipe:** Equipe 02 — Cadastro de Tarefas
- **Objetivo:** Impedir que o usuário cadastre tarefas sem título ou compostas apenas por espaços vazios.
- **Arquivos Envolvidos:** `js/tarefas.js`, `js/app.js`
- **Critérios de Aceitação:**
  - Aplicar verificação com `.trim()` antes de salvar a tarefa.
  - Interromper o processo de submissão caso o campo esteja vazio.
  - Destacar o campo com borda vermelha indicativa de erro.
- **Orientações de Teste:** Tentar submeter o formulário sem preencher o título e confirmar que a tarefa não é adicionada.
- **Resultado Esperado:** Sistema resiliente contra dados inconsistentes.

---

### Issue #06: [Equipe 02] Mensagem de Notificação Visual (Sucesso e Erro)
- **Labels:** `equipe-02`, `feature`, `priority-medium`
- **Equipe:** Equipe 02 — Cadastro de Tarefas
- **Objetivo:** Exibir mensagens de confirmação visual para o usuário ao tentar cadastrar tarefas.
- **Arquivos Envolvidos:** `index.html`, `css/style.css`, `js/app.js`
- **Critérios de Aceitação:**
  - Criar componente de alerta dinâmico com mensagem de sucesso (verde) ao cadastrar.
  - Exibir alerta de erro (vermelho) quando o título for inválido.
  - Ocultar a notificação automaticamente após 3 segundos com `setTimeout`.
- **Orientações de Teste:** Cadastrar uma tarefa válida e verificar o surgimento do aviso verde; tentar cadastrar vazia e observar o aviso vermelho.
- **Resultado Esperado:** Comunicação imediata do sistema com o usuário.

---

### Issue #07: [Equipe 02] Seleção de Nível de Prioridade da Tarefa
- **Labels:** `equipe-02`, `feature`, `priority-medium`
- **Equipe:** Equipe 02 — Cadastro de Tarefas
- **Objetivo:** Adicionar a funcionalidade de escolha de prioridade (Baixa, Média, Alta) no formulário.
- **Arquivos Envolvidos:** `index.html`, `js/tarefas.js`
- **Critérios de Aceitação:**
  - Adicionar campo `<select id="prioridade-tarefa">` com opções: Baixa, Média e Alta.
  - Gravar o atributo `prioridade` no objeto salvo no LocalStorage.
  - Definir "Média" como valor padrão.
- **Orientações de Teste:** Selecionar prioridade "Alta", cadastrar e inspecionar os dados no LocalStorage do navegador.
- **Resultado Esperado:** Objeto de tarefa armazenando o nível de criticidade.

---

### Issue #08: [Equipe 02] Renderização da Badge Colorida de Prioridade
- **Labels:** `equipe-02`, `feature`, `priority-low`
- **Equipe:** Equipe 02 — Cadastro de Tarefas
- **Objetivo:** Exibir uma etiqueta visual destacada indicando a prioridade de cada tarefa na listagem.
- **Arquivos Envolvidos:** `js/app.js`, `css/style.css`
- **Critérios de Aceitação:**
  - Inserir badge colorida no cabeçalho do cartão: Vermelho para Alta, Amarelo para Média, Azul/Verde para Baixa.
  - Estilização com cantos arredondados e tipografia em negrito legível.
- **Orientações de Teste:** Cadastrar três tarefas com prioridades distintas e observar as três cores na lista.
- **Resultado Esperado:** Identificação visual imediata da relevância de cada tarefa.

---

## 🔍 EQUIPE 03 — Organização, Filtros e Estatísticas

### Issue #09: [Equipe 03] Filtro de Tarefas por Status (Todas, Pendentes, Concluídas)
- **Labels:** `equipe-03`, `feature`, `priority-high`
- **Equipe:** Equipe 03 — Organização e Filtros
- **Objetivo:** Permitir ao usuário alternar a visualização entre tarefas pendentes e finalizadas.
- **Arquivos Envolvidos:** `index.html`, `js/app.js`, `css/style.css`
- **Critérios de Aceitação:**
  - Adicionar grupo de botões: "Todas", "Pendentes" e "Concluídas".
  - Ocultar dinamicamente os itens que não correspondem ao filtro selecionado.
- **Orientações de Teste:** Clicar em "Pendentes" e verificar que as concluídas somem; clicar em "Concluídas" e verificar que as pendentes somem.
- **Resultado Esperado:** Painel de tarefas personalizável e organizado.

---

### Issue #10: [Equipe 03] Contador Dinâmico de Tarefas
- **Labels:** `equipe-03`, `feature`, `priority-medium`
- **Equipe:** Equipe 03 — Organização e Filtros
- **Objetivo:** Exibir estatísticas em tempo real com o número de tarefas cadastradas, pendentes e concluídas.
- **Arquivos Envolvidos:** `index.html`, `js/app.js`
- **Critérios de Aceitação:**
  - Criar um painel de contadores no topo da lista (ex: "Total: X | Pendentes: Y | Concluídas: Z").
  - Atualizar os números sempre que uma tarefa for adicionada ou tiver seu status alterado.
- **Orientações de Teste:** Cadastrar tarefas e marcá-las como concluídas, observando a atualização automática dos números.
- **Resultado Esperado:** Informações quantitativas claras sobre a produtividade.

---

### Issue #11: [Equipe 03] Ordenação de Tarefas por Nível de Prioridade
- **Labels:** `equipe-03`, `feature`, `priority-medium`
- **Equipe:** Equipe 03 — Organização e Filtros
- **Objetivo:** Possibilitar a reorganização da lista para exibir as tarefas de prioridade Alta em primeiro lugar.
- **Arquivos Envolvidos:** `js/tarefas.js`, `js/app.js`
- **Critérios de Aceitação:**
  - Implementar algoritmo de ordenação que posicione tarefas: Alta -> Média -> Baixa.
  - Botão ou seletor permitindo alternar entre ordenação por data de criação e por prioridade.
- **Orientações de Teste:** Clicar para ordenar por prioridade e conferir se as tarefas urgentes sobem para o topo.
- **Resultado Esperado:** Foco nas atividades mais importantes do dia.

---

### Issue #12: [Equipe 03] Indicador de Estado Ativo nos Botões de Filtro
- **Labels:** `equipe-03`, `feature`, `priority-low`
- **Equipe:** Equipe 03 — Organização e Filtros
- **Objetivo:** Destacar visualmente qual filtro de tarefas está atualmente selecionado.
- **Arquivos Envolvidos:** `css/style.css`, `js/app.js`
- **Critérios de Aceitação:**
  - Aplicar classe `.active` no botão selecionado com background primário e texto branco.
  - Remover a classe dos demais botões ao alternar.
- **Orientações de Teste:** Clicar entre os filtros e observar a movimentação do destaque visual.
- **Resultado Esperado:** Clareza total sobre qual visualização está ativa.

---

## ✏️ EQUIPE 04 — Edição, Exclusão e Busca

### Issue #13: [Equipe 04] Exclusão de Tarefas com Caixa de Confirmação
- **Labels:** `equipe-04`, `feature`, `priority-high`
- **Equipe:** Equipe 04 — Edição e Exclusão
- **Objetivo:** Adicionar funcionalidade segura para deletar tarefas do armazenamento local.
- **Arquivos Envolvidos:** `js/tarefas.js`, `js/app.js`, `css/style.css`
- **Critérios de Aceitação:**
  - Inserir botão de exclusão (ícone de lixeira ou "Excluir") em cada cartão.
  - Exibir solicitação de confirmação (`confirm('Deseja realmente excluir?')`).
  - Se confirmado, remover do LocalStorage e atualizar o DOM.
- **Orientações de Teste:** Clicar em excluir, cancelar (nada deve mudar), clicar novamente e confirmar (o item deve sumir).
- **Resultado Esperado:** Prevenção contra deleções acidentais e limpeza de dados.

---

### Issue #14: [Equipe 04] Edição Inline de Título e Descrição de Tarefas
- **Labels:** `equipe-04`, `feature`, `priority-high`
- **Equipe:** Equipe 04 — Edição e Exclusão
- **Objetivo:** Permitir ao usuário corrigir ou atualizar tarefas previamente cadastradas.
- **Arquivos Envolvidos:** `js/tarefas.js`, `js/app.js`
- **Critérios de Aceitação:**
  - Adicionar botão "Editar" no cartão da tarefa.
  - Permitir a digitação de novos valores para título e descrição via prompt ou campos editáveis.
  - Persistir as modificações no LocalStorage mantendo o ID original.
- **Orientações de Teste:** Editar uma tarefa existente, recarregar a página (`F5`) e constatar que os novos dados permanecem salvos.
- **Resultado Esperado:** Flexibilidade para manutenção das atividades.

---

### Issue #15: [Equipe 04] Campo de Busca de Tarefas em Tempo Real
- **Labels:** `equipe-04`, `feature`, `priority-medium`
- **Equipe:** Equipe 04 — Edição e Exclusão
- **Objetivo:** Facilitar a localização de tarefas em listas extensas através de um campo de pesquisa.
- **Arquivos Envolvidos:** `index.html`, `js/app.js`
- **Critérios de Aceitação:**
  - Inserir campo `<input type="search" placeholder="Buscar tarefas...">`.
  - Filtrar itens dinamicamente pelo evento `input` comparando textos em minúsculo (`toLowerCase()`).
- **Orientações de Teste:** Digitar palavras-chave no campo e verificar se apenas as tarefas correspondentes permanecem na tela.
- **Resultado Esperado:** Agilidade na localização de tarefas.

---

### Issue #16: [Equipe 04] Ação em Lote para Limpar Todas as Concluídas
- **Labels:** `equipe-04`, `feature`, `priority-low`
- **Equipe:** Equipe 04 — Edição e Exclusão
- **Objetivo:** Fornecer um atalho para remover de uma só vez todas as tarefas concluídas.
- **Arquivos Envolvidos:** `js/tarefas.js`, `js/app.js`
- **Critérios de Aceitação:**
  - Adicionar botão "Limpar Concluídas" com confirmação de segurança.
  - Deletar apenas itens com `concluida: true`, mantendo intactas as tarefas pendentes.
- **Orientações de Teste:** Concluir algumas tarefas e clicar no botão; verificar que apenas as pendentes continuam.
- **Resultado Esperado:** Manutenção rápida e descarte de tarefas antigas.

---

## 📖 EQUIPE 05 — Documentação e Acessibilidade

### Issue #17: [Equipe 05] Enriquecimento da Central de Ajuda (`pages/ajuda.html`)
- **Labels:** `equipe-05`, `documentation`, `priority-medium`
- **Equipe:** Equipe 05 — Documentação e Acessibilidade
- **Objetivo:** Escrever tutoriais claros na página de ajuda explicando o uso de todas as novidades do sistema.
- **Arquivos Envolvidos:** `pages/ajuda.html`
- **Critérios de Aceitação:**
  - Redigir seções explicando o funcionamento dos filtros, busca e prioridades.
  - Utilizar linguagem acessível e formatação limpa com cabeçalhos bem estruturados.
- **Orientações de Teste:** Navegar até `pages/ajuda.html` e conferir a clareza e ortografia dos novos textos.
- **Resultado Esperado:** Manual de uso completo e autodidático para qualquer usuário.

---

### Issue #18: [Equipe 05] Inclusão de Atributos Semânticos de Acessibilidade (WAI-ARIA)
- **Labels:** `equipe-05`, `feature`, `priority-high`
- **Equipe:** Equipe 05 — Documentação e Acessibilidade
- **Objetivo:** Tornar o TaskLab plenamente navegável e compreensível para usuários de leitores de tela.
- **Arquivos Envolvidos:** `index.html`, `pages/sobre.html`, `pages/ajuda.html`
- **Critérios de Aceitação:**
  - Inserir `aria-label` descritivos em todos os botões e links de ação.
  - Adicionar `role="status"` ou `aria-live="polite"` nas áreas de notificação e contadores.
- **Orientações de Teste:** Inspecionar o código HTML com ferramentas de acessibilidade (Lighthouse ou leitor de tela do Windows/NVDA).
- **Resultado Esperado:** Sistema inclusivo em conformidade com as diretrizes WCAG.

---

### Issue #19: [Equipe 05] Estilização de Foco Visível para Navegação por Teclado
- **Labels:** `equipe-05`, `feature`, `priority-medium`
- **Equipe:** Equipe 05 — Documentação e Acessibilidade
- **Objetivo:** Permitir o uso integral da aplicação utilizando apenas a tecla Tab do teclado.
- **Arquivos Envolvidos:** `css/style.css`
- **Critérios de Aceitação:**
  - Definir `:focus-visible` com anel de contorno azul destacado (`outline: 2px solid #2563eb`) em todos os botões, links e inputs.
  - Garantir ordem lógica de tabulação.
- **Orientações de Teste:** Navegar pelo sistema pressionando repetidamente a tecla `Tab` sem tocar no mouse.
- **Resultado Esperado:** Navegação por teclado clara e sem perda de foco.

---

### Issue #20: [Equipe 05] Seção de Créditos Institucionais na Página Sobre
- **Labels:** `equipe-05`, `documentation`, `priority-low`
- **Equipe:** Equipe 05 — Documentação e Acessibilidade
- **Objetivo:** Adicionar espaço dedicado para creditar as contribuições da turma e da professora.
- **Arquivos Envolvidos:** `pages/sobre.html`
- **Critérios de Aceitação:**
  - Criar cartão informativo "Equipes Desenvolvedoras" com design consistente ao restante da página.
  - Destacar o papel da docente Profª Rebeca Barbosa Lourenço e a disciplina de Engenharia de Software.
- **Orientações de Teste:** Abrir `pages/sobre.html` e verificar o alinhamento e apresentação do novo cartão.
- **Resultado Esperado:** Reconhecimento institucional e valorização do esforço coletivo da turma.
