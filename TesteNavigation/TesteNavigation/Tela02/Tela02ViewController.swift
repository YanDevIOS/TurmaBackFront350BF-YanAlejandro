//
//  Tela02ViewController.swift
//  TesteNavigation
//
//  Created by Yan Alejandro on 05/04/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    @IBOutlet weak var returnButton: UIButton!
    @IBOutlet weak var campoLabel: UILabel!
    
    var textoParaLabel: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureBackground()
        configureButton()
        configureLabel()
        campoLabel.text = textoParaLabel
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    func configureBackground() {
        view.backgroundColor = .orange
    }
    
    func configureButton() {
        returnButton.backgroundColor = .white
        returnButton.setTitle("Próxima Tela", for: .normal)
        returnButton.tintColor = .orange
        returnButton.layer.cornerRadius = 25
    }
    
    func configureLabel() {
        campoLabel.font = UIFont.systemFont(ofSize: 20)
        campoLabel.numberOfLines = 0
        campoLabel.textColor = .black
        campoLabel.backgroundColor = .white
        campoLabel.textAlignment = .center
    }
    
    @IBAction func tappedReturnButton(_ sender: Any) {
        let vc = UIStoryboard(name: "Tela03", bundle: nil).instantiateViewController(withIdentifier: "Tela03")
        
        //MARK: - Navegação para tela
        navigationController?.pushViewController(vc, animated: true)
        //MARK: - Navegação retorna uma tela
//        navigationController?.popViewController(animated: true)
        //MARK: - Navegação pata primeira tela
//        dismiss(animated: true)
        
    }
}
