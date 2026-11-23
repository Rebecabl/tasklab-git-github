# 📘 Guia Completo da Professora — Condução do Laboratório Git & GitHub

**Disciplina:** Tópicos Especiais em Engenharia de Software I — Unidade II  
**Docente Responsável:** Profª Rebeca Barbosa Lourenço  
**Projeto:** TaskLab — Laboratório de Colaboração em Software  
**Repositório Planejado:** `https://github.com/Rebecabl/tasklab-git-github`  

---

## 🌟 Visão Geral e Boas-Vindas

Prezada Professora Rebeca, este documento foi estruturado para ser seu manual definitivo na preparação e condução da aula prática de Git e GitHub. Ele foi planejado para fornecer segurança total, apresentando cada comando com sua explicação, os diálogos recomendados para a explicação aos estudantes, os pontos exatos onde clicar na interface web do GitHub e o tratamento dos imprevistos técnicos mais frequentes em sala de aula.

O foco da prática é o **aprendizado de controle de versão e trabalho em equipe**. O software (*TaskLab*) foi projetado com tecnologias simples (HTML5, CSS3 e JavaScript puro) para que nenhum aluno perca tempo com instalação de dependências pesadas, compiladores ou bancos de dados.

---

## 🛠️ ETAPA 1: Preparação Antes da Aula (Checklist Prévio)

Execute estes passos em seu computador com antecedência para deixar o ambiente da turma 100% pronto.

