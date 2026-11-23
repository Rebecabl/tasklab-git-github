# 💥 Guia Prático de Resolução de Conflitos de Merge (Merge Conflicts)

**Disciplina:** Tópicos Especiais em Engenharia de Software I — Unidade II  
**Docente:** Profª Rebeca Barbosa Lourenço  
**Projeto:** TaskLab — Laboratório de Colaboração em Software  
**Arquivo Utilizado na Simulação:** `docs/MENSAGENS_TURMA.md`  

---

## 🧐 O que é um Conflito de Merge e Por que ele Acontece?

Em projetos de software colaborativos, múltiplos desenvolvedores trabalham simultaneamente em branches separadas. 

O Git consegue integrar automaticamente a imensa maioria das alterações quando elas ocorrem em arquivos diferentes ou em linhas distantes do mesmo arquivo.

Porém, um **conflito de merge** ocorre quando:
1. Dois desenvolvedores alteram **as mesmas linhas de código** em branches diferentes a partir de um mesmo ponto de partida.
2. Um desenvolvedor apaga um arquivo que outro desenvolvedor acabou de modificar.

Quando a primeira branch é integrada à `main`, o histórico remoto avança. Quando a segunda branch tenta ser integrada, o Git não consegue adivinhar qual das duas versões é a correta. Em vez de escolher uma versão e arriscar apagar o código de alguém, o Git **pausa o processo de merge** e transfere a decisão para os desenvolvedores.

---

## 🔬 A Anatomia de um Conflito (Decodificando os Marcadores)

Quando um conflito ocorre, o Git insere marcadores visuais diretamente no arquivo afetado:

```text
<<<<<<< HEAD
Esta é a versão que já está na branch atual (ex: na branch main integrada pelo Estudante A).
=======
Esta é a versão que veio da branch que está tentando ser integrada (ex: desenvolvida pelo Estudante B).
>>>>>>> feature/equipe01-estudante-b
```

### Significado de cada marcador:
- `<<<<<<< HEAD`: Indica o início do trecho conflitante presente na branch atual de destino (onde você está).
- `=======`: Divisor central. Separa a versão da branch de destino da versão da branch de origem.
- `>>>>>>> nome-da-branch`: Indica o final do trecho conflitante e o nome da branch de onde veio a alteração concorrente.

---

## 🚀 Roteiro Passo a Passo da Dinâmica em Sala de Aula

Esta dinâmica será realizada com dois estudantes voluntários: **Estudante A** e **Estudante B**.

---

### Passo 1: Preparação Inicial (Ambos os estudantes)
Ambos abrem seus terminais na pasta do projeto e garantem que estão com a branch `main` limpa e atualizada:

```bash
git checkout main
git pull origin main
```

---

### Passo 2: Criação das Branches Concorrentes
- **Estudante A** executa:
  ```bash
  git checkout -b feature/conflito-estudante-a
  ```

- **Estudante B** executa:
  ```bash
  git checkout -b feature/conflito-estudante-b
  ```

---

### Passo 3: Modificação Simultânea na Mesma Linha
Ambos abrem o arquivo `docs/MENSAGENS_TURMA.md` no VS Code.

Localizem a **Linha 8**, que originalmente contém:
> `Versão inicial definida pelo repositório base da disciplina.`

- **O Estudante A substitui a Linha 8 por:**
  ```text
  [ESTUDANTE A] O TaskLab é uma ferramenta colaborativa focada em usabilidade e boas práticas de Engenharia de Software.
  ```

- **O Estudante B substitui a Linha 8 por:**
  ```text
  [ESTUDANTE B] O TaskLab prioriza o controle de versão profissional com Git Flow e Conventional Commits na Unidade II.
  ```

Ambos salvam o arquivo (`Ctrl + S`).

---

### Passo 4: Commit e Push de Ambos os Estudantes
- **Estudante A:**
  ```bash
  git add docs/MENSAGENS_TURMA.md
  git commit -m "docs: adiciona mensagem institucional da equipe A"
  git push -u origin feature/conflito-estudante-a
  ```

