//
//  CollectionViewCell.swift
//  collectionView
//
//  Created by Yan Alejandro on 20/04/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var pokeImageView: UIImageView!
    
    static let identifier: String = String(describing: CollectionViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(nameImage: String) {
        pokeImageView.image = UIImage(named: nameImage)
    }

}
