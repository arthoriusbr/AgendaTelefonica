//
//  ContatosViewModel.swift
//  AgendaTelefonica
//
//  Created by administrador on 19/07/2018.
//  Copyright © 2018 administrador. All rights reserved.
//

import Foundation

class ContatosViewModel {
    
    static func save(contatos: [Contato]) {
        try! uiRealm.write {
            uiRealm.add(contatos, update: true)
        }
    }
    
    static func clear() {
        try! uiRealm.write {
            uiRealm.delete(uiRealm.objects(Contato.self))
        }
    
    }
}
