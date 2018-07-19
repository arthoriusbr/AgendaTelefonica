//
//  LoginService.swift
//  AgendaTelefonica
//
//  Created by administrador on 18/07/2018.
//  Copyright © 2018 administrador. All rights reserved.
//

import Alamofire
import AlamofireObjectMapper

protocol LoginServiceDelegate {
    func postLoginSuccess()
    func postLoginFailure(error: String)
}

class LoginService {
    
    var delegate: LoginServiceDelegate
    
    //obrigando a inicialização do delegate
    required init(delegate: LoginServiceDelegate){
        self.delegate = delegate
    }
    
    func postLogin(email: String, senha: String) {
        LoginRequestFactory.postLogin(email: email, senha: senha).validate().responseObject(keyPath: "data") { (response: DataResponse<User>) in
            
            switch response.result {
            case .success:
                
                if let user = response.result.value {
                    print("Email \(user.email ?? "") com id \(user.id.value ?? 0)")
                                        
                    user.setHeaderParams(header: response.response?.allHeaderFields)
                    
                    UserViewModel.clear()
                    UserViewModel.save(usuario: user)
                }
                
                self.delegate.postLoginSuccess()
                
            case .failure(let error):
                //print(error.localizedDescription)
                self.delegate.postLoginFailure(error: error.localizedDescription)
            }
        }
    }
}
