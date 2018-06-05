CREATE TABLE tb_venda (
    codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
    data_criacao DATETIME NOT NULL,
    valor_frete DECIMAL(10,2),
    valor_desconto DECIMAL(10,2),
    valor_total DECIMAL(10,2) NOT NULL,
    status VARCHAR(30) NOT NULL,
    observacao VARCHAR(200),
    data_entrega DATETIME,
    codigo_cliente BIGINT(20) NOT NULL,
    codigo_usuario BIGINT(20) NOT NULL,
    FOREIGN KEY (codigo_cliente) REFERENCES tb_cliente(codigo),
    FOREIGN KEY (codigo_usuario) REFERENCES tb_usuario(codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE tb_item_venda (
    codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
    quantidade INTEGER NOT NULL,
    valor_unitario DECIMAL(10,2) NOT NULL,
    codigo_cerveja BIGINT(20) NOT NULL,
    codigo_venda BIGINT(20) NOT NULL,
    FOREIGN KEY (codigo_cerveja) REFERENCES tb_cerveja(codigo),
    FOREIGN KEY (codigo_venda) REFERENCES tb_venda(codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;