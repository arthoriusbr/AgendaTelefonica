//
//  ContatoTableViewCell.swift
//  AgendaTelefonica
//
//  Created by administrador on 20/07/2018.
//  Copyright © 2018 administrador. All rights reserved.
//

import UIKit
import Reusable

class ContatoTableViewCell: UITableViewCell, NibReusable {

    @IBOutlet weak var fotoContato: UIImageView!
    @IBOutlet weak var nomeContato: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
