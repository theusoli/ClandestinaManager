/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Javabeans;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Aluno
 */
@Entity
@Table(name = "times")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Times.findAll", query = "SELECT t FROM Times t")
    , @NamedQuery(name = "Times.findByNome", query = "SELECT t FROM Times t WHERE t.nome = :nome")
    , @NamedQuery(name = "Times.findByPatrimonio", query = "SELECT t FROM Times t WHERE t.patrimonio = :patrimonio")
    , @NamedQuery(name = "Times.findByNomePresidente", query = "SELECT t FROM Times t WHERE t.nomePresidente = :nomePresidente")
    , @NamedQuery(name = "Times.findByPontuacao", query = "SELECT t FROM Times t WHERE t.pontuacao = :pontuacao")
    , @NamedQuery(name = "Times.findByPreco", query = "SELECT t FROM Times t WHERE t.preco = :preco")})
public class Times implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "nome")
    private String nome;
    @Lob
    @Column(name = "escudo")
    private byte[] escudo;
    @Basic(optional = false)
    @Column(name = "patrimonio")
    private double patrimonio;
    @Basic(optional = false)
    @Column(name = "nomePresidente")
    private String nomePresidente;
    @Basic(optional = false)
    @Column(name = "pontuacao")
    private double pontuacao;
    @Basic(optional = false)
    @Column(name = "preco")
    private double preco;
    @JoinColumn(name = "loginUsuario", referencedColumnName = "login")
    @ManyToOne
    private String loginUsuario;
    private String timeCoracao;

    public String getTimeCoracao() {
        return timeCoracao;
    }

    public void setTimeCoracao(String timeCoracao) {
        this.timeCoracao = timeCoracao;
    }

    public Times() {
    }

    public Times(String nome) {
        this.nome = nome;
    }

    public Times(String nome, double patrimonio, String nomePresidente, double pontuacao, double preco) {
        this.nome = nome;
        this.patrimonio = patrimonio;
        this.nomePresidente = nomePresidente;
        this.pontuacao = pontuacao;
        this.preco = preco;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public byte[] getEscudo() {
        return escudo;
    }

    public void setEscudo(byte[] escudo) {
        this.escudo = escudo;
    }

    public double getPatrimonio() {
        return patrimonio;
    }

    public void setPatrimonio(double patrimonio) {
        this.patrimonio = patrimonio;
    }

    public String getNomePresidente() {
        return nomePresidente;
    }

    public void setNomePresidente(String nomePresidente) {
        this.nomePresidente = nomePresidente;
    }

    public double getPontuacao() {
        return pontuacao;
    }

    public void setPontuacao(double pontuacao) {
        this.pontuacao = pontuacao;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public String getLoginUsuario() {
        return loginUsuario;
    }

    public void setLoginUsuario(String loginUsuario) {
        this.loginUsuario = loginUsuario;
    }
    
}
