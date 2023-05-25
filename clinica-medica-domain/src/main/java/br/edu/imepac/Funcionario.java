package br.edu.imepac;

import java.time.LocalDate;

public class Funcionario {
    private int id;
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
    private LocalDate dataNascimento;

    public Funcionario(int id, String nome, String rg, String orgaoEmissor, String cpf, String endereco, String complemento,
                       String bairro, String cidade, String estado, String telefone, String celular, String ctps,
                       String pis, LocalDate dataNascimento) {
        this.id = id;
        this.nome = nome;
        this.rg = rg;
        this.orgaoEmissor = orgaoEmissor;
        this.cpf = cpf;
        this.endereco = endereco;
        this.complemento = complemento;
        this.bairro = bairro;
        this.cidade = cidade;
        this.estado = estado;
        this.telefone = telefone;
        this.celular = celular;
        this.ctps = ctps;
        this.pis = pis;
        this.dataNascimento = dataNascimento;
    }

    public Funcionario(String nome, String rg, String orgaoEmissor, String cpf, String endereco, String complemento,
                       String bairro, String cidade, String estado, String telefone, String celular, String ctps,
                       String pis, LocalDate dataNascimento) {
        this.nome = nome;
        this.rg = rg;
        this.orgaoEmissor = orgaoEmissor;
        this.cpf = cpf;
        this.endereco = endereco;
        this.complemento = complemento;
        this.bairro = bairro;
        this.cidade = cidade;
        this.estado = estado;
        this.telefone = telefone;
        this.celular = celular;
        this.ctps = ctps;
        this.pis = pis;
        this.dataNascimento = dataNascimento;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
// getters e setters

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getOrgaoEmissor() {
        return orgaoEmissor;
    }

    public void setOrgaoEmissor(String orgaoEmissor) {
        this.orgaoEmissor = orgaoEmissor;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getCtps() {
        return ctps;
    }

    public void setCtps(String ctps) {
        this.ctps = ctps;
    }

    public String getPis() {
        return pis;
    }

    public void setPis(String pis) {
        this.pis = pis;
    }

    public LocalDate getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(LocalDate dataNascimento) {
        this.dataNascimento = dataNascimento;
    }
}
