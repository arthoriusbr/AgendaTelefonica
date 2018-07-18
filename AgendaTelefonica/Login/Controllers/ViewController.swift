//
//  ViewController.swift
//  AgendaTelefonica
//
//  Created by administrador on 18/07/2018.
//  Copyright © 2018 administrador. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var matriculaLogin: UITextField!
    @IBOutlet weak var senhaLogin: UITextField!
    @IBOutlet weak var botaoEntrarLogin: UIButton!
    @IBOutlet weak var botaoCadastrarLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.matriculaLogin.placeholder = L10n.Login.matricula
        self.senhaLogin.placeholder = L10n.Login.senha
        
        self.botaoEntrarLogin.setTitle(L10n.Login.entrar, for: .normal)
        self.botaoEntrarLogin.layer.borderWidth = 1/UIScreen.main.nativeScale
        self.botaoEntrarLogin.layer.borderColor = UIColor.blue.cgColor
        self.botaoEntrarLogin.contentEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        
        self.botaoCadastrarLogin.setTitle(L10n.Login.cadastrar, for: .normal)
        self.botaoCadastrarLogin.layer.borderWidth = 1/UIScreen.main.nativeScale
        self.botaoCadastrarLogin.layer.borderColor = UIColor.blue.cgColor
        self.botaoCadastrarLogin.contentEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        
        
        self.matriculaLogin.layer.cornerRadius = self.matriculaLogin.frame.height / 2
        self.senhaLogin.layer.cornerRadius = self.senhaLogin.frame.height / 2
        self.botaoEntrarLogin.layer.cornerRadius = self.botaoEntrarLogin.frame.height / 4
        self.botaoCadastrarLogin.layer.cornerRadius = self.botaoCadastrarLogin.frame.height / 4
    }

    @IBAction func logar(_ sender: Any) {
        
    }
}
