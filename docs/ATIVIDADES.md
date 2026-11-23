# 📋 Divisão de Atividades por Equipe — TaskLab

**Disciplina:** Tópicos Especiais em Engenharia de Software I — Unidade II  
**Docente:** Profª Rebeca Barbosa Lourenço  
**Projeto:** TaskLab — Laboratório de Colaboração em Software  

---

## 👥 Estrutura Geral das Equipes

O desenvolvimento colaborativo do TaskLab foi dividido em **5 equipes multidisciplinares**. Cada equipe é dona de um módulo ou responsabilidade do sistema. 

Para assegurar a participação individual, cada equipe possui **4 tarefas individuais específicas**. Cada aluno escolherá ou receberá uma tarefa, criará sua própria branch e abrirá seu respectivo Pull Request.

---

## 🎨 Equipe 01 — Interface e Experiência do Usuário (UI/UX)
**Foco:** Refinamento visual, identidade, responsividade e usabilidade.

- **Tarefa 1.1 (Aluno 1) — Aperfeiçoamento do Cabeçalho e Identidade Visual:**
  - *Branch:* `feature/equipe01-nome-aluno1`
  - *Arquivos:* `css/style.css`, `index.html`
  - *O que fazer:* Adicionar efeitos de transição suave na barra de navegação, melhorar o ícone e tipografia da marca e criar feedback visual ao passar o mouse sobre os links.
  - *Critério de aceitação:* O cabeçalho deve manter contraste acessível e transições suaves (`transition: 0.2s`).

- **Tarefa 1.2 (Aluno 2) — Padronização de Botões e Efeitos de Hover:**
  - *Branch:* `feature/equipe01-nome-aluno2`
  - *Arquivos:* `css/style.css`
  - *O que fazer:* Criar estilos refinados para botões primários e secundários, com sombras sutis (`box-shadow`), estados de `:hover`, `:focus` e `:active`.
  - *Critério de aceitação:* Todos os botões do sistema devem possuir estilos uniformes e indicação clara de clique.

- **Tarefa 1.3 (Aluno 3) — Otimização da Grade e Espaçamentos Responsivos:**
  - *Branch:* `feature/equipe01-nome-aluno3`
  - *Arquivos:* `css/responsive.css`
  - *O que fazer:* Ajustar o alinhamento em telas móveis (320px a 480px), garantindo que os cartões de tarefas e formulários não transbordem horizontalmente.
  - *Critério de aceitação:* Nenhum elemento deve causar scroll horizontal no dispositivo móvel.

- **Tarefa 1.4 (Aluno 4) — Feedback Visual de Tarefa Concluída:**
  - *Branch:* `feature/equipe01-nome-aluno4`
  - *Arquivos:* `css/style.css`
  - *O que fazer:* Criar uma animação sutil ou destaque visual em verde claro quando uma tarefa for marcada como concluída, melhorando a percepção de sucesso do usuário.
  - *Critério de aceitação:* O cartão concluído deve exibir visualmente a transição de estado de maneira elegante.

---

## 📝 Equipe 02 — Cadastro e Validação de Tarefas
**Foco:** Integridade dos dados de entrada, robustez do formulário e priorização.

- **Tarefa 2.1 (Aluno 1) — Validação de Campos Obrigatórios:**
  - *Branch:* `feature/equipe02-nome-aluno1`
  - *Arquivos:* `js/tarefas.js`, `js/app.js`
  - *O que fazer:* Impedir o cadastro de tarefas com título em branco ou contendo apenas espaços vazios (`trim()`).
  - *Critério de aceitação:* Se o usuário tentar enviar título vazio, o envio é cancelado e uma mensagem de erro é exibida.

- **Tarefa 2.2 (Aluno 2) — Mensagem de Alerta Visual:**
  - *Branch:* `feature/equipe02-nome-aluno2`
  - *Arquivos:* `index.html`, `css/style.css`, `js/app.js`
  - *O que fazer:* Criar um elemento visual de alerta (notificação *toast* ou banner abaixo do formulário) que avisa em vermelho quando há erro e em verde quando a tarefa é cadastrada com sucesso.
  - *Critério de aceitação:* A notificação deve desaparecer automaticamente após 3 segundos.

