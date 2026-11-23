# 👨‍💻 Guia do Estudante — Manual Prático de Git e GitHub

**Disciplina:** Tópicos Especiais em Engenharia de Software I — Unidade II  
**Docente:** Profª Rebeca Barbosa Lourenço  
**Projeto:** TaskLab — Laboratório de Colaboração em Software  
**Repositório:** `https://github.com/Rebecabl/tasklab-git-github`  

---

## 🎯 Bem-vindo ao Laboratório Prático!

Nesta aula, você trabalhará como membro de uma equipe de desenvolvimento profissional. Você desenvolverá novas funcionalidades no sistema **TaskLab**, utilizando o fluxo colaborativo conhecido como **GitHub Flow**.

Siga rigorosamente os 14 passos abaixo para realizar suas atividades com sucesso!

---

## 📋 Os 14 Passos do Ciclo de Desenvolvimento

```text
[1. Aceitar Convite] ➔ [2. Clonar] ➔ [3. Abrir no VS Code] ➔ [4. Criar Branch] ➔
[5. Implementar] ➔ [6. git status / diff] ➔ [7. git commit] ➔ [8. git push] ➔
[9. Abrir PR] ➔ [10. Solicitar Review] ➔ [11. Ajustar Código] ➔ [12. Aprovação e Merge]
```

---

