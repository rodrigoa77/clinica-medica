package br.edu.imepac.interfaces;

import java.sql.Connection;
import java.util.List;

public interface IRepositorio<T> {
    public int salvar(T objeto);

    public int atualizar(T objeto);

    public T obter(int id);

    public List<T> obterTodos();

    public int excluir(int id);

    public int excluir(T objeto);

    void setConexao(Connection conexao);
}