- **Tarefa 2.3 (Aluno 3) — Campo de Prioridade da Tarefa:**
  - *Branch:* `feature/equipe02-nome-aluno3`
  - *Arquivos:* `index.html`, `js/tarefas.js`
  - *O que fazer:* Adicionar um campo `<select>` no formulário permitindo escolher a prioridade: **Baixa**, **Média** ou **Alta**.
  - *Critério de aceitação:* A prioridade selecionada deve ser gravada no objeto da tarefa no LocalStorage.

- **Tarefa 2.4 (Aluno 4) — Exibição da Badge de Prioridade no Cartão:**
  - *Branch:* `feature/equipe02-nome-aluno4`
  - *Arquivos:* `js/app.js`, `css/style.css`
  - *O que fazer:* Renderizar a prioridade no cartão da tarefa com cores distintas (ex: Vermelho para Alta, Amarelo para Média, Azul/Verde para Baixa).
  - *Critério de aceitação:* Cada cartão deve exibir sua respectiva badge colorida de prioridade.

---

## 🔍 Equipe 03 — Organização, Filtros e Estatísticas
**Foco:** Agrupamento, métricas da lista e facilidade de localização.

- **Tarefa 3.1 (Aluno 1) — Filtro de Tarefas por Status (Pendentes e Concluídas):**
  - *Branch:* `feature/equipe03-nome-aluno1`
  - *Arquivos:* `index.html`, `js/app.js`, `css/style.css`
  - *O que fazer:* Inserir três botões no topo da lista: `Todas`, `Pendentes` e `Concluídas`. Filtrar os itens exibidos conforme a seleção.
  - *Critério de aceitação:* Ao clicar em "Pendentes", ocultar as concluídas; ao clicar em "Concluídas", mostrar apenas as finalizadas.

- **Tarefa 3.2 (Aluno 2) — Contador Dinâmico de Tarefas:**
  - *Branch:* `feature/equipe03-nome-aluno2`
  - *Arquivos:* `index.html`, `js/app.js`
  - *O que fazer:* Criar um contador no cabeçalho do painel indicando o total de tarefas, quantas estão pendentes e quantas concluídas (ex: *Total: 5 | Concluídas: 2*).
  - *Critério de aceitação:* O contador deve ser recalculado imediatamente a cada nova tarefa cadastrada ou status alterado.

- **Tarefa 3.3 (Aluno 3) — Ordenação de Tarefas por Prioridade:**
  - *Branch:* `feature/equipe03-nome-aluno3`
  - *Arquivos:* `js/tarefas.js`, `js/app.js`
  - *O que fazer:* Criar um controle para ordenar a lista colocando tarefas de prioridade **Alta** no topo.
  - *Critério de aceitação:* A lista é reordenada corretamente no DOM.

- **Tarefa 3.4 (Aluno 4) — Estilização Ativa dos Filtros:**
  - *Branch:* `feature/equipe03-nome-aluno4`
  - *Arquivos:* `css/style.css`
  - *O que fazer:* Aplicar destaque visual marcante ao botão do filtro atualmente ativo, com borda reforçada e fundo diferenciado.
  - *Critério de aceitação:* O usuário deve saber imediatamente qual filtro está aplicado na tela.

---

## ✏️ Equipe 04 — Edição, Exclusão e Busca
**Foco:** Gerenciamento do ciclo de vida das tarefas e consulta rápida.

- **Tarefa 4.1 (Aluno 1) — Exclusão de Tarefas com Confirmação:**
  - *Branch:* `feature/equipe04-nome-aluno1`
  - *Arquivos:* `js/tarefas.js`, `js/app.js`, `css/style.css`
  - *O que fazer:* Adicionar botão "Excluir" em cada cartão de tarefa. Ao clicar, solicitar confirmação (`confirm()` ou modal) antes de remover do LocalStorage.
  - *Critério de aceitação:* Se confirmado, a tarefa é excluída do LocalStorage e removida da tela; se cancelado, nada acontece.

