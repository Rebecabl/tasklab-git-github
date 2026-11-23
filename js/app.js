/**
 * TaskLab — Gerenciador de Tarefas
 * Controlador da Interface do Usuário (app.js)
 * 
 * Gerencia a manipulação do DOM, eventos de formulário e renderização dos elementos.
 */

document.addEventListener('DOMContentLoaded', () => {
    // Inicializa o LocalStorage com dados didáticos caso esteja vazio
    inicializarStorage();

    // Elementos principais do DOM
    const formTarefa = document.getElementById('form-tarefa');
    const inputTitulo = document.getElementById('titulo-tarefa');
    const inputDescricao = document.getElementById('descricao-tarefa');
    const selectCategoria = document.getElementById('categoria-tarefa');
    const containerLista = document.getElementById('lista-tarefas');
    const estadoVazio = document.getElementById('estado-vazio');

    /**
     * Renderiza a lista de tarefas na tela.
     */
    function renderizarLista() {
        const tarefas = listarTarefas();

        // Controla a exibição da mensagem de lista vazia
        if (!tarefas || tarefas.length === 0) {
            containerLista.innerHTML = '';
            if (estadoVazio) {
                estadoVazio.style.display = 'block';
            }
            return;
        }

        if (estadoVazio) {
            estadoVazio.style.display = 'none';
        }

        containerLista.innerHTML = '';

        tarefas.forEach(tarefa => {
            const card = document.createElement('article');
            card.className = `task-item ${tarefa.concluida ? 'completed' : ''}`;
            card.id = tarefa.id;

            const textoBotaoStatus = tarefa.concluida ? '✓ Concluída' : 'Marcar como Concluída';

            card.innerHTML = `
                <div class="task-main">
                    <div class="task-header-row">
                        <span class="task-badge">${escapeHtml(tarefa.categoria)}</span>
                        <h3 class="task-title">${escapeHtml(tarefa.titulo)}</h3>
                    </div>
                    ${tarefa.descricao ? `<p class="task-description">${escapeHtml(tarefa.descricao)}</p>` : ''}
                    <div class="task-footer-info">
                        <span>📅 Criada em: ${escapeHtml(tarefa.dataCriacao)}</span>
                    </div>
                </div>
                <div class="task-actions">
                    <button class="btn-toggle-status" data-id="${tarefa.id}" title="Alternar status de conclusão">
                        ${textoBotaoStatus}
                    </button>
                </div>
            `;

            containerLista.appendChild(card);
        });

        // Adiciona listeners para os botões de alternância de status
        document.querySelectorAll('.btn-toggle-status').forEach(botao => {
            botao.addEventListener('click', (evento) => {
                const idTarefa = evento.currentTarget.getAttribute('data-id');
                alternarStatusTarefa(idTarefa);
                renderizarLista();
            });
        });
    }

    /**
     * Trata o envio do formulário de cadastro de tarefas.
     */
    if (formTarefa) {
        formTarefa.addEventListener('submit', (evento) => {
            evento.preventDefault();

            const titulo = inputTitulo.value;
            const descricao = inputDescricao.value;
            const categoria = selectCategoria.value;

            // Criação da tarefa na versão inicial
            criarTarefa(titulo, descricao, categoria);

            // Limpa o formulário
            formTarefa.reset();

            // Atualiza a visualização
            renderizarLista();
        });
    }

    /**
     * Função auxiliar para escapar caracteres HTML prevenindo injeções de script (XSS).
     * @param {string} str - Texto a ser escapado
     * @returns {string} Texto seguro
     */
    function escapeHtml(str) {
        if (!str) return '';
        return String(str)
            .replace(/&/g, '&amp;')
            .replace(/</g, '&lt;')
            .replace(/>/g, '&gt;')
            .replace(/"/g, '&quot;')
            .replace(/'/g, '&#039;');
    }

    // Primeira renderização ao carregar a página
    renderizarLista();
});
