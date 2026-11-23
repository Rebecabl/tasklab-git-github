/**
 * TaskLab — Gerenciador de Tarefas
 * Módulo de Persistência no LocalStorage (storage.js)
 * 
 * Responsável por ler e gravar os dados de tarefas no navegador do usuário.
 */

const STORAGE_KEY = 'tasklab_tarefas';

/**
 * Obtém a lista de tarefas armazenadas no LocalStorage.
 * @returns {Array} Lista de objetos de tarefas.
 */
function obterTarefas() {
    try {
        const dados = localStorage.getItem(STORAGE_KEY);
        return dados ? JSON.parse(dados) : [];
    } catch (erro) {
        console.error('Erro ao ler dados do LocalStorage:', erro);
        return [];
    }
}

/**
 * Salva a lista de tarefas no LocalStorage.
 * @param {Array} tarefas - Lista atualizada de tarefas.
 */
function salvarTarefas(tarefas) {
    try {
        localStorage.setItem(STORAGE_KEY, JSON.stringify(tarefas));
    } catch (erro) {
        console.error('Erro ao salvar tarefas no LocalStorage:', erro);
    }
}

/**
 * Inicializa o armazenamento com dados padrão demonstrativos, caso esteja vazio.
 */
function inicializarStorage() {
    const tarefasExistentes = obterTarefas();
    if (tarefasExistentes.length === 0) {
        const tarefasIniciais = [
            {
                id: 'tarefa-1',
                titulo: 'Configurar ambiente de desenvolvimento',
                descricao: 'Instalar o Git, configurar usuário e e-mail no terminal e preparar o VS Code.',
                categoria: 'Estudos',
                concluida: true,
                dataCriacao: new Date().toLocaleDateString('pt-BR')
            },
            {
                id: 'tarefa-2',
                titulo: 'Clonar repositório TaskLab e criar branch',
                descricao: 'Clonar o repositório centralizado da Profª Rebeca e criar a branch individual da equipe.',
                categoria: 'Geral',
                concluida: false,
                dataCriacao: new Date().toLocaleDateString('pt-BR')
            }
        ];
        salvarTarefas(tarefasIniciais);
    }
}
