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
