# 📋 Guia de Configuração e Uso do GitHub Projects

**Disciplina:** Tópicos Especiais em Engenharia de Software I — Unidade II  
**Docente:** Profª Rebeca Barbosa Lourenço  
**Projeto:** TaskLab — Laboratório de Colaboração em Software  
**Quadro Planejado:** *TaskLab — Atividades Práticas*  

---

## 🎯 Por que Utilizar o GitHub Projects?

O **GitHub Projects** é a ferramenta nativa do GitHub para planejamento e acompanhamento ágil de software. Ele integra diretamente o código-fonte, branches, commits, *Issues* e *Pull Requests* em um painel visual no formato **Kanban**.

Isso permite que a professora e os estudantes tenham visão em tempo real de quem está trabalhando em qual funcionalidade, quais tarefas estão em revisão e o que já foi entregue.

---

## 🛠️ Passo a Passo para a Professora Criar o Quadro

Caso a criação automatizada via API não esteja disponível, siga estes passos simples na interface do GitHub (leva menos de 3 minutos):

### 1. Criar o Projeto
1. Acesse o repositório: `https://github.com/Rebecabl/tasklab-git-github`.
2. No menu superior abaixo do nome do repositório, clique na aba **Projects**.
3. Clique no botão verde **"New project"** (ou **"Link a project"** > **"New project"**).
4. Selecione o modelo **Board** (Kanban).
5. Defina o título do projeto como:
   `TaskLab — Atividades Práticas`
6. Clique em **"Create"**.

---

### 2. Configurar as Colunas do Kanban
Por padrão, o GitHub criará três colunas essenciais. Renomeie ou configure para que fiquem exatamente assim:

1. 🟡 **A fazer** (Todo): Lista de todas as atividades e issues disponíveis para os alunos.
2. 🔵 **Em andamento** (In Progress): Tarefas que estão sendo desenvolvidas ativamente ou em processo de Code Review.
3. 🟢 **Concluído** (Done): Funcionalidades revisadas, aprovadas e integradas na branch `main`.

---

### 3. Adicionar as Issues ao Quadro
1. Dentro do quadro, clique no botão **"+ Add item"** na base da coluna **A fazer**.
2. Digite `#` para abrir a lista suspensa de todas as issues do repositório `tasklab-git-github`.
3. Selecione as issues criadas para a aula prática (veja o catálogo em `docs/ISSUES_CATALOGO.md`).
4. Os cartões aparecerão ordenados na coluna **A fazer**.

---

### 4. Atribuir Responsáveis e Metadados aos Cartões
Para cada cartão no Kanban:
- **Assignees (Responsáveis):** Clique no cartão e adicione o usuário do GitHub do aluno encarregado.
- **Labels (Etiquetas):** Adicione as etiquetas correspondentes:
  - Equipe: `equipe-01`, `equipe-02`, `equipe-03`, `equipe-04`, `equipe-05`
  - Tipo: `feature`, `bug`, `documentation`
  - Prioridade: `priority-high`, `priority-medium`, `priority-low`

---

## 🔄 Fluxo de Movimentação Durante a Aula

Oriente os alunos sobre como movimentar suas tarefas:

```text
[A Fazer] ────(Aluno inicia o desenvolvimento)────► [Em Andamento]
                                                          │
                                         (PR revisado, aprovado e merge feito)
                                                          │
                                                          ▼
                                                     [Concluído]
```

1. **Início da Tarefa:** O aluno acessa o projeto, localiza o cartão da sua equipe/tarefa e o arrasta de **"A fazer"** para **"Em andamento"**.
2. **Desenvolvimento e PR:** O aluno desenvolve o código, realiza o commit e abre o Pull Request.
3. **Fechamento Automático:** Na descrição do Pull Request, o aluno deve incluir uma das palavras-chave de fechamento vinculada ao número da issue:
   - `Closes #12`
   - `Fixes #12`
   - `Resolves #12`
4. **Merge pela Professora:** Quando a professora clica em **"Merge pull request"**, o GitHub:
   - Fecha a issue automaticamente.
   - Move o cartão para a coluna **Concluído** de forma 100% automatizada!

---

## 💡 Exemplo de Vínculo nos Pull Requests

No corpo do Pull Request, o estudante insere:

```markdown
## 📌 Identificação
- **Equipe:** Equipe 02 — Cadastro de Tarefas
- **Estudante:** João Vitor Pereira
- **Issue Relacionada:** Closes #4

## 📝 Descrição da Funcionalidade
Implementada validação no campo de título impedindo cadastro de tarefas em branco.
```

> **Por que isso é importante?** Além de economizar tempo da professora ao fechar tarefas manualmente, essa rastreabilidade entre código, commit, PR e issue é o padrão utilizado nas maiores empresas de tecnologia do mundo (Google, Meta, Microsoft, Amazon).

---

## 📊 Acompanhamento Visual pela Professora

Durante a aula, a professora pode projetar o quadro na tela da sala:
- Se houver muitos cartões estagnados em **"A fazer"**, indica que algumas equipes ainda não clonaram o projeto ou estão com dificuldades iniciais de ambiente.
- Se houver acúmulo em **"Em andamento"**, indica que os alunos estão programando ou aguardando revisões de colegas.
- O preenchimento da coluna **"Concluído"** fornece feedback imediato de conquista e progresso coletivo da turma!
