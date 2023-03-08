//
//  main.swift
//  Classe
//
//  Created by Yan Alejandro on 07/03/23.
//

import Foundation

//MARK: -  OBJETO
//CARACTERISTICA DE UM OBJETO -> ATRIBUTOS || PROPRIEDADES
//AÇÕES -> FUNÇÃO / METODO

class Automovel {
    var color: String = "Preto"
    var doors: Int = 4
    var mark: String = "Maserati"
    var isEletric: Bool = false
    var peapleComport: Int = 4
    
    func ligarFarol() {
        print("O farol está ligado")
    }
    
    func ligarOCarro() {
        print("O carro está ligado")
    }
}

class Pessoa {
    var nome: String = "Yan"
    var cor: String = "Pardo"
    var sexo: String = "Masculino"
    var altura: Float = 1.84
    var casado: Bool = true
    
    func codar() {
        print("O Yan está codando")
    }
    
    func falar() {
        print("O Yan está falando")
    }
}

class Gorila {
    var mamifero: Bool = true
    var peso: Float = 200.0
    var cor: String = "Preto"
    var altura: Float = 1.75
    var bipede: Bool = true
    
    func correr() {
        print("o animal está correndo")
    }
    
    func morder() {
        print("O Animal está mordendo")
    }
}

class Aviao {
    var modelo: String = "airbus798"
    var peso: Float = 500000.00
    var cor: String = "Branco"
    var comprimento: Int = 80
    var bipede: Bool = true
    
    func voar() {
        print("O avião está voando")
    }
    
    func acelerar() {
        print("O Avião está acelerando")
    }
}

//BY CAIO
// OBJETO
// CARACTERISTICAS DE UM OBJETO -> ATRIBUTOS OU PROPRIEDADES
// AÇÕES = FUNÇÃO / METODO

// Para criar uma classe sempre começamos com a palavra reservada "class" e em seguida colocamos o seu nome que sempre deve começar com a primeira letra maiusculo

class Automovel2 {
    
    var cor: String = "Preto"
    var numeroDePortas: Int = 2
    var marca: String = "Honda"
    var eEletrico: Bool = false
    var quantidadeDePassageiros: Int = 5
    
    func ligarFarol() {
        print("O Farol está ligado")
    }
    
    func ligarOCarro() {
        print("O carro está ligado")
    }
    
}

// Dar vida ao objeto -> quando geramos a instancia -> ()
var meuCarro: Automovel = Automovel()


// Construtores
// Criamos um construtor com a palavra reservada init e com isso indicamos TODOS OS VALORES DAS VARIAVEIS OU CONSTANTES QUE NÃO SE INICIAM COM VALOR

class Pessoa1 {
    
    var nome: String
    var altura: Double
    var peso: Double
    var tamanhoCalcado: Int
    
    
    init(nome: String, altura: Double, peso: Double, tamanhoCalcado: Int) {
        self.nome = nome
        self.altura = altura
        self.peso = peso
        self.tamanhoCalcado = tamanhoCalcado
    }
}

var caio: Pessoa1 = Pessoa(nome: "Caio", altura: 1.84, peso: 84, tamanhoCalcado: 44)
var matheus: Pessoa1 = Pessoa(nome: "Matheus", altura: 1.65, peso: 69, tamanhoCalcado: 40)
//print(caio.nome)
//print(caio.altura)
//print(caio.peso)

//  Referencia uma das principais caracteristicas de uma classe

print(caio.nome)
print(matheus.nome)

caio.nome = "Caio Fabrini"
matheus.nome = "Matheus Souza"

print(caio.nome)
print(matheus.nome)

// caio é igual a matheus
caio = matheus

print(caio.nome)
print(matheus.nome)


caio.nome = "Alberto"

print(caio.nome)
print(matheus.nome)

matheus.nome = "Jorge"

print(caio.nome)
print(matheus.nome)
