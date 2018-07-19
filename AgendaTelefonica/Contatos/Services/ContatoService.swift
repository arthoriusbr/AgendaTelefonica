//
//  ContatoService.swift
//  AgendaTelefonica
//
//  Created by administrador on 19/07/2018.
//  Copyright © 2018 administrador. All rights reserved.
//

//
//  LoginService.swift
//  AgendaTelefonica
//
//  Created by administrador on 18/07/2018.
//  Copyright © 2018 administrador. All rights reserved.
//

import Alamofire
import AlamofireObjectMapper

protocol ContatoServiceDelegate {
    func getContatosSuccess()
    func getContatosFailure(error: String)
}

class ContatoService {
    
    var delegate: ContatoServiceDelegate
    
    //obrigando a inicialização do delegate
    required init(delegate: ContatoServiceDelegate){
        self.delegate = delegate
    }
    
    func getContatos() {
        ContatoRequestFactory.getContatos().validate().responseArray(keyPath: "data") { (response: DataResponse<[Contato]>) in
            
            switch response.result {
            case .success:
                
                if let contatos = response.result.value {
                    
                    ContatosViewModel.clear()
                    ContatosViewModel.save(contatos: contatos)
                    
                }
                
                self.delegate.getContatosSuccess()
                
            case .failure(let error):
                self.delegate.getContatosFailure(error: error.localizedDescription)
            }
        }
    }
}
