//
//  ViewController.swift
//  TipCalculatorNoStoryboard
//
//  Created by Austin Goetz on 10/22/19.
//  Copyright © 2019 Austin Goetz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Create SubViews
    
    let tipTextField: UITextField = {
    let textField = UITextField()
        textField.placeholder = "Enter Bill Total"
        
        return textField
    }()
    
    let tipPercentageLabel: UILabel = {
       let label = UILabel()
        label.text = "Select tip percentage:"
        label.textColor = .black
        label.textAlignment = .right
        
        return label
    }()
    
    let fivePercentButton: UIButton = {
        let button = UIButton()
        button.setTitle("5%", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.contentHorizontalAlignment = .center
        button.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        
        return button
    }()
    
    let tenPercentButton: UIButton = {
        let button = UIButton()
        button.setTitle("10%", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.contentHorizontalAlignment = .center
        button.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        
        return button
    }()
    
    let fifteenPercentButton: UIButton = {
        let button = UIButton()
        button.setTitle("15%", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.contentHorizontalAlignment = .center
        button.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        
        return button
    }()
    
    let twentyPercentButton: UIButton = {
        let button = UIButton()
        button.setTitle("20%", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.contentHorizontalAlignment = .center
        button.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        
        return button
    }()
    
    let buttonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
//        stackView.spacing = 15
        
        return stackView
    }()
    
    let totalLabel: UILabel = {
        let label = UILabel()
        label.text = "Total"
        label.textColor = .black

        return label
    }()
    
    let returnLabel: UILabel = {
        let label = UILabel()
        label.text = "0.00"
        label.textColor = .green
        
        return label
    }()
    
    // MARK: - Add SubViews
    
    func addAllSubViews() {
        self.view.addSubview(tipTextField)
        self.view.addSubview(tipPercentageLabel)
        self.view.addSubview(fivePercentButton)
        self.view.addSubview(tenPercentButton)
        self.view.addSubview(fifteenPercentButton)
        self.view.addSubview(twentyPercentButton)
        self.view.addSubview(buttonStackView)
        self.view.addSubview(totalLabel)
        self.view.addSubview(returnLabel)
    }
    
    func setUpStackView() {
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        buttonStackView.addArrangedSubview(fivePercentButton)
        buttonStackView.addArrangedSubview(tenPercentButton)
        buttonStackView.addArrangedSubview(fifteenPercentButton)
        buttonStackView.addArrangedSubview(twentyPercentButton)
    }
    
    // MARK: - Constrain Views
    
    func constrainViews() {
        buttonStackView.anchor(
    }
}

