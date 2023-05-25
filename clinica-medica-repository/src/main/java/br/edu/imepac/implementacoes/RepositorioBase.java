package br.edu.imepac.implementacoes;

import br.edu.imepac.interfaces.IRepositorio;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public abstract class RepositorioBase<T> implements IRepositorio<T> {

    private String url;
    private String user;
    private String password;
    private String classForName;
    private Connection conexao;

    public RepositorioBase() {
        carregarPropriedadesConexao();
        conexao = criarConexao();
        setConexao(conexao);
    }

    private Connection criarConexao() {
        try {
            Class.forName(classForName);
            return DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
    }

    private void carregarPropriedadesConexao() {
        try {
            ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
            InputStream input = classLoader.getResourceAsStream("application.properties");
            Properties properties = new Properties();
            properties.load(input);

            this.url = properties.getProperty("database.url");
            this.user = properties.getProperty("database.user");
            this.password = properties.getProperty("database.password");
            this.classForName = properties.getProperty("database.class-for-name");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
