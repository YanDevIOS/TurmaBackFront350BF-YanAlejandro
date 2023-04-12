//
//  TableViewCell.swift
//  TesteTableView
//
//  Created by Yan Alejandro on 11/04/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var agenteImageView: UIImageView!
    @IBOutlet weak var nameAgenteLabel: UILabel!
    @IBOutlet weak var nameFunctionLabel: UILabel!
    
    static let identifier: String = "TableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setupCell(agente: Agentes) {
        nameAgenteLabel.text = agente.nameAgente
        nameFunctionLabel.text = agente.functionAgente
        agenteImageView.image = UIImage(named: agente.nameImage)
    }
    
}
