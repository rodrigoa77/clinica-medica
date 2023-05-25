package br.edu.imepac.implementacoes;

import br.edu.imepac.Funcionario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class FuncionarioRepositorio extends RepositorioBase<Funcionario> {

    private Connection conexao;

    @Override
    public int salvar(Funcionario objeto) {
        String sql = "INSERT INTO funcionarios (nome, rg, orgao_emissor, cpf, endereco, complemento, bairro, cidade, estado, telefone, celular, ctps, pis, data_nascimento) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement stmt = conexao.prepareStatement(sql);
            stmt.setString(1, objeto.getNome());
            stmt.setString(2, objeto.getRg());
            stmt.setString(3, objeto.getOrgaoEmissor());
            stmt.setString(4, objeto.getCpf());
            stmt.setString(5, objeto.getEndereco());
            stmt.setString(6, objeto.getComplemento());
            stmt.setString(7, objeto.getBairro());
            stmt.setString(8, objeto.getCidade());
            stmt.setString(9, objeto.getEstado());
            stmt.setString(10, objeto.getTelefone());
            stmt.setString(11, objeto.getCelular());
            stmt.setString(12, objeto.getCtps());
            stmt.setString(13, objeto.getPis());
            stmt.setDate(14, java.sql.Date.valueOf(objeto.getDataNascimento()));
            return stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public int atualizar(Funcionario objeto) {
        return 0;
    }

    @Override
    public Funcionario obter(int id) {
        try {
            String sql = "SELECT * FROM funcionarios where id = ?";
            PreparedStatement stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, id);
            ResultSet funcionariosResultSet = stmt.executeQuery();
            if (funcionariosResultSet.next()) {
                return new Funcionario(
                        funcionariosResultSet.getInt("id"),
                        funcionariosResultSet.getString("nome"),
                        funcionariosResultSet.getString("rg"),
                        funcionariosResultSet.getString("orgao_emissor"),
                        funcionariosResultSet.getString("cpf"),
                        funcionariosResultSet.getString("endereco"),
                        funcionariosResultSet.getString("complemento"),
                        funcionariosResultSet.getString("bairro"),
                        funcionariosResultSet.getString("cidade"),
                        funcionariosResultSet.getString("estado"),
                        funcionariosResultSet.getString("telefone"),
                        funcionariosResultSet.getString("celular"),
                        funcionariosResultSet.getString("ctps"),
                        funcionariosResultSet.getString("pis"),
                        LocalDate.parse(funcionariosResultSet.getString("data_nascimento"))
                );
            }
            return null;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Funcionario> obterTodos() {
        try {
            String sql = "SELECT * FROM funcionarios";
            PreparedStatement stmt = conexao.prepareStatement(sql);
            List<Funcionario> funcionarios = new ArrayList<>();
            ResultSet funcionariosResultSet = stmt.executeQuery();
            while (funcionariosResultSet.next()) {
                funcionarios.add(new Funcionario(
                        funcionariosResultSet.getInt("id"),
                        funcionariosResultSet.getString("nome"),
                        funcionariosResultSet.getString("rg"),
                        funcionariosResultSet.getString("orgao_emissor"),
                        funcionariosResultSet.getString("cpf"),
                        funcionariosResultSet.getString("endereco"),
                        funcionariosResultSet.getString("complemento"),
                        funcionariosResultSet.getString("bairro"),
                        funcionariosResultSet.getString("cidade"),
                        funcionariosResultSet.getString("estado"),
                        funcionariosResultSet.getString("telefone"),
                        funcionariosResultSet.getString("celular"),
                        funcionariosResultSet.getString("ctps"),
                        funcionariosResultSet.getString("pis"),
                        LocalDate.parse(funcionariosResultSet.getString("data_nascimento"))
                ));
            }
            return funcionarios;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public int excluir(int id) {
        String sql = "DELETE FROM funcionarios where id = ?";
        try {
            PreparedStatement stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, id);
            return stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public int excluir(Funcionario objeto) {
        return 0;
    }

    @Override
    public void setConexao(Connection conexao) {
        this.conexao = conexao;
    }
}