- **Estudante B:**
  ```bash
  git add docs/MENSAGENS_TURMA.md
  git commit -m "docs: adiciona mensagem tecnica da equipe B"
  git push -u origin feature/conflito-estudante-b
  ```

---

### Passo 5: Abertura dos Pull Requests
1. O Estudante A abre um Pull Request no GitHub da sua branch para a `main`.
2. O Estudante B abre um Pull Request no GitHub da sua branch para a `main`.

Ambos os PRs aparecem com o botão verde indicando que podem ser integrados normalmente.

---

### Passo 6: Integração do Primeiro PR (Estudante A)
A professora Rebeca revisa o PR do **Estudante A** e clica em **"Merge pull request"** e depois em **"Confirm merge"**.

A alteração do Estudante A agora faz parte da `main` no GitHub!

---

### Passo 7: O Conflito Aparece no Segundo PR (Estudante B)! ⚠️
A professora e os alunos abrem a tela do Pull Request do **Estudante B**.

Imediatamente, o GitHub exibe uma caixa cinza com um símbolo de alerta:
> *"This branch has conflicts that must be resolved. Use the command line to resolve conflicts before merging."*

O botão verde de merge foi desabilitado pelo GitHub porque as linhas de código se tornaram incompatíveis.

---

## 🛠️ Passo 8: Como o Estudante B Resolve o Conflito Localmente

O Estudante B resolve o conflito em seu computador seguindo os comandos abaixo no terminal:

```bash
# 1. Garanta que está na branch main local e baixe a atualização da turma
git checkout main
git pull origin main

# 2. Retorne para a sua branch de trabalho
git checkout feature/conflito-estudante-b

# 3. Traga a branch main atualizada para dentro da sua branch
git merge main
```

O Git emitirá a seguinte mensagem no terminal:
```text
Auto-merging docs/MENSAGENS_TURMA.md
CONFLICT (content): Merge conflict in docs/MENSAGENS_TURMA.md
Automatic merge failed; fix conflicts and then commit the result.
```

---

## ✏️ Passo 9: Edição Manual no VS Code

Abra o arquivo `docs/MENSAGENS_TURMA.md` no VS Code. O arquivo estará assim:

```markdown
<<<<<<< HEAD
[ESTUDANTE B] O TaskLab prioriza o controle de versão profissional com Git Flow e Conventional Commits na Unidade II.
=======
[ESTUDANTE A] O TaskLab é uma ferramenta colaborativa focada em usabilidade e boas práticas de Engenharia de Software.
>>>>>>> main
```

### O que fazer para resolver:
1. Converse com seu colega ou equipe para decidir se vocês manterão o texto A, o texto B ou uma combinação harmoniosa de ambos.
2. **Apague manualmente todas as linhas de marcadores:**
   - Remova `<<<<<<< HEAD`
   - Remova `=======`
   - Remova `>>>>>>> main`
3. Combine as frases para obter um resultado final consistente, por exemplo:
   ```markdown
   [VERSÃO CONCILIADA] O TaskLab é uma ferramenta colaborativa focada em usabilidade e boas práticas de Engenharia de Software, priorizando o controle de versão profissional com Git Flow e Conventional Commits na Unidade II.
   ```
4. Salve o arquivo (`Ctrl + S`).

---

## 🏁 Passo 10: Concluir o Merge e Atualizar o Pull Request

No terminal do Estudante B, execute:

```bash
# 1. Verifique que o arquivo foi modificado e está pronto para ser resolvido
git status

# 2. Adicione o arquivo resolvido à área de preparação (staging)
git add docs/MENSAGENS_TURMA.md

# 3. Finalize o commit de resolução do conflito
git commit -m "fix: resolve conflito de merge conciliando mensagens das equipes A e B"

# 4. Envie a resolução para o GitHub
git push origin feature/conflito-estudante-b
```

---

## 🏆 Resultado Final no GitHub!

1. Volte ao navegador e recarregue a página do Pull Request do **Estudante B**.
2. O alerta de conflito desapareceu!
3. Uma mensagem verde exibe: *"This branch has no conflicts with the base branch"*.
4. A professora Rebeca pode aprovar e realizar o merge com total segurança.

Ambas as contribuições foram preservadas com respeito ao histórico e à qualidade do software! 🎉
