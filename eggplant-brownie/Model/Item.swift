//
//  Item.swift
//  eggplant-brownie
//
//  Created by Leonardo Oliveira Portes on 14/03/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit

class Item: NSObject {
//    Atrubutos
    var nome: String
    var calorias: Double
//    Construtor
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
    
}
