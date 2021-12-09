//
//  AdicionarMovimentacaoViewController.swift
//  caderninho-ios
//
//  Created by Márcio Flores on 30/11/21.
//

import UIKit

protocol AdicionarClienteDelegate {
    func adicionarClienteTable(_ cliente: Cliente)
}

class AdicionarClienteViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var nomeTextField: UITextField!
    
    //MARK: - Atributos
    
    var delegate: AdicionarClienteDelegate?
    
    init(delegate: AdicionarClienteDelegate) {
        super.init(nibName: "AdicionarClienteViewController", bundle: nil)
        self.delegate = delegate
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func adicionarCliente(_ sender: Any) {
        guard let nome = nomeTextField.text else { return }
        
        let cliente = Cliente(nome, 0)
        
        delegate?.adicionarClienteTable(cliente)
        
        navigationController?.popViewController(animated: true)
    }
}
