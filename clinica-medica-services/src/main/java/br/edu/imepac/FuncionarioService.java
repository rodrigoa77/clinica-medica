package br.edu.imepac;

import br.edu.imepac.implementacoes.FuncionarioRepositorio;

import java.util.List;

public class FuncionarioService {

    private FuncionarioRepositorio funcionarioRepositorio = new FuncionarioRepositorio();

    public int salvar(Funcionario funcionario) {
        return funcionarioRepositorio.salvar(funcionario);
    }

    public int atualizar(Funcionario funcionario) {
        return funcionarioRepositorio.atualizar(funcionario);
    }

    public Funcionario visualizar(int id) {
        return funcionarioRepositorio.obter(id);
    }

    public int excluir(int id) {
        return funcionarioRepositorio.excluir(id);
    }

    public int excluir(Funcionario funcionario) {
        return funcionarioRepositorio.excluir(funcionario);
    }

    public List<Funcionario> obterTodos() {
        return funcionarioRepositorio.obterTodos();
    }

    public Funcionario obter(int id) {
        return funcionarioRepositorio.obter(id);
    }
}
