package br.edu.imepac.servlets.admin.funcionarios;

import br.edu.imepac.Funcionario;
import br.edu.imepac.FuncionarioService;
import br.edu.imepac.utils.MessagesArrayList;
import br.edu.imepac.utils.TipoMensagem;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class CadastrarFuncionarioServlet extends HttpServlet {

    private String nome;
    private String rg;
    private String orgaoEmissor;
    private String cpf;
    private String endereco;
    private String complemento;
    private String bairro;
    private String cidade;
    private String estado;
    private String telefone;
    private String celular;
    private String ctps;
    private String pis;
    private String dataNascimento;
    private FuncionarioService funcionarioService;

    public CadastrarFuncionarioServlet() {
        this.funcionarioService = new FuncionarioService();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        carregarDadosFormulario(req);
        if (!estaValidadoCamposObrigatorio(req, resp)) return;
        armazenarDados(req, resp);
    }

    private void armazenarDados(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Funcionario funcionario = new Funcionario(nome, rg, orgaoEmissor, cpf, endereco, complemento, bairro, cidade, estado, telefone, celular, ctps, pis, LocalDate.parse(req.getParameter("data_nascimento"), DateTimeFormatter.ofPattern("yyyy-MM-dd")));
        funcionarioService.salvar(funcionario);
        MessagesArrayList<String> messagesArrayList = new MessagesArrayList<String>();
        messagesArrayList.setNovoFormulario(true);
        messagesArrayList.setTipoMensagem(TipoMensagem.SUCESSO);
        messagesArrayList.setMessagemContexto("Funcionário cadastrado com sucesso!");
        req.setAttribute("messagesArrayList", messagesArrayList);
        getServletContext().getRequestDispatcher("/pages/admin/funcionarios/cadastrar-funcionario.jsp").forward(req, resp);
    }

    private void carregarDadosFormulario(HttpServletRequest req) {
        this.nome = req.getParameter("nome");
        this.rg = req.getParameter("rg");
        this.orgaoEmissor = req.getParameter("orgao_emissor");
        this.cpf = req.getParameter("cpf");
        this.endereco = req.getParameter("endereco");
        this.complemento = req.getParameter("complemento");
        this.bairro = req.getParameter("bairro");
        this.cidade = req.getParameter("cidade");
        this.estado = req.getParameter("estado");
        this.telefone = req.getParameter("telefone");
        this.celular = req.getParameter("celular");
        this.ctps = req.getParameter("ctps");
        this.pis = req.getParameter("pis");
        this.dataNascimento = req.getParameter("data_nascimento");
    }

    private boolean estaValidadoCamposObrigatorio(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        MessagesArrayList<String> messagesArrayList = new MessagesArrayList<String>();

        if (this.nome.isEmpty()) {
            messagesArrayList.add("Nome do Funcionário");
        }
        if (this.rg.isEmpty()) {
            messagesArrayList.add("Número do RG");
        }
        if (this.orgaoEmissor.isEmpty()) {
            messagesArrayList.add("Órgão Emissor");
        }
        if (this.cpf.isEmpty()) {
            messagesArrayList.add("Número do CPF");
        }
        if (this.celular.isEmpty()) {
            messagesArrayList.add("Celular");
        }
        if (this.dataNascimento.isEmpty()) {
            messagesArrayList.add("Data de Nascimento");
        }
        if (!messagesArrayList.isEmpty()) {
            messagesArrayList.setNovoFormulario(false);
            messagesArrayList.setTipoMensagem(TipoMensagem.ERRO);
            messagesArrayList.setMessagemContexto("Campo(s) obrigatório(s) devem ser preenchidos");
            req.setAttribute("messagesArrayList", messagesArrayList);
            getServletContext().getRequestDispatcher("/pages/admin/funcionarios/cadastrar-funcionario.jsp").forward(req, resp);
            return false;
        }
        return true;
    }

}
