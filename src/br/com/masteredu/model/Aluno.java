package br.com.masteredu.model;

import java.util.Calendar;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import br.com.masteredu.model.enums.EstadoCivil;
import br.com.masteredu.model.enums.Sexo;

@Entity
public class Aluno extends Usuario {

	private String nome;
	
	private String nacionalidade;
	
	private String rg;
	
	@Column(unique = true)
	private String cpf;
	
	private String nomeDaMae;
	
	private String nomeDoPai;
	
	private String certidaoDeNascimento;
	
	@Enumerated(EnumType.STRING)
	private EstadoCivil estadoCivil;
	
	@Temporal(TemporalType.DATE)
	private Calendar dataNascimento;
	
	private String religiao;
	
	private String naturalidade;
	
	private String observacao;
	
	@Enumerated(EnumType.STRING)
	private Sexo sexo;
	
	@OneToOne
	private Matricula matricula;
	
	@OneToMany(mappedBy = "aluno")
	private List<Contato> contatos;
	
	@OneToMany(mappedBy = "aluno")
	private List<Ocorrencia> ocorrencias;
	
	@ManyToOne
	@JoinColumn(name = "id_responsavel")
	private Responsavel responsavel;
	
	@OneToMany(mappedBy="aluno")
	private List<Frequencia> frequencias;
	
	@OneToOne
	private Endereco endereco;
	
	@OneToOne
	private FichaMedica fichaMedica;

	@OneToMany(mappedBy="aluno")
	private List<Documento> documentos;
	
	@OneToOne
	private HistoricoEscolar historicoEscolar;
	
	@OneToMany(mappedBy="aluno")
	private List<Boletim> boletins;
	
	
	// GETTERs AND SETTERs	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getNacionalidade() {
		return nacionalidade;
	}

	public void setNacionalidade(String nacionalidade) {
		this.nacionalidade = nacionalidade;
	}

	public String getRg() {
		return rg;
	}

	public void setRg(String rg) {
		this.rg = rg;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getNomeDaMae() {
		return nomeDaMae;
	}

	public void setNomeDaMae(String nomeDaMae) {
		this.nomeDaMae = nomeDaMae;
	}

	public String getNomeDoPai() {
		return nomeDoPai;
	}

	public void setNomeDoPai(String nomeDoPai) {
		this.nomeDoPai = nomeDoPai;
	}

	public String getCertidaoDeNascimento() {
		return certidaoDeNascimento;
	}

	public void setCertidaoDeNascimento(String certidaoDeNascimento) {
		this.certidaoDeNascimento = certidaoDeNascimento;
	}

	public EstadoCivil getEstadoCivil() {
		return estadoCivil;
	}

	public void setEstadoCivil(EstadoCivil estadoCivil) {
		this.estadoCivil = estadoCivil;
	}

	public Calendar getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Calendar dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public String getReligiao() {
		return religiao;
	}

	public void setReligiao(String religiao) {
		this.religiao = religiao;
	}

	public String getNaturalidade() {
		return naturalidade;
	}

	public void setNaturalidade(String naturalidade) {
		this.naturalidade = naturalidade;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	public Sexo getSexo() {
		return sexo;
	}

	public void setSexo(Sexo sexo) {
		this.sexo = sexo;
	}

	public Matricula getMatricula() {
		return matricula;
	}

	public void setMatricula(Matricula matricula) {
		this.matricula = matricula;
	}

	public List<Contato> getContatos() {
		return contatos;
	}

	public void setContatos(List<Contato> contatos) {
		this.contatos = contatos;
	}

	public List<Ocorrencia> getOcorrencias() {
		return ocorrencias;
	}

	public void setOcorrencias(List<Ocorrencia> ocorrencias) {
		this.ocorrencias = ocorrencias;
	}

	public Responsavel getResponsavel() {
		return responsavel;
	}

	public void setResponsavel(Responsavel responsavel) {
		this.responsavel = responsavel;
	}

	public List<Frequencia> getFrequencias() {
		return frequencias;
	}

	public void setFrequencias(List<Frequencia> frequencias) {
		this.frequencias = frequencias;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}

	public FichaMedica getFichaMedica() {
		return fichaMedica;
	}

	public void setFichaMedica(FichaMedica fichaMedica) {
		this.fichaMedica = fichaMedica;
	}

	public List<Documento> getDocumentos() {
		return documentos;
	}

	public void setDocumentos(List<Documento> documentos) {
		this.documentos = documentos;
	}

	public HistoricoEscolar getHistoricoEscolar() {
		return historicoEscolar;
	}

	public void setHistoricoEscolar(HistoricoEscolar historicoEscolar) {
		this.historicoEscolar = historicoEscolar;
	}

	public List<Boletim> getBoletins() {
		return boletins;
	}

	public void setBoletins(List<Boletim> boletins) {
		this.boletins = boletins;
	}

	
}
