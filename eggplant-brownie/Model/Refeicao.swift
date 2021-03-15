//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by Leonardo Oliveira Portes on 14/03/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit

class Refeicao: NSObject {
   
    let nome: String
    let felicidade: Int
    let itens: Array<Item> = []
    
    //    MARK: Construtor
    
    init(nomeRefeicao: String, felicidade: Int) {
        
        self.nome = nomeRefeicao
        self.felicidade = felicidade
    }
    
    //    MARK: Metodos
    
    func totalDeCalorias() -> Double {
        var total = 0.0
        
        for item in itens {
            total += item.calorias
        }
        return total
    }
}

