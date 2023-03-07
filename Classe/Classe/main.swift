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
