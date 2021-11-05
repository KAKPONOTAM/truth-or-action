//
//  ViewController.swift
//  truth or action
//
//  Created by Сабитов Данил on 04.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var trueButtonOutlet: UIButton!
    
    @IBOutlet weak var outletLabel: UILabel!
    
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trueButtonOutlet.layer.borderColor = UIColor.red.cgColor
        trueButtonOutlet.layer.cornerRadius = 10
        trueButtonOutlet.layer.borderWidth = 1
        
        trueButtonOutlet.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            trueButtonOutlet.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -250),
            trueButtonOutlet.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -93),
            trueButtonOutlet.widthAnchor.constraint(equalToConstant: 145),
            trueButtonOutlet.heightAnchor.constraint(equalToConstant: 109)
        ])
        
        trueButtonOutlet.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        
        
        let actionButton = UIButton()
        view.addSubview(actionButton)
        
        actionButton.layer.borderColor = UIColor.red.cgColor
        actionButton.layer.cornerRadius = 10
        actionButton.layer.borderWidth = 1
        
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
                                        actionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                                        actionButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -93),
                                        actionButton.widthAnchor.constraint(equalToConstant: 145),
                                        actionButton.heightAnchor.constraint(equalToConstant: 109)
        ])
        
        actionButton.setTitle("Action", for: .normal)
        actionButton.setTitleColor(.green, for: .normal)
        actionButton.setTitleColor(.orange, for: .highlighted)
        actionButton.showsTouchWhenHighlighted = true
        
        actionButton.addTarget(self, action: #selector(letAction), for: .touchUpInside)
        
        actionButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        
        
    }
    
    
    @IBAction func trueButtonTapped(_ sender: UIButton) {
        outletLabel.text = Source.getInfo(type: .word)
    }
    
    @objc func letAction() {
        outletLabel.text = Source.getInfo(type: .action)
    }
    
}

