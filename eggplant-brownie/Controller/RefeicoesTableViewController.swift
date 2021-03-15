//
//  RefeicoesTableViewController.swift
//  eggplant-brownie
//
//  Created by Leonardo Oliveira Portes on 15/03/21.
//  Copyright © 2021 Alura. All rights reserved.
//
import UIKit

class RefeicoesTableViewController: UITableViewController {
    let refeicoes = [Refeicao(nomeRefeicao: "Macarrão", felicidade: 4),
                     Refeicao(nomeRefeicao: "Feijão", felicidade: 4),
                     Refeicao(nomeRefeicao: "Comida Japonesa", felicidade: 5)]
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao.nome
        
        return celula
    }

}
