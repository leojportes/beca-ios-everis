//att
//  eggplant-brownie
//
//  Created by Leonardo Oliveira Portes on 16/03/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit

class RefeicoesTableViewController: UITableViewController, AdicionarRefeicaoDelegate {

    var refeicoes = [Refeicao(nome: "Beringela", felicidade: 5),
                     Refeicao(nome: "Macarrão", felicidade: 3)]
    
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return refeicoes.count
        
        }

        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let refeicao = refeicoes[indexPath.row]
            let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
            celula.textLabel?.text = refeicao.nome
            
            let longPress = UILongPressGestureRecognizer(target: self, action: #selector(mostrarDetalhes(_:)))
            
            celula.addGestureRecognizer(longPress)
            
            return celula
        }
    
        func add(_ refeicao: Refeicao) {
            refeicoes.append(refeicao)
            tableView.reloadData()
        }
    
    @objc func mostrarDetalhes(_ gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began {
            let celula = gesture.view as! UITableViewCell
            
            guard let indexPath = tableView.indexPath(for: celula) else { return }
            
            let refeicao = refeicoes[indexPath.row]
            
            print("refeicao: \(refeicao.nome)")
            }
        }

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "adicionar" {
                if let viewController = segue.destination as? ViewController {
                    viewController.delegate = self
            }
        }
    }
}

