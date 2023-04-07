//
//  Tela05ViewController.swift
//  TesteNavigation
//
//  Created by Yan Alejandro on 05/04/23.
//

import UIKit

class Tela05ViewController: UIViewController {

    @IBOutlet weak var tappedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureBackground()
        configureButton()
    }
    
    func configureBackground() {
        view.backgroundColor = .red
    }
    
    func configureButton() {
        tappedButton.backgroundColor = .white
        tappedButton.setTitle("Próxima Tela", for: .normal)
        tappedButton.tintColor = .red
        tappedButton.layer.cornerRadius = 25
    }
    
    @IBAction func nextScreenButton(_ sender: Any) {
        let vc = UIStoryboard(name: "Tela06", bundle: nil).instantiateViewController(withIdentifier: "Tela06")
        //MARK: - Navegação para tela
        navigationController?.pushViewController(vc, animated: true)
    }

}
