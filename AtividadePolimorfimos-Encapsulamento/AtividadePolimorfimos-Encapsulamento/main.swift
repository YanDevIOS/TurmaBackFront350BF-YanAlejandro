//
//  main.swift
//  AtividadePolimorfimos-Encapsulamento
//
//  Created by Yan Alejandro on 16/03/23.
//
//MARK: - EXERCÍCIO VENDEDOR
//Um vendedor de loja possui nome, idade e cpf e saldo em conta. Vende em sua loja ternos, vestidos e bonés, definir um método vender(quantidade DePecas: Int,
//tipoDePeca: String).
//-Cada terno custa 400 reais, caso o cliente compre 3 ou mais ternos, ele recebe 50 de desconto para cada terno.
//-Cada vestido custa 900 reais, caso o cliente compre 5 vestidos ele ganha um véu de noiva de brinde.

import Foundation

class Vendedor {
    var nome: String
    var idade: Int
    var cpf: String
    var saltoEmConta: Double
    
    init(nome: String, idade: Int, cpf: String, saltoEmConta: Double) {
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.saltoEmConta = saltoEmConta
    }
    
    func vender(quantidadeDePecas: Int, tipoDePeca: String) {
        if tipoDePeca == "Terno" {
            venderTerno(quantidadeDeTernos: quantidadeDePecas)
        } else if tipoDePeca == "Vestido" {
            venderVestido(quantidadeDeVestidos: quantidadeDePecas)
        } else {
            print("Não temos esse produto na loja")
        }
    }
    
    private func venderTerno(quantidadeDeTernos: Int) {
        var desconto: Double = 0
        if quantidadeDeTernos >= 3 {
            desconto = Double(50 * quantidadeDeTernos)
            print("Parabens, voce ganhou 50 reais de desconto por peça")
        }
        saltoEmConta = saltoEmConta + Double(quantidadeDeTernos * 400) - desconto
    }
    
    private func venderVestido(quantidadeDeVestidos: Int) {
        if quantidadeDeVestidos == 5 {
            print("Parabens, voce ganhou um veu de noiva")
        }
        saltoEmConta = saltoEmConta + Double(quantidadeDeVestidos * 900)
    }
}

var yanVendedor: Vendedor = Vendedor(nome: "Yan", idade: 25, cpf: "CPF", saltoEmConta: 10000)
yanVendedor.vender(quantidadeDePecas: 3, tipoDePeca: "Terno")
print(yanVendedor.saltoEmConta)

//MARK: - EXERCÍCIO FUNCIONÁRIOS
//Definir uma classe Funcionário com nome, salário e cpf, depois defina as classes Programador que tem plataforma de trabalho(ex:
//Android, Web, iOS), e uma classe Designer que tem ferramenta preferida(ex: Photoshop, Sketch, Gimp). Ambos tem um bônus
//anual baseado no salário, Programador recebe 20% e Designer recebe
//15%. Faça um método que calcule o bônus anual e mostre o valor do bônus na tela. Use polimorfismo para resolver este problema.

class Funcionario {
    var nome: String
    var salario: Double
    var cpf: String
    
    init(nome: String, salario: Double, cpf: String) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
    
    func bonusAnual() {
        print("")
    }
}

class Programmer: Funcionario {
    var plataformaDeTrabalho: String
    
    init(plataformaDeTrabalho: String, nome: String, salario: Double, cpf: String) {
        self.plataformaDeTrabalho = plataformaDeTrabalho
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func bonusAnual() {
        print("Seu bonus é de 20%, ficou em: R$\((salario * 12) * 0.2)")
    }
}

class Designer: Funcionario {
    var plataformaDeTrabalho: String
    
    init(plataformaDeTrabalho: String, nome: String, salario: Double, cpf: String) {
        self.plataformaDeTrabalho = plataformaDeTrabalho
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func bonusAnual() {
        print("Seu bonus é de 15%, ficou em: R$\((salario * 12) * 0.15)")
    }
}

var yanProgrammador: Programmer = Programmer(plataformaDeTrabalho: "Xcode", nome: "Yan", salario: 10000, cpf: "CPF")
yanProgrammador.bonusAnual()

var yanDesigner: Designer = Designer(plataformaDeTrabalho: "Photoshop", nome: "Yan", salario: 10000, cpf: "CPF")
yanDesigner.bonusAnual()


//MARK: - EXERCÍCIO VÉICULO
//Definir uma classe Veículo com cor, preço e quantidade de passageiros, depois defina as classes Carro que tem tamanho das rodas, e Avião que tem piloto e companhia aérea. queremos descobrir a quantidade de combustível que cada um dos veículos gasta por viagem, defina um método que recebe como parâmetro a distancia em Km e calcule a quantidade de combustível. Carro:
//tamanho das rodas * quantidade de passageiros * distancia
//Avião quantidade de passageiros * distancia

class Veiculo {
    var quantidadeDePassageiros: Int
    
    init(quantidadeDePassageiros: Int) {
        self.quantidadeDePassageiros = quantidadeDePassageiros
    }
    
    func calcularCombustivel(km: Double) -> Double {
        return km * Double(quantidadeDePassageiros)
    }
}

class Carro: Veiculo {
    var tamanhoDasRodas: Int
    
    init(tamanhoDasRodas: Int, quantidadeDePassageiros: Int) {
        self.tamanhoDasRodas = tamanhoDasRodas
        super.init(quantidadeDePassageiros: quantidadeDePassageiros)
    }
    
    override func calcularCombustivel(km: Double) -> Double {
        return km * Double(quantidadeDePassageiros * tamanhoDasRodas)
    }
}

class Aviao: Veiculo {
}

var boing: Aviao = Aviao(quantidadeDePassageiros: 100)
boing.calcularCombustivel(km: 1200)
