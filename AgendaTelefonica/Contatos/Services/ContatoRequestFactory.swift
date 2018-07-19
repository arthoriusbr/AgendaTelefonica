//
//  ContatoRequestFactory.swift
//  AgendaTelefonica
//
//  Created by administrador on 19/07/2018.
//  Copyright © 2018 administrador. All rights reserved.
//

import Foundation
import Alamofire

class ContatoRequestFactory {
    static func getContatos() -> DataRequest {
        
        return Alamofire.request(baseUrl + "contacts", method: .get, headers: header)
    }
}
