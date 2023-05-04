//
//  TableViewCell.swift
//  DesafioTableViewAddName
//
//  Created by Yan Alejandro on 02/05/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var profileCellImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "TableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(data: ListProfile) {
        profileCellImageView.image = data.image
        nameLabel.text = data.name
    }
}
