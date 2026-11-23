/**
 * TaskLab — Gerenciador de Tarefas
 * Regras de Negócio e Gerenciamento de Tarefas (tarefas.js)
 * 
 * Contém as funções responsáveis por criar, listar e alterar o status das tarefas.
 */

/**
 * Cria um novo objeto de tarefa e o persiste no armazenamento.
 * @param {string} titulo - Título da tarefa
 * @param {string} descricao - Descrição detalhada
 * @param {string} categoria - Categoria ou tag da tarefa
 * @returns {Object} Objeto da tarefa recém-criada
 */
function criarTarefa(titulo, descricao, categoria) {
    const tarefas = obterTarefas();
    
    const novaTarefa = {
        id: 'tarefa-' + Date.now(),
        titulo: titulo.trim(),
        descricao: descricao ? descricao.trim() : '',
        categoria: categoria || 'Geral',
        concluida: false,
        dataCriacao: new Date().toLocaleDateString('pt-BR')
    };

    tarefas.unshift(novaTarefa);
    salvarTarefas(tarefas);
    return novaTarefa;
}

/**
 * Alterna o estado de conclusão de uma tarefa (concluída <-> pendente).
 * @param {string} id - Identificador único da tarefa
 * @returns {boolean} Retorna true se a alteração foi realizada com sucesso
 */
function alternarStatusTarefa(id) {
    const tarefas = obterTarefas();
    const indice = tarefas.findIndex(tarefa => tarefa.id === id);

    if (indice !== -1) {
        tarefas[indice].concluida = !tarefas[indice].concluida;
        salvarTarefas(tarefas);
        return true;
    }

    return false;
}

/**
 * Retorna a lista atual de tarefas do armazenamento.
 * @returns {Array} Lista de tarefas
 */
function listarTarefas() {
    return obterTarefas();
}
