# 🚀 TaskLab — Laboratório de Colaboração em Software

> **Projeto educacional desenvolvido para a disciplina Tópicos Especiais em Engenharia de Software I — Unidade II**  
> **Docente Responsável:** Profª Rebeca Barbosa Lourenço  
> **Repositório Central:** [https://github.com/Rebecabl/tasklab-git-github](https://github.com/Rebecabl/tasklab-git-github)  
> **Branch Principal:** `main`

---

## 📌 1. Sobre o Projeto

O **TaskLab** é uma aplicação web de gerenciamento de tarefas construída intencionalmente com tecnologias fundamentais (HTML5, CSS3 e JavaScript puro), sem necessidade de instalação de dependências, compiladores ou bancos de dados complexos.

O objetivo central do projeto é **educacional**: proporcionar aos estudantes uma vivência autêntica e profissional dos fluxos de trabalho de Engenharia de Software em equipe utilizando **Git e GitHub**.

### O que os alunos praticam no TaskLab:
- 🌿 **Git Flow:** Trabalho isolado em branches individuais sem alterar diretamente a branch `main`.
- 📝 **Conventional Commits:** Mensagens de histórico semânticas e organizadas.
- 🔀 **Pull Requests & Templates:** Submissão padronizada de código para integração.
- 🔍 **Code Review:** Revisão mútua por pares (*Peer Review*), aprovação e solicitação de melhorias.
- 💥 **Resolução de Conflitos:** Diagnóstico e resolução manual de conflitos de merge.
- 🎯 **Gestão Ágil:** Uso de *GitHub Issues* e quadros Kanban no *GitHub Projects* com encerramento automático (`Closes #ID`).

---

## 🛠️ 2. Tecnologias Utilizadas

- **HTML5:** Estrutura semântica e acessível.
- **CSS3:** Variáveis de tema, design moderno e layout responsivo (Flexbox e CSS Grid).
- **JavaScript (Vanilla JS):** Manipulação de DOM, modularização e regras de negócio.
- **LocalStorage:** Persistência de dados diretamente no navegador cliente.
- **Git & GitHub:** Controle de versão distribuído, governança de código e gestão de tarefas.

---

## 📂 3. Estrutura do Repositório

```text
tasklab-git-github/
│
├── index.html                   # Página inicial da aplicação (TaskLab)
├── README.md                    # Documento de apresentação e guia do projeto
├── .gitignore                   # Arquivos ignorados pelo Git
│
├── css/
│   ├── style.css                # Estilização global e componentes
│   └── responsive.css           # Regras de responsividade para dispositivos móveis
│
├── js/
│   ├── storage.js               # Camada de persistência no LocalStorage
│   ├── tarefas.js               # Regras de negócio de gerenciamento de tarefas
│   └── app.js                   # Controlador da interface do usuário e eventos
│
├── pages/
│   ├── sobre.html               # Página institucional sobre o projeto e a disciplina
│   └── ajuda.html               # Central de ajuda e instruções de uso
│
├── docs/
│   ├── GUIA_PROFESSORA.md       # Manual detalhado para condução da aula pela docente
│   ├── GUIA_ALUNOS.md           # Tutorial passo a passo para os estudantes (14 etapas)
│   ├── ATIVIDADES.md            # Divisão das 20 tarefas individuais pelas 5 equipes
│   ├── AVALIACAO.md             # Matriz de avaliação (10 pts), fichas e roteiros de aula
│   ├── CONFLITOS.md             # Guia didático de simulação e resolução de conflitos
│   ├── GITHUB_PROJECTS.md       # Configuração e fluxo do quadro Kanban no GitHub
│   ├── ISSUES_CATALOGO.md       # Catálogo com as 20 issues prontas para uso
│   └── MENSAGENS_TURMA.md       # Arquivo didático exclusivo para exercício de conflitos
│
├── scripts/
│   └── criar_issues_tasklab.ps1 # Script de automação para criação das issues via GitHub CLI
│
└── .github/
    ├── ISSUE_TEMPLATE/
    │   └── atividade.yml        # Formulário interativo para criação de issues no GitHub
    └── pull_request_template.md # Template padronizado com checklist para Pull Requests
```

---

## ⚡ 4. Como Executar Localmente

Como o TaskLab utiliza apenas tecnologias web nativas, você não precisa instalar o Node.js, npm, Python ou qualquer servidor complexo!

### Opção 1: Execução Direta no Navegador
1. Baixe ou clone o repositório.
2. Dê um duplo clique no arquivo `index.html` para abri-lo em qualquer navegador moderno (Chrome, Edge, Firefox, Safari).

### Opção 2: Com VS Code (Live Server) — *Recomendado*
1. Abra a pasta do projeto no **Visual Studio Code**.
2. Clique com o botão direito sobre o arquivo `index.html`.
3. Selecione a opção **"Open with Live Server"**.

### Opção 3: Servidor Local via Terminal
Caso deseje rodar um servidor HTTP local simples:
```bash
# Com Python 3
python -m http.server 8000

# Depois acesse: http://localhost:8000
```

---

## 👥 5. Distribuição das Equipes

O desenvolvimento foi distribuído em **5 equipes multidisciplinares** com tarefas independentes:

| Equipe | Módulo de Responsabilidade | Foco Principal |
| :--- | :--- | :--- |
| **Equipe 01** | Interface e Experiência do Usuário | Cores, identidade, botões e responsividade móvel |
| **Equipe 02** | Cadastro e Validação de Tarefas | Validação de campos, mensagens de erro e prioridades |
| **Equipe 03** | Organização, Filtros e Métricas | Filtros (Pendentes/Concluídas), contadores dinâmicos e ordenação |
| **Equipe 04** | Edição, Exclusão e Busca | Exclusão com confirmação, edição inline e pesquisa em tempo real |
| **Equipe 05** | Documentação e Acessibilidade | Central de ajuda, navegação por teclado e atributos ARIA |

Consulte o documento detalhado em [docs/ATIVIDADES.md](docs/ATIVIDADES.md).

---

## 🌿 6. Padrões de Branches e Commits

### Padrão de Branches
- **Funcionalidades:** `feature/equipeXX-nome-do-aluno`  
  *(Exemplo: `feature/equipe02-joao`, `feature/equipe03-maria`)*
- **Correções urgentes:** `fix/descricao-do-problema`
- **Documentação:** `docs/descricao-da-melhoria`

> ⚠️ **Atenção:** É expressamente proibido realizar commits diretos na branch `main`.

### Padrão de Commits (Conventional Commits)
As mensagens de commit devem ser curtas, diretas e descritivas:
- `feat(equipe02): adiciona validacao no campo de titulo`
- `fix(equipe04): impede exclusao acidental sem confirmacao`
- `style(equipe01): melhora espacamento dos botoes em celulares`
- `docs(equipe05): adiciona secao de atalhos na pagina de ajuda`

---

## 📚 7. Guias e Documentações Didáticas

Acesse a documentação completa nos links abaixo:

1. [📘 Guia Completo da Professora](docs/GUIA_PROFESSORA.md) — Roteiro de condução, falas, telas e resolução de problemas.
2. [👨‍💻 Guia do Estudante](docs/GUIA_ALUNOS.md) — Passo a passo do aluno do clone ao merge em 14 etapas.
3. [📋 Divisão de Atividades](docs/ATIVIDADES.md) — As 20 tarefas individuais detalhadas.
4. [📊 Matriz de Avaliação](docs/AVALIACAO.md) — Rubrica de 10 pontos, fichas de acompanhamento e planejamento de aulas.
5. [💥 Guia de Resolução de Conflitos](docs/CONFLITOS.md) — Exercício prático de simulação e resolução manual.
6. [📋 Guia do GitHub Projects](docs/GITHUB_PROJECTS.md) — Configuração do quadro Kanban integrado.
7. [📑 Catálogo de Issues](docs/ISSUES_CATALOGO.md) — Especificação completa das 20 issues para a turma.

---

## 👩‍🏫 Créditos e Autoria

- **Docente:** Profª Rebeca Barbosa Lourenço
- **Perfil no GitHub:** [@Rebecabl](https://github.com/Rebecabl)
- **Disciplina:** Tópicos Especiais em Engenharia de Software I — Unidade II
- **Ano:** 2026
