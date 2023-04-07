//
//  Tela06ViewController.swift
//  TesteNavigation
//
//  Created by Yan Alejandro on 05/04/23.
//

import UIKit

class Tela06ViewController: UIViewController {

    @IBOutlet weak var tappedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureBackground()
        configureButton()
    }
    
    func configureBackground() {
        view.backgroundColor = .blue
    }
    
    func configureButton() {
        tappedButton.backgroundColor = .white
        tappedButton.setTitle("Voltar a 1º Tela", for: .normal)
        tappedButton.tintColor = .blue
        tappedButton.layer.cornerRadius = 25
    }
    
    @IBAction func returnFirstScreenButton(_ sender: Any) {
        //MARK: - Navegação para tela
//        navigationController?.pushViewController(vc, animated: true)
        //MARK: - Navegação pata primeira tela
        navigationController?.popToRootViewController(animated: true)
    }
}