- **Tarefa 4.2 (Aluno 2) — Edição do Título e Descrição da Tarefa:**
  - *Branch:* `feature/equipe04-nome-aluno2`
  - *Arquivos:* `js/tarefas.js`, `js/app.js`
  - *O que fazer:* Adicionar botão "Editar" que permite ao usuário alterar o título e descrição de uma tarefa já salva.
  - *Critério de aceitação:* Os novos valores digitados devem persistir no LocalStorage e atualizar o cartão na tela.

- **Tarefa 4.3 (Aluno 3) — Campo de Busca em Tempo Real:**
  - *Branch:* `feature/equipe04-nome-aluno3`
  - *Arquivos:* `index.html`, `js/app.js`
  - *O que fazer:* Adicionar um campo de busca no topo da lista de tarefas. À medida que o usuário digita, filtrar os cartões por título correspondente.
  - *Critério de aceitação:* Apenas as tarefas contendo o texto digitado devem permanecer visíveis na tela.

- **Tarefa 4.4 (Aluno 4) — Botão para Limpar Todas as Tarefas Concluídas:**
  - *Branch:* `feature/equipe04-nome-aluno4`
  - *Arquivos:* `js/tarefas.js`, `js/app.js`, `css/style.css`
  - *O que fazer:* Criar um botão "Limpar Concluídas" que remove em lote todas as tarefas finalizadas, liberando espaço.
  - *Critério de aceitação:* Tarefas pendentes são preservadas intactas.

---

## 📖 Equipe 05 — Documentação, Acessibilidade e Inclusão
**Foco:** Experiência inclusiva, conformidade com acessibilidade digital e documentação institucional.

- **Tarefa 5.1 (Aluno 1) — Enriquecimento da Central de Ajuda (`pages/ajuda.html`):**
  - *Branch:* `docs/equipe05-nome-aluno1-ajuda`
  - *Arquivos:* `pages/ajuda.html`
  - *O que fazer:* Redigir seções completas explicando como usar as novas funcionalidades desenvolvidas pelas demais equipes (filtros, busca, exclusão e prioridades).
  - *Critério de aceitação:* A página deve conter explicações didáticas em linguagem clara.

- **Tarefa 5.2 (Aluno 2) — Acessibilidade e Atributos WAI-ARIA:**
  - *Branch:* `feature/equipe05-nome-aluno2-aria`
  - *Arquivos:* `index.html`, `pages/sobre.html`, `pages/ajuda.html`
  - *O que fazer:* Inserir atributos semânticos de acessibilidade (`aria-label`, `aria-live`, `aria-describedby`, `role="status"`).
  - *Critério de aceitação:* Elementos interativos devem ser corretamente interpretados por leitores de tela.

- **Tarefa 5.3 (Aluno 3) — Navegação Completa por Teclado:**
  - *Branch:* `feature/equipe05-nome-aluno3-teclado`
  - *Arquivos:* `css/style.css`
  - *O que fazer:* Criar estilos evidentes para o estado `:focus-visible` em todos os botões, links e campos de formulário.
  - *Critério de aceitação:* Um usuário deve conseguir usar todo o TaskLab navegando apenas com a tecla `Tab` e `Enter`, visualizando o indicador de foco com clareza.

- **Tarefa 5.4 (Aluno 4) — Atualização da Página Sobre com Créditos da Turma:**
  - *Branch:* `docs/equipe05-nome-aluno4-sobre`
  - *Arquivos:* `pages/sobre.html`
  - *O que fazer:* Criar uma seção especial "Equipes Contribuintes" listando os nomes dos estudantes da turma e suas atribuições na disciplina.
  - *Critério de aceitação:* Layout limpo e harmonioso com a identidade visual do TaskLab.

---

## 📌 Checklist do Estudante para Aprovação
Para que sua atividade seja considerada concluída:
1. [ ] Branch nomeada rigorosamente no padrão.
2. [ ] Pelo menos 1 commit com mensagem semântica (Conventional Commits).
3. [ ] Pull Request aberto com o template preenchido e vinculado à issue (`Closes #ID`).
4. [ ] Revisão aprovada por um colega de outra equipe ou da mesma equipe.
5. [ ] Ausência de conflitos com a branch `main`.
