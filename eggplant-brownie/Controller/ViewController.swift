//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Leonardo Oliveira Portes on 11/03/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var NomeTextField: UITextField!
    @IBOutlet weak var FelicidadeTextField: UITextField!
    
    @IBAction func adicionar(_ sender: Any) {
        let Nome = NomeTextField.text
        
        let Felicidade = FelicidadeTextField.text
        
        print("Comi \(Nome) e fiquei com felicidade: \(Felicidade) ")
    }
    
}
