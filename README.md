# TaskLab — Laboratório de Colaboração em Software

Projeto educacional desenvolvido para a disciplina **Tópicos Especiais em Engenharia de Software I — Unidade II**.  
**Docente Responsável:** Profª Rebeca Barbosa Lourenço  
**Repositório Central:** [https://github.com/Rebecabl/tasklab-git-github](https://github.com/Rebecabl/tasklab-git-github)  
**Branch Principal:** `main`  

---

## 1. Visão Geral do Projeto

O **TaskLab** é uma aplicação web para gerenciamento de tarefas concebida com tecnologias fundamentais (HTML5, CSS3 e JavaScript puro), sem necessidade de instalação de dependências externas, bibliotecas de terceiros ou bancos de dados locais.

O objetivo do projeto é puramente pedagógico: proporcionar aos estudantes uma vivência autêntica das rotinas profissionais de Engenharia de Software em equipe, utilizando **Git e GitHub**.

### Competências Práticas Desenvolvidas

- **Fluxo de Trabalho Colaborativo (GitHub Flow):** Desenvolvimento isolado em ramificações (*branches*) individuais, assegurando a integridade da branch principal (`main`).
- **Padronização de Histórico (Conventional Commits):** Mensagens de commit estruturadas, descritivas e padronizadas.
- **Integração Formal (Pull Requests):** Submissão de alterações com documentação de contexto, instruções de teste e verificação de critérios de aceitação.
- **Revisão por Pares (Code Review):** Avaliação mútua de código entre estudantes antes da autorização de merge pela professora.
- **Resolução de Conflitos de Merge:** Diagnóstico e resolução manual de divergências concorrentes no histórico de arquivos.
- **Gestão Ágil de Demandas:** Uso de *GitHub Issues* e quadros Kanban no *GitHub Projects*, incluindo encerramento automático via palavras-chave (`Closes #ID`).

---

## 2. Tecnologias Empregadas

- **HTML5:** Estruturação semântica e acessível.
- **CSS3:** Variáveis de estilo, tipografia escalável e layout responsivo com Flexbox e Grid.
- **JavaScript (Vanilla JS):** Manipulação de DOM e lógica de negócios sem frameworks.
- **LocalStorage:** Persistência de dados diretamente no navegador do usuário.
- **Git e GitHub:** Controle de versão distribuído, governança de código e gestão de tarefas.

---

## 3. Estrutura de Arquivos e Pastas

```text
tasklab-git-github/
│
├── index.html                   # Página inicial da aplicação (gerenciador de tarefas)
├── README.md                    # Documento principal de apresentação do repositório
├── .gitignore                   # Regras de exclusão de arquivos de sistema e IDEs
│
├── css/
│   ├── style.css                # Estilização global e componentes de interface
│   └── responsive.css           # Regras de adaptação para dispositivos móveis
│
├── js/
│   ├── storage.js               # Camada de persistência em LocalStorage
│   ├── tarefas.js               # Regras de negócio do gerenciamento de tarefas
│   └── app.js                   # Controlador da interface do usuário e eventos do DOM
│
├── pages/
│   ├── sobre.html               # Página institucional sobre o contexto acadêmico
│   └── ajuda.html               # Central de ajuda e instruções de uso do sistema
│
├── docs/
│   ├── GUIA_PROFESSORA.md       # Roteiro de condução didática da docente
│   ├── GUIA_ALUNOS.md           # Passo a passo detalhado para os estudantes (14 etapas)
│   ├── ATIVIDADES.md            # Divisão das 20 tarefas individuais pelas 5 equipes
│   ├── AVALIACAO.md             # Matriz de avaliação (10 pontos) e planejamento da aula
│   ├── CONFLITOS.md             # Guia prático de simulação e resolução de conflitos
│   ├── GITHUB_PROJECTS.md       # Configuração e fluxo do quadro Kanban integrado
│   ├── ISSUES_CATALOGO.md       # Catálogo das 20 issues com critérios de aceitação
│   └── MENSAGENS_TURMA.md       # Arquivo didático destinado ao exercício prático de conflitos
│
├── scripts/
│   └── criar_issues_tasklab.ps1 # Script de automação para criação de issues via GitHub CLI
│
└── .github/
    ├── ISSUE_TEMPLATE/
    │   └── atividade.yml        # Formulário padronizado para criação de issues
    └── pull_request_template.md # Template formal de Pull Request com checklist
```

---

## 4. Instruções de Execução Local

Por utilizar exclusivamente tecnologias web nativas, o projeto não exige Node.js, compiladores ou servidores externos.

### Execução Direta no Navegador
1. Faça o clone ou download do repositório.
2. Abra o arquivo `index.html` em qualquer navegador web moderno.

### Execução com VS Code (Live Server)
1. Abra a pasta do projeto no Visual Studio Code.
2. Clique com o botão direito sobre o arquivo `index.html`.
3. Selecione a opção "Open with Live Server".

### Execução com Servidor HTTP Local (Terminal)
Caso deseje utilizar um servidor local simples via terminal:
```bash
python -m http.server 8000
# Em seguida, acesse: http://localhost:8000
```

---

## 5. Divisão de Responsabilidades por Equipe

O trabalho colaborativo está dividido em 5 equipes multidisciplinares com escopos independentes:

| Equipe | Módulo de Responsabilidade | Foco Principal |
| :--- | :--- | :--- |
| **Equipe 01** | Interface e Experiência do Usuário | Tipografia, botões, estados de interação e responsividade |
| **Equipe 02** | Cadastro e Validação de Tarefas | Validação de campos obrigatórios, notificações e prioridades |
| **Equipe 03** | Organização, Filtros e Métricas | Filtros de visualização, contadores dinâmicos e ordenação |
| **Equipe 04** | Edição, Exclusão e Busca | Confirmação de exclusão, edição inline e pesquisa por texto |
| **Equipe 05** | Documentação e Acessibilidade | Central de ajuda, conformidade WAI-ARIA e navegação por teclado |

Para consultar o detalhamento de cada uma das 20 tarefas individuais, acesse o documento [docs/ATIVIDADES.md](docs/ATIVIDADES.md).

---

## 6. Padrões de Branches e Commits

### Nomenclatura de Branches
- **Funcionalidades:** `feature/equipeXX-nome-do-aluno`  
  *Exemplos:* `feature/equipe02-joao`, `feature/equipe03-maria`
- **Correções:** `fix/descricao-do-problema`
- **Documentação:** `docs/descricao-da-melhoria`

*Observação:* É expressamente proibido realizar commits diretos na branch `main`.

### Padrão de Mensagens de Commit (Conventional Commits)
- `feat(equipe02): adiciona validacao no campo de titulo`
- `fix(equipe04): impede exclusao acidental sem confirmacao`
- `style(equipe01): melhora espacamento dos botoes em dispositivos moveis`
- `docs(equipe05): adiciona instrucoes de uso na central de ajuda`

---

## 7. Documentação Suplementar

- [Guia Completo da Professora](docs/GUIA_PROFESSORA.md): Roteiro de apresentação em sala, demonstrações e diagnóstico de problemas comuns.
- [Guia do Estudante](docs/GUIA_ALUNOS.md): Manual passo a passo em 14 etapas, do clone à integração final.
- [Divisão de Atividades](docs/ATIVIDADES.md): Atribuições individuais para cada membro de equipe.
- [Matriz de Avaliação](docs/AVALIACAO.md): Critérios de pontuação, ficha de acompanhamento e roteiros de 100 e 50 minutos.
- [Guia de Resolução de Conflitos](docs/CONFLITOS.md): Simulação prática e instruções para resolução manual de merge conflicts.
- [Guia do GitHub Projects](docs/GITHUB_PROJECTS.md): Organização do quadro Kanban e fechamento automatizado de issues.
- [Catálogo de Issues](docs/ISSUES_CATALOGO.md): Especificação completa das 20 atividades cadastradas no repositório.

---

## 8. Informações Institucionais

- **Instituição e Disciplina:** Tópicos Especiais em Engenharia de Software I — Unidade II
- **Docente:** Profª Rebeca Barbosa Lourenço ([@Rebecabl](https://github.com/Rebecabl))
- **Ano Letivo:** 2026
