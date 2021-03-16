

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
        
            return celula
        }
    
        func add(_ refeicao: Refeicao) {
            refeicoes.append(refeicao)
            tableView.reloadData()
        }

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "adicionar" {
                if let viewController = segue.destination as? ViewController {
                    viewController.delegate = self
            }
        }
    }
}

