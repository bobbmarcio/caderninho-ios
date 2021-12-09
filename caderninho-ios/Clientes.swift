//
//  Clientes.swift
//  caderninho-ios
//
//  Created by Márcio Flores on 30/11/21.
//

import UIKit

class Cliente: NSObject {
    let nome: String
    let saldo: Double
    
    init(_ nome: String, _ saldo: Double) {
        self.nome = nome
        self.saldo = saldo
    }
}