### 1.1 Verificar e Configurar o Git no seu Computador
1. Abra o terminal (PowerShell no Windows ou Terminal no Linux/macOS).
2. Verifique se o Git está instalado executando:
   ```bash
   git --version
   ```
   *Resultado esperado:* Uma mensagem indicando a versão, por exemplo: `git version 2.40.0.windows.1`.
   *(Se o comando não for reconhecido, baixe e instale a versão oficial em [git-scm.com](https://git-scm.com/)).*

3. Configure seu nome e e-mail no Git (use o mesmo e-mail cadastrado na sua conta do GitHub):
   ```bash
   git config --global user.name "Rebeca Barbosa Lourenco"
   git config --global user.email "seu-email@exemplo.com"
   ```
4. Confirme as configurações:
   ```bash
   git config --global --list
   ```

---

### 1.2 Criar o Repositório no GitHub
1. Acesse sua conta no GitHub: `https://github.com/Rebecabl`.
2. No canto superior direito, clique no botão verde **"New"** (ou no ícone `+` > **New repository**).
3. Preencha os campos exatamente assim:
   - **Repository name:** `tasklab-git-github`
   - **Description:** `Projeto educacional desenvolvido para a disciplina Tópicos Especiais em Engenharia de Software I, destinado à aprendizagem prática de Git, GitHub, branches, commits, Pull Requests, revisão de código e colaboração em equipe.`
   - **Visibility:** Selecione **Public** (Público).
   - **Initialize this repository with:** **NÃO marque** nenhuma caixa (*Add a README file*, *.gitignore* ou *license*), pois os arquivos já estão prontos na pasta local do projeto.
4. Clique em **"Create repository"**.

---

### 1.3 Publicar o Projeto Inicial a partir do Computador Local
Abra o terminal na pasta onde o projeto `tasklab-git-github` foi gerado e execute a sequência abaixo linha por linha:

```bash
# 1. Entre na pasta do projeto
cd "c:\Users\REBECA\Desktop\Capacita IREDE projetos\TaskManager\tasklab-git-github"

# 2. Inicialize o repositório Git local
git init

# 3. Defina a branch principal como 'main'
git branch -M main

# 4. Adicione todos os arquivos ao controle de versão
git add .

# 5. Crie o primeiro commit estruturado
git commit -m "feat: estrutura inicial do projeto educacional TaskLab"

# 6. Conecte o repositório local ao seu GitHub remoto
git remote add origin https://github.com/Rebecabl/tasklab-git-github.git

# 7. Envie os arquivos para a branch principal no GitHub
git push -u origin main
```

> **Verificação:** Recarregue a página `https://github.com/Rebecabl/tasklab-git-github` no navegador. Todos os arquivos e pastas (`index.html`, `css/`, `js/`, `docs/`, `.github/`, etc.) devem estar visíveis!

---

### 1.4 Configurar a Proteção da Branch `main` (Evitar Commits Diretos)
Para garantir que os alunos sigam o fluxo profissional (GitHub Flow) e não façam alterações diretas na versão de produção:

1. No repositório no GitHub, clique na aba **Settings** (Engrenagem).
2. No menu lateral esquerdo, na seção *Code and automation*, clique em **Branches**.
3. Em *Branch protection rules*, clique no botão **Add branch ruleset** ou **Add branch protection rule** (dependendo da versão da interface do GitHub):
   - **Branch name pattern:** Digite `main`.
4. Marque as seguintes caixas de proteção:
   - ✅ **Require a pull request before merging:** Obriga que toda alteração entre por Pull Request.
   - ✅ **Require approvals:** Defina para `1` (exige que pelo menos outro colega aprove a alteração).
   - ✅ **Dismiss stale pull request approvals when new commits are pushed:** Anula aprovações antigas se novos commits forem adicionados.
5. Role até o final da página e clique no botão verde **Create** (ou **Save changes**).

> **Nota:** Em contas gratuitas do GitHub, regras estritas de proteção de branch funcionam em repositórios **Públicos** (que é o caso do `tasklab-git-github`).

---

### 1.5 Convidar os Alunos como Colaboradores
1. No repositório, clique em **Settings** > **Collaborators** (menu esquerdo).
2. Clique no botão verde **Add people**.
3. Digite o nome de usuário do GitHub ou o e-mail de cada aluno da turma.
4. Clique em **Add [nome] to this repository**.
5. *Aviso importante aos alunos:* Cada aluno receberá um e-mail ou uma notificação no GitHub (`github.com/notifications`) e deverá clicar em **"Accept invitation"** antes da prática.

---

### 1.6 Preparar as Issues e o GitHub Projects
1. Acesse o documento `docs/ISSUES_CATALOGO.md` ou execute o script `scripts/criar_issues_tasklab.ps1` caso possua o GitHub CLI autenticado.
2. Crie o quadro no GitHub Projects seguindo as instruções detalhadas em `docs/GITHUB_PROJECTS.md`.

---

## 🎤 ETAPA 2: Roteiro de Demonstração em Sala de Aula (Minuto a Minuto)

Este roteiro contém o que falar, o que projetar na tela e os comandos a serem demonstrados ao vivo.

---

### Bloco 1: Abertura e Apresentação do TaskLab (15 min)

#### 🗣️ O que falar:
> *"Olá, pessoal! Bem-vindos à nossa aula prática de Controle de Versão e Colaboração com Git e GitHub. No mercado de trabalho e em projetos reais, ninguém programa sozinho no mesmo arquivo ao mesmo tempo sem regras. Hoje vocês não apenas aprenderão o que é Git, mas viverão a rotina de uma equipe de desenvolvimento profissional.*  
> *Nós utilizaremos o TaskLab, um gerenciador de tarefas que construí para a disciplina. Cada equipe receberá um conjunto de tarefas reais: alguns melhorarão a interface, outros criarão validações, filtros, funcionalidades de busca e acessibilidade.*  
> *A regra de ouro de hoje é: a branch 'main' é sagrada. Ninguém envia código direto para ela. Todo o trabalho será feito em branches isoladas, revisado por um colega e integrado via Pull Request."*

#### 🖥️ O que mostrar na tela:
1. Abra a página `index.html` do TaskLab no navegador. Mostre o cadastro de uma tarefa e o botão de marcar como concluída.
2. Mostre o repositório oficial no GitHub: `https://github.com/Rebecabl/tasklab-git-github`.
3. Mostre a aba **Network / Insights** ou o gráfico de branches para ilustrar a ideia de linhas paralelas de desenvolvimento.

---

### Bloco 2: Demonstração ao Vivo do Ciclo Completo (20 min)

Demonstre projetando seu terminal e navegador os 6 passos que todos os alunos farão:

#### 1. Clonar o repositório:
```bash
git clone https://github.com/Rebecabl/tasklab-git-github.git
cd tasklab-git-github
```
*Explique:* O clone cria uma cópia idêntica do repositório remoto no disco local do computador do estudante.

#### 2. Criar uma branch de trabalho:
```bash
git checkout -b feature/exemplo-professora
```
*Explique:* O parâmetro `-b` cria a ramificação e já muda para ela. Mostre que `git branch` agora exibe `* feature/exemplo-professora` com um asterisco verde.

#### 3. Fazer uma alteração e inspecionar o status:
- Abra o arquivo `README.md` ou adicione uma linha simples.
- Execute:
  ```bash
  git status
  ```
*Mostre aos alunos:* O arquivo aparece em vermelho sob a seção `Changes not staged for commit`.

#### 4. Adicionar à área de preparação (staging) e commitar com mensagem semântica:
```bash
git add README.md
git status
git commit -m "docs: adiciona nota didatica de demonstracao da aula"
```
*Mostre aos alunos:* O arquivo ficou verde após o `git add` e o commit gravou um ponto histórico com identificador único (hash).

#### 5. Enviar a branch para o GitHub:
```bash
git push -u origin feature/exemplo-professora
```
*Mostre aos alunos:* O GitHub exibiu uma mensagem no terminal com um link direto para abrir um Pull Request!

#### 6. Abrir o Pull Request no GitHub:
- Vá ao navegador em `https://github.com/Rebecabl/tasklab-git-github`.
- Mostre o botão amarelo **"Compare & pull request"**.
- Mostre o preenchimento do template com `Closes #1`, descrição, testes e checklist.
- Mostre a aba **Files changed** destacando as linhas em verde (inserções) e vermelho (remoções).

---

### Bloco 3: Demonstração de Code Review (Revisão por Pares) (10 min)

#### 🗣️ O que falar:
> *"O Code Review é o coração da Engenharia de Software colaborativa. Ele serve para encontrar falhas antes que cheguem aos usuários, compartilhar conhecimento e garantir que o código segue o padrão do time."*

#### 🖥️ O que mostrar na tela:
1. Abra um Pull Request aberto por um aluno voluntário.
2. Clique na aba **Files changed**.
3. Passe o mouse sobre uma linha de código, clique no botão azul `+` e adicione um comentário: *"Excelente implementação! Verifique se os espaçamentos respeitam o responsive.css."*
4. Clique em **Review changes** (canto superior direito) e mostre as três opções:
   - **Comment:** Apenas tira dúvidas sem bloquear.
   - **Approve:** Aprova a integração.
   - **Request changes:** Solicita correções antes de autorizar o merge.
5. Selecione **Approve** e envie a revisão.

---

### Bloco 4: A Atividade Prática de Conflito de Merge (20 min)

Convide dois alunos para a frente da sala (ou escolha dois voluntários de uma mesma equipe) para a simulação controlada no arquivo `docs/MENSAGENS_TURMA.md`:
1. **Aluno A** e **Aluno B** criam branches diferentes a partir da `main` atualizada.
2. Ambos editam a **Linha 8** de `docs/MENSAGENS_TURMA.md` com frases diferentes.
3. Ambos fazem `git add`, `git commit` e `git push`.
4. Ambos abrem Pull Requests simultâneos para a `main`.
5. A professora aprova e faz o merge do PR do **Aluno A**.
6. A professora abre o PR do **Aluno B**: a tela do GitHub mostrará um alerta cinza: *"This branch has conflicts that must be resolved"*.
7. Projetando a tela do Aluno B, execute os comandos de resolução local:
   ```bash
   git checkout main
   git pull origin main
   git checkout feature/aluno-b
   git merge main
   ```
8. Abra o arquivo no VS Code e mostre os marcadores `<<<<<<< HEAD`, `=======` e `>>>>>>> main`.
9. Explique como combinar as frases, remover os marcadores, salvar, commitar e enviar o push de atualização.
10. O PR no GitHub atualizará automaticamente e ficará verde para merge!

---

## 🔍 ETAPA 3: Monitoramento Durante a Prática dos Alunos

Enquanto as 5 equipes trabalham simultaneamente, acompanhe os seguintes painéis no GitHub:

| O que monitorar | Onde clicar no GitHub | O que verificar |
| :--- | :--- | :--- |
| **Branches criadas** | Aba **Code** > link **branches** (`/branches`) | Verificar se os alunos usaram o padrão `feature/equipeXX-nome`. |
| **Commits** | Aba **Code** > link **commits** (`/commits/main` ou da branch) | Verificar se as mensagens seguem Conventional Commits (`feat:`, `fix:`, etc.). |
| **Pull Requests** | Aba **Pull requests** (`/pulls`) | Verificar se o template foi preenchido e se há revisões registradas. |
| **Code Reviews** | Dentro de cada PR > aba **Conversation** | Confirmar se o colega revisor aprovou antes de você autorizar o merge. |
| **GitHub Projects** | Aba **Projects** > *TaskLab — Atividades Práticas* | Observar a transição dos cartões de *A fazer* para *Em andamento* e *Concluído*. |

---

## 🚨 ETAPA 4: Guia de Resolução de Problemas Comuns (Troubleshooting)

### 1. "git : O termo 'git' não é reconhecido como nome de cmdlet..."
- **Causa:** O Git não está instalado ou a variável de ambiente PATH não foi atualizada.
- **Solução:** Feche e reabra o terminal. Se persistir, reinstale o Git marcando a opção *"Add Git to PATH"*.

### 2. Falha de autenticação ao fazer push (`Authentication failed` ou `Support for password authentication was removed`)
- **Causa:** O GitHub não aceita mais senhas de conta no terminal; exige Personal Access Token (PAT) ou Git Credential Manager.
- **Solução:**
  1. No GitHub, o aluno clica na foto de perfil > **Settings** > **Developer settings** > **Personal access tokens** > **Tokens (classic)**.
  2. Clica em **Generate new token (classic)**, marca o escopo `repo`, copia o token gerado.
  3. No terminal, quando pedir a senha, o aluno cola o token (ou utiliza o GitHub CLI com `gh auth login`).

### 3. "fatal: remote origin already exists."
- **Causa:** O aluno tentou adicionar a URL remota que já havia sido configurada.
- **Solução:**
  ```bash
  git remote set-url origin https://github.com/Rebecabl/tasklab-git-github.git
  ```

### 4. "error: failed to push some refs to '...'" (Push Rejeitado)
- **Causa:** A branch remota possui commits que o aluno ainda não baixou.
- **Solução:**
  ```bash
  git pull origin nome-da-branch --rebase
  git push origin nome-da-branch
  ```

### 5. Aluno fez commit diretamente na `main` e o push foi bloqueado pela proteção de branch
- **Causa:** O aluno esqueceu de criar sua branch individual.
- **Solução sem perder o trabalho:**
  ```bash
  # Cria a branch correta contendo as alterações que ele fez
  git checkout -b feature/equipe02-nome-do-aluno
  # Envia a nova branch
  git push -u origin feature/equipe02-nome-do-aluno
  # Volta para a main e reseta ela para o estado do repositório remoto
  git checkout main
  git reset --hard origin/main
  ```

### 6. Pull Request diz "There isn’t anything to compare"
- **Causa:** O aluno tentou comparar a `main` com a própria `main` ou não enviou commits na sua branch.
- **Solução:** Verifique se o aluno selecionou `base: main` <- `compare: feature/nome-da-branch` na tela de abertura do PR.

---

Com este guia em mãos, você terá controle absoluto sobre o ritmo da aula, garantindo uma experiência transformadora e profissional para seus estudantes!
