package br.edu.imepac.servlets.admin.funcionarios;

import br.edu.imepac.Funcionario;
import br.edu.imepac.FuncionarioService;
import br.edu.imepac.UsuarioService;
import br.edu.imepac.utils.MessagesArrayList;
import br.edu.imepac.utils.TipoMensagem;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AtualizarFuncionarioServlet extends HttpServlet {
    private int id;

    private FuncionarioService funcionarioService;

    public AtualizarFuncionarioServlet() {
        this.funcionarioService = new FuncionarioService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (!carregouDadosFormulario(req, resp)) return;
        Funcionario funcionario = funcionarioService.obter(this.id);
        req.setAttribute("model", funcionario);
        getServletContext().getRequestDispatcher("/pages/admin/funcionarios/atualizar-funcionario.jsp").forward(req, resp);
    }

    private boolean carregouDadosFormulario(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            this.id = Integer.parseInt(req.getParameter("id"));
        } catch (Exception exception) {
            MessagesArrayList<String> messagesArrayList = new MessagesArrayList<String>();
            messagesArrayList.setTipoMensagem(TipoMensagem.ERRO);
            messagesArrayList.setMessagemContexto("Erro inesperado!");
            req.setAttribute("messagesArrayList", messagesArrayList);
            getServletContext().getRequestDispatcher("/pages/admin/funcionarios/listagem-funcionario.jsp").forward(req, resp);
            return false;
        }
        return true;
    }
}
