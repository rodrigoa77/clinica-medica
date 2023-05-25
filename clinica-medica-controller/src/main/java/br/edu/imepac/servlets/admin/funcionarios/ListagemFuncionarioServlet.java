package br.edu.imepac.servlets.admin.funcionarios;

import br.edu.imepac.Funcionario;
import br.edu.imepac.FuncionarioService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ListagemFuncionarioServlet extends HttpServlet {

    private FuncionarioService funcionarioService;

    public ListagemFuncionarioServlet() {
        this.funcionarioService = new FuncionarioService();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Funcionario> funcionarios = funcionarioService.obterTodos();
        req.setAttribute("model",funcionarios);
        getServletContext().getRequestDispatcher("/pages/admin/funcionarios/listagem-funcionario.jsp").forward(req, resp);
    }
}
