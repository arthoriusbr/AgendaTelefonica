//
//  User.swift
//  AgendaTelefonica
//
//  Created by administrador on 18/07/2018.
//  Copyright © 2018 administrador. All rights reserved.
//

import ObjectMapper
import RealmSwift

class User: Object, Mappable {
    
    var id = RealmOptional<Int>()
    //Double, Float, Int, Bool -> RealmOptional<>()
    
    var email: String?
    var accessToken: String?
    var client: String?
    var uid: String?
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    func  mapping(map: Map) {
        self.id.value <- map ["id"] //self.id, como estava antes, agora é um RealmOptional. Para acessar seu inteiro de fato, deve fazer self.id.value.
        self.email <- map["email"]
    }
}

extension User {
    
    func setHeaderParams(header: [AnyHashable: Any]?) {
        guard let header = header else {
            return
        }
        
        if let uid = header["Uid"] as? String {
            self.uid = uid
        }
        
        if let client = header["Client"] as? String {
            self.client = client
        }
        
        if let accessToken = header["Access-Token"] as? String {
            self.accessToken = accessToken
        }
    }
}
