//
//  LoginRequestFactory.swift
//  AgendaTelefonica
//
//  Created by administrador on 18/07/2018.
//  Copyright © 2018 administrador. All rights reserved.
//

import Alamofire
class LoginRequestFactory {
    
    static func postLogin(email: String, senha: String) -> DataRequest {
        let param: Parameters = ["email" : email, "password" : senha]
                
        return Alamofire.request(baseUrl + "auth/sign_in", method: .post, parameters: param, encoding: JSONEncoding.default)
    }
}
