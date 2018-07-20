//
//  ContatosViewController.swift
//  AgendaTelefonica
//
//  Created by administrador on 19/07/2018.
//  Copyright © 2018 administrador. All rights reserved.
//

import Foundation
import UIKit

class ContatosViewController: UIViewController {
    
    //MARK: - Vars
    var service: ContatoService!
    
    //MARK: - UIElements
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Life
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = L10n.Contatos.title
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.register(cellType: ContatoTableViewCell.self)
        
        self.service = ContatoService(delegate: self)
        
    }
}

extension ContatosViewController: ContatoServiceDelegate {
    func getContatosSuccess() {
        print("SUCESSO NA LISTAGEM")
        
    }
    
    func getContatosFailure(error: String) {
        print("SUCESSO NA LISTAGEM")
        
    }
}

//MARK: - TableView
extension ContatosViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath) as ContatoTableViewCell
        
        cell.backgroundColor = UIColor.brown
//        cell.fotoContato =
        
        cell.nomeContato.text = "< \(indexPath) x"
        
        return cell
        
    }
}
