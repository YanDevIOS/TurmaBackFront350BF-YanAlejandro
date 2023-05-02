//
//  TableViewCell.swift
//  TableViewCollectionView
//
//  Created by Yan Alejandro on 20/04/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    static let identifier: String = String(String(describing: TableViewCell.self))
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    var list: [String] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configCollectionView()
        nameLabel.textColor = .white
        self.backgroundColor = .clear
    }
    
    func configCollectionView() {
        collectionView.backgroundColor = UIColor(red: 57/255, green: 54/255, blue: 70/255, alpha: 1)
        collectionView.delegate = self
        collectionView.dataSource = self
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero
        }
        collectionView.register(CollectionViewCell.nib(), forCellWithReuseIdentifier: CollectionViewCell.identifier)
    }
    
    func setupCell(poke: Pokemons) {
        nameLabel.text = poke.namePokemon
        list = poke.listPokemon
    }
}

extension TableViewCell: UICollectionViewDelegate {
    
}

extension TableViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as? CollectionViewCell
        cell?.setupCell(nameImage: list[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
}

extension TableViewCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 300)
    }
    
    
}
