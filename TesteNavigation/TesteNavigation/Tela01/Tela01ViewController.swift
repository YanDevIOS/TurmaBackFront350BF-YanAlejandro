//
//  Tela01ViewController.swift
//  TesteNavigation
//
//  Created by Yan Alejandro on 05/04/23.
//

import UIKit

class Tela01ViewController: UIViewController {

    @IBOutlet weak var tappedButton: UIButton!
    @IBOutlet weak var campoTextField: UITextField!
    
    var textoDoTextField: String?
    
    let tela02ViewController = Tela02ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureBackground()
        configureButton()
        tela02ViewController.textoParaLabel = textoDoTextField
    }
    
    func configureBackground() {
        view.backgroundColor = .purple
    }
    
    func configureButton() {
        tappedButton.backgroundColor = .white
        tappedButton.setTitle("Próxima Tela", for: .normal)
        tappedButton.tintColor = .purple
        tappedButton.layer.cornerRadius = 25
    }
    
    @IBAction func tappedReturnButton(_ sender: Any) {
        let vc = UIStoryboard(name: "Tela02", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewControllerID")
        textoDoTextField = campoTextField.text
        //MARK: - Navegação pata tela
        navigationController?.pushViewController(vc, animated: true)
        //MARK: - Navegação pata modal
//        present(vc, animated: true)
    }
}