### Passo 1: Acessar sua Conta no GitHub
- Acesse [github.com](https://github.com) e faça login com seu usuário e senha.
- Caso ainda não tenha configurado seu Git localmente, abra o terminal e informe seu nome e e-mail:
  ```bash
  git config --global user.name "Seu Nome Completo"
  git config --global user.email "seu-email-cadastrado-no-github@exemplo.com"
  ```

---

### Passo 2: Aceitar o Convite de Colaboração da Professora
1. Acesse o sino de notificações no canto superior direito do GitHub (`github.com/notifications`) ou abra a caixa de entrada do seu e-mail.
2. Localize o convite enviado pela professora **Rebecabl**.
3. Clique em **"View invitation"** e depois no botão verde **"Accept invitation"**.
4. Agora você tem permissão oficial de colaboração no repositório!

---

### Passo 3: Clonar o Repositório no seu Computador
Abra o terminal (Git Bash, PowerShell ou Prompt de Comando) na pasta de sua preferência (ex: Documentos ou Projetos) e execute:

```bash
git clone https://github.com/Rebecabl/tasklab-git-github.git
```

- **Para que serve:** Baixa uma cópia integral do repositório para a sua máquina.
- **Resultado esperado:**
  ```text
  Cloning into 'tasklab-git-github'...
  remote: Enumerating objects: 45, done.
  Resolving deltas: 100% (20/20), done.
  ```

Entre na pasta do projeto:
```bash
cd tasklab-git-github
```

---

### Passo 4: Abrir o Projeto no VS Code
Com o terminal dentro da pasta `tasklab-git-github`, digite:
```bash
code .
```
- **Para que serve:** Inicia o Visual Studio Code diretamente na raiz do projeto.
- Dica: Você pode testar a aplicação abrindo o arquivo `index.html` em seu navegador ou clicando com o botão direito nele e selecionando *"Open with Live Server"*.

---

### Passo 5: Criar uma Branch Individual
> ⚠️ **REGRA OBRIGATÓRIA:** Nunca faça commits diretamente na branch `main`. Toda alteração deve ser desenvolvida em sua própria branch!

O nome da sua branch deve seguir o padrão:
`feature/equipeXX-seu-nome`

Exemplo para o aluno Pedro da Equipe 03:
```bash
# 1. Garanta que está na main atualizada
git checkout main
git pull origin main

# 2. Crie e alterne para a sua nova branch
git checkout -b feature/equipe03-pedro
```

- **Para que serve:** O parâmetro `-b` cria a ramificação isolada e muda para ela imediatamente.
- **Resultado esperado:**
  ```text
  Switched to a new branch 'feature/equipe03-pedro'
  ```

---

### Passo 6: Modificar os Arquivos da sua Atividade
- Consulte a sua tarefa no documento `docs/ATIVIDADES.md` ou na sua **Issue** no GitHub.
- Faça as alterações necessárias no código (ex: `js/tarefas.js`, `css/style.css`, etc.).
- Salve todos os arquivos modificados no VS Code (`Ctrl + S`).

---

### Passo 7: Consultar as Alterações Realizadas
Antes de salvar um commit, confira o que foi alterado:

```bash
# Verifica quais arquivos foram modificados
git status

# Exibe as linhas exatas adicionadas (+) e removidas (-)
git diff
```

- **Resultado esperado:** Os arquivos alterados aparecerão destacados em vermelho.

---

### Passo 8: Registrar o Commit Semântico
Adicione os arquivos para a área de preparação (*staging*) e faça o commit com uma mensagem clara, seguindo o padrão de **Conventional Commits**:

```bash
# 1. Adiciona os arquivos modificados
git add .

# 2. Registra o commit semântico
git commit -m "feat(equipe03): adiciona filtros de tarefas pendentes e concluidas"
```

#### Tipos de commits permitidos:
- `feat:` Nova funcionalidade.
- `fix:` Correção de bug.
- `style:` Ajustes visuais, CSS, espaçamento.
- `docs:` Alterações em documentação ou texto.
- `refactor:` Reorganização de código sem alterar o comportamento.

---

### Passo 9: Enviar a sua Branch para o GitHub
Envie sua ramificação local para o repositório remoto:

```bash
git push -u origin feature/equipe03-pedro
```

- **Para que serve:** O parâmetro `-u origin` conecta sua branch local à branch correspondente no GitHub.
- **Resultado esperado:**
  ```text
  Total 5 (delta 2), reused 0 (delta 0)
  To https://github.com/Rebecabl/tasklab-git-github.git
   * [new branch]      feature/equipe03-pedro -> feature/equipe03-pedro
  ```

---

### Passo 10: Abrir o Pull Request (PR)
1. Acesse o repositório no navegador: `https://github.com/Rebecabl/tasklab-git-github`.
2. Um aviso amarelo aparecerá no topo: clique no botão verde **"Compare & pull request"**.
3. Verifique se:
   - `base: main` (lado esquerdo)
   - `compare: feature/equipeXX-seu-nome` (lado direito)
4. O template de Pull Request será carregado automaticamente na descrição. Preencha todos os campos:
   - Título claro da alteração.
   - Equipe e seu nome.
   - Insira `Closes #NUMERO_DA_ISSUE` (ex: `Closes #7`). Isso fechará a tarefa automaticamente no GitHub Projects quando a professora aprovar!
   - Descreva como testar.
   - Marque os itens do checklist com `[x]`.
5. Clique no botão verde **"Create pull request"**.

---

### Passo 11: Solicitar Revisão de Código (Code Review)
1. Na barra lateral direita do seu Pull Request, localize a seção **Reviewers**.
2. Clique na engrenagem e selecione o usuário do GitHub de um colega da sua turma.
3. Avise o colega para que ele avalie seu código!

---

### Passo 12: Realizar a Revisão no PR de um Colega
Quando um colega solicitar sua revisão:
1. Abra o PR do colega.
2. Clique na aba **Files changed** (arquivos modificados).
3. Analise o código: está legível? Cumpre a issue? Não quebrou outros arquivos?
4. Clique no botão verde **Review changes** no canto superior direito:
   - Deixe um comentário construtivo elogiando os acertos ou apontando melhorias.
   - Selecione **Approve** (se estiver tudo certo) ou **Request changes** (se faltar algo).
   - Clique em **Submit review**.

---

### Passo 13: Corrigir Alterações (Se Solicitado)
Se o revisor ou a professora solicitar ajustes, você não precisa abrir outro PR! Basta:
1. Fazer as alterações solicitadas no VS Code na sua mesma branch.
2. Fazer novo commit e push:
   ```bash
   git add .
   git commit -m "fix(equipe03): corrige espacamento dos botoes de filtro"
   git push origin feature/equipe03-pedro
   ```
3. O seu Pull Request no GitHub será atualizado automaticamente!

---

### Passo 14: Verificação Final e Integração (Merge)
1. A professora Rebeca verificará os testes e o Code Review do colega.
2. A professora efetuará o **Merge pull request** na branch `main`.
3. Para atualizar seu computador local com a versão definitiva contendo o trabalho de todos:
   ```bash
   git checkout main
   git pull origin main
   ```
4. Parabéns! Sua funcionalidade agora faz parte oficial do sistema TaskLab! 🎉
