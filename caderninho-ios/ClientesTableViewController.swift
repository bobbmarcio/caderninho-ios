//
//  ViewController.swift
//  caderninho-ios
//
//  Created by Márcio Flores on 30/11/21.
//

import UIKit

class ClientesTableViewController: UITableViewController, AdicionarClienteDelegate {
    
    var clientes = [Cliente("Ana", -202.3),
                    Cliente("Bia", -507.75),
                    Cliente("Carol", -389.6)]
    
    override func viewDidLoad() {
        let botaoAdicionaMovimentacao = UIBarButtonItem(title: "+", style: .plain, target: self, action: #selector(adicionarCliente))
        navigationItem.rightBarButtonItem = botaoAdicionaMovimentacao
    }
    
    @objc func adicionarCliente() {
        let adicionarClienteViewController = AdicionarClienteViewController(delegate: self)
        navigationController?.pushViewController(adicionarClienteViewController, animated: true)
    }
    
    
    
    // MARK: - Métodos Table View
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        clientes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let cliente = clientes[indexPath.row]
        
        celula.textLabel?.text = "\(cliente.nome) | \(cliente.saldo)"
        
        if cliente.saldo < 0 {
            celula.tintColor = .red
        }
        
        return celula
    }
    
    func adicionarClienteTable(_ cliente: Cliente) {
        clientes.append(cliente)
        tableView.reloadData()
    }
}

