//
//  Tela04ViewController.swift
//  TesteNavigation
//
//  Created by Yan Alejandro on 05/04/23.
//

import UIKit

class Tela04ViewController: UIViewController {

    @IBOutlet weak var tappedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureBackground()
        configureButton()
    }
    
    func configureBackground() {
        view.backgroundColor = .green
    }
    
    func configureButton() {
        tappedButton.backgroundColor = .white
        tappedButton.setTitle("Próxima Tela", for: .normal)
        tappedButton.tintColor = .green
        tappedButton.layer.cornerRadius = 25
    }
    
    @IBAction func nextScreenButton(_ sender: Any) {
        let vc = UIStoryboard(name: "Tela05", bundle: nil).instantiateViewController(withIdentifier: "Tela05")
        //MARK: - Navegação para tela
        navigationController?.pushViewController(vc, animated: true)
    }
}
