//
//  main.swift
//  TestLogic
//
//  Created by Yan Alejandro on 03/05/23.
//

import Foundation

// MARK: - Exercicio 2

// Modo 1
func identifiquePalavraAoContrarioCorrect(input: String) -> Bool {
    return String(input.reversed()) == input
}

//print(identifiquePalavraAoContrarioCorrect(input: "ARARA"))

// Modo 2
func identifiquePalavraAoContrario(palavra: String) -> Bool {
    let palavraInvertida = String(palavra.reversed())
    
    if palavra == palavraInvertida {
        return true
    }
    return false
}

//print(identifiquePalavraAoContrario(palavra: "ARARA"))

// Modo 3
func identifiquePalavraAoContrario2(palavra: String) -> Bool {
    let palavraInvertida = String(palavra.reversed())
    return palavra == palavraInvertida
}

//print(identifiquePalavraAoContrario2(palavra: "rodador"))


// MARK: - Exercicio 3

// Modo 1
func compareWords(firstWord: String, secondWord: String) -> Bool {
    return firstWord.sorted() == secondWord.sorted()
}
//print(compareWords(firstWord: "abca", secondWord: "abc"))


// MARK: - Exercicio 4

// Modo 1

extension String {
    func fakeContains(word: String) -> Bool {
        return range(of: word, options: [.caseInsensitive, .diacriticInsensitive]) != nil
    }
}

print("Nove da matina o dia tah pra começar".fakeContains(word: "comecar"))

//func fakeContains(sentence: String, word: String) -> Bool {
//    return sentence.range(of: word, options: [.caseInsensitive, .diacriticInsensitive]) != nil
//}
//
//print(fakeContains(sentence: "Nove da matina o dia tah pra começar", word: "comecar"))
//
//
//// Modo 2
//func fakeContains2(sentence: String, word: String) -> Bool {
//    return sentence.range(of: word, options: .caseInsensitive) != nil
//}
//
//print(fakeContains2(sentence: "Nove da matina o dia tah pra começar", word: "começar"))
