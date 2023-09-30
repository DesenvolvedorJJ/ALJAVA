package Model;

public class Pedido {
	int id_pedido;
	String dt_compra;
	int id_cliente;
	String nome_cliente;
	String cpf;
	String email;
	int id_produto;
	String nome_produto;
	String tipo;
	String marca;
	String modelo;
	int id_tamanho;
	String tamanho;
	double preco;
	
	
	public int getId_pedido() {
		return id_pedido;
	}
	public void setId_pedido(int id_pedido) {
		this.id_pedido = id_pedido;
	}
	
	
	public String getDt_compra() {
		return dt_compra;
	}
	public void setDt_compra(String dt_compra) {
		this.dt_compra = dt_compra;
	}
	
	
	public int getId_cliente() {
		return id_cliente;
	}
	public void setId_cliente(int id_cliente) {
		this.id_cliente = id_cliente;
	}
	
	
	public String getNome_Cliente() {
		return nome_cliente;
	}
	public void setNome_Cliente(String nome_cliente) {
		this.nome_cliente = nome_cliente;
	}
	
	
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public int getId_produto() {
		return id_produto;
	}
	public void setId_produto(int id_produto) {
		this.id_produto = id_produto;
	}
	
	
	
	public String getNome_Produto() {
		return nome_produto;
	}
	public void setNome_Produto(String nome_produto) {
		this.nome_produto = nome_produto;
	}
	
	
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	
	
	public String getMarca() {
		return marca;
	}
	public void setMarca(String marca) {
		this.marca = marca;
	}
	
	
	public String getModelo() {
		return modelo;
	}
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	
	
	public int getId_tamanho() {
		return id_tamanho;
	}
	public void setId_tamanho(int id_tamanho) {
		this.id_tamanho = id_tamanho;
	}
	
	
	public String getTamanho() {
		return tamanho;
	}
	public void setTamanho(String tamanho) {
		this.tamanho = tamanho;
	}
	
	
	public double getPreco() {
		return preco;
	}
	public void setPreco(double preco) {
		this.preco = preco;
	}
	
	
}