<!--
=============================================================================
  TaskLab — Template de Pull Request (PR)
  Preencha as informações abaixo com atenção antes de solicitar revisão.
=============================================================================
-->

## 📌 Identificação

- **Título da Alteração:** [Ex: feat(equipe02): validação de título obrigatório no formulário]
- **Equipe Responsável:** [Equipe 01 | Equipe 02 | Equipe 03 | Equipe 04 | Equipe 05]
- **Nome do Estudante:** [Seu Nome Completo]
- **Issue Relacionada:** Closes #[Número da Issue, ex: Closes #4]

---

## 📝 Descrição da Funcionalidade

Descreva de forma clara e objetiva o que foi implementado, alterado ou corrigido nesta branch:
> *Exemplo: Foi implementada a validação do campo de título no formulário de tarefas para impedir o cadastro de tarefas em branco ou apenas com espaços vazios, exibindo uma mensagem de aviso ao usuário.*

---

## 📂 Arquivos Modificados

Liste os arquivos alterados neste Pull Request:
- `js/tarefas.js`
- `css/style.css`

---

## 🧪 Como Testar

Passo a passo para que o colega revisor e a professora possam reproduzir e validar o funcionamento:
1. Abra o arquivo `index.html` no navegador (ou utilize a extensão Live Server).
2. Tente submeter o formulário de cadastro com o campo de título vazio.
3. Observe se a mensagem de validação é exibida adequadamente.
4. Digite um título válido e confirme se a tarefa é cadastrada com sucesso.

---

## ✅ Checklist de Verificação

Antes de submeter o PR, marque as opções abaixo:

- [ ] Trabalhei em uma branch própria criada a partir da `main` (`feature/equipeXX-meu-nome`).
- [ ] Não realizei commits diretamente na branch `main`.
- [ ] Segui o padrão de Conventional Commits (ex: `feat:`, `fix:`, `docs:`, `style:`).
- [ ] O código foi testado no navegador e não apresenta erros no console (`F12`).
- [ ] Não alterei arquivos fora do escopo da minha equipe/atividade.
- [ ] Adicionei o link da issue com `Closes #numero` para fechamento automático.
- [ ] Solicitei a revisão de um colega de turma.

---

## 👥 Registro de Code Review (Preenchido pelo Colega Revisor)

- **Revisor:** @[usuario_github_do_revisor]
- **Resultado da Análise:** [Aprovado / Solicitação de Alterações]
- **Comentários do Revisor:** [Descreva brevemente o que foi analisado no código e se os testes funcionaram]

---

### 📖 Exemplo Preenchido (Referência Didática)
<details>
<summary>Clique para ver um exemplo de PR preenchido</summary>

```markdown
## 📌 Identificação
- **Título da Alteração:** feat(equipe03): adiciona filtro de tarefas por status
- **Equipe Responsável:** Equipe 03 — Organização e Filtros
- **Nome do Estudante:** Ana Beatriz Silva
- **Issue Relacionada:** Closes #8

## 📝 Descrição da Funcionalidade
Adicionados botões de filtro no topo da lista de tarefas para permitir a visualização de 'Todas', 'Pendentes' e 'Concluídas'.

## 📂 Arquivos Modificados
- `index.html` (inserção dos botões de filtro)
- `js/app.js` (gerenciamento do estado ativo do filtro)
- `css/style.css` (estilos visuais dos botões de filtro)

## 🧪 Como Testar
1. Abra `index.html`.
2. Cadastre 2 tarefas e marque 1 como concluída.
3. Clique no filtro "Pendentes": apenas a tarefa não concluída deve aparecer.
4. Clique no filtro "Concluídas": apenas a tarefa marcada deve aparecer.
5. Clique em "Todas": ambas devem aparecer.

## ✅ Checklist de Verificação
- [x] Trabalhei em branch própria (`feature/equipe03-ana-filtro`).
- [x] Mensagens de commit padronizadas.
- [x] Testado no Chrome e Firefox sem erros no console.
- [x] Closes #8 incluído.
```
</details>
