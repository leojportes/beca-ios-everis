//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Leonardo Oliveira Portes on 11/03/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet weak var felicidadeTextField: UITextField?
    
    @IBAction func adicionar(_ sender: Any) {
        
        if let nomeDaRefeicao = nomeTextField?.text, let felicidadeDaRefeicao = felicidadeTextField?.text {
            
            let nome = nomeDaRefeicao
            if let felicidade = Int(felicidadeDaRefeicao) {
                let refeicao = Refeicao(nomeRefeicao: nome, felicidade: felicidade)
                print("Comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade) ")
            } else {
                print("Erro ao tentar criar Refeição")
            }
        
        }
        
    }
}
