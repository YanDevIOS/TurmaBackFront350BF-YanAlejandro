//
//  SecondViewController.swift
//  NotificationCenter-Protocol
//
//  Created by Yan Alejandro on 04/05/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        configLabel()
        configFirstButton()
        configSecondButton()

    }
    
    func configView() {
        view.backgroundColor = UIColor(red: 41/255, green: 65/255, blue: 101/255, alpha: 1.0)
    }
    
    func configLabel() {
        label.text = "Opções"
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textColor = .yellow
        label.textAlignment = .center
    }
    
    func configFirstButton() {
        firstButton.setBackgroundImage(UIImage(named: "Macbook"), for: .normal)
        firstButton.contentMode = .scaleAspectFit
        
    }
    
    func configSecondButton() {
        secondButton.setBackgroundImage(UIImage(named: "Imac"), for: .normal)
        secondButton.contentMode = .scaleToFill
    }
    
    @IBAction func tappedFirstButton(_ sender: UIButton) {
        NotificationCenter.default.post(name: Notification.Name("MacBook"), object: UIColor.purple)
        dismiss(animated: true)
    }
    
    
    @IBAction func tappedSecondButton(_ sender: UIButton) {
        NotificationCenter.default.post(name: Notification.Name("iMac"), object: nil)
        dismiss(animated: true)
    }
    
}
