//
//  ViewController.swift
//  TipCalculatorNoStoryboard
//
//  Created by Austin Goetz on 10/22/19.
//  Copyright © 2019 Austin Goetz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var safeArea: UILayoutGuide {
        return self.view.safeAreaLayoutGuide
    }
    
    var buttons: [UIButton] {
        return [fivePercentButton, tenPercentButton, fifteenPercentButton, twentyPercentButton]
    }
    
    var totalBeforeTip: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        addAllSubViews()
        setUpStackView()
        constrainViews()
        activateButtons()
        self.view.backgroundColor = .white
    }
    
    // MARK: - Create SubViews
    
    let billTextField: UITextField = {
    let textField = UITextField()
        textField.placeholder = "Enter Bill Total"
        textField.borderStyle = .line
        
        
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
        button.layer.cornerRadius = 4
        button.layer.borderWidth = 1
        button.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        return button
    }()
    
    let tenPercentButton: UIButton = {
        let button = UIButton()
        button.setTitle("10%", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.contentHorizontalAlignment = .center
        button.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        button.layer.cornerRadius = 4
        button.layer.borderWidth = 1
        button.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        return button
    }()
    
    let fifteenPercentButton: UIButton = {
        let button = UIButton()
        button.setTitle("15%", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.contentHorizontalAlignment = .center
        button.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        button.layer.cornerRadius = 4
        button.layer.borderWidth = 1
        button.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        return button
    }()
    
    let twentyPercentButton: UIButton = {
        let button = UIButton()
        button.setTitle("20%", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.contentHorizontalAlignment = .center
        button.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        button.layer.cornerRadius = 4
        button.layer.borderWidth = 1
        button.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        return button
    }()
    
    let buttonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 15
        
        return stackView
    }()
    
    let tipLabel: UILabel = {
       let label = UILabel()
        label.textAlignment = .right
        label.text = "Tip:"
        label.textColor = .black
        
        return label
    }()
    
    let totalLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.text = "Total:"
        label.textColor = .black

        return label
    }()
    
    let tipAmountReturnLabel: UILabel = {
        let label = UILabel()
        label.text = "$0.00"
        label.textAlignment = .center
        label.textColor = .green
        label.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.layer.borderWidth = 1
        label.layer.cornerRadius = 4
        
        return label
    }()
    
    let returnLabel: UILabel = {
        let label = UILabel()
        label.text = "$0.00"
        label.textAlignment = .center
        label.textColor = .green
        label.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.layer.borderWidth = 1
        label.layer.cornerRadius = 4
        
        return label
    }()
    
    // MARK: - Add SubViews
    
    func addAllSubViews() {
        self.view.addSubview(billTextField)
        self.view.addSubview(tipPercentageLabel)
        self.view.addSubview(fivePercentButton)
        self.view.addSubview(tenPercentButton)
        self.view.addSubview(fifteenPercentButton)
        self.view.addSubview(twentyPercentButton)
        self.view.addSubview(buttonStackView)
        self.view.addSubview(tipLabel)
        self.view.addSubview(totalLabel)
        self.view.addSubview(tipAmountReturnLabel)
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
        
        billTextField.anchor(top: self.safeArea.topAnchor, bottom: nil, leading: self.safeArea.leadingAnchor, trailing: self.safeArea.trailingAnchor, topPadding: 60, bottomPadding: 0, leadingPadding: 50, trailingPadding: 50)
        
        tipPercentageLabel.anchor(top: billTextField.bottomAnchor, bottom: nil, leading: self.safeArea.leadingAnchor, trailing: self.safeArea.trailingAnchor, topPadding: 200, bottomPadding: 0, leadingPadding: 20, trailingPadding: 220)
        
        buttonStackView.anchor(top: tipPercentageLabel.bottomAnchor, bottom: nil, leading: self.safeArea.leadingAnchor, trailing: self.safeArea.trailingAnchor, topPadding: 20, bottomPadding: 0, leadingPadding: 20, trailingPadding: 20)
        
        tipLabel.anchor(top: buttonStackView.bottomAnchor, bottom: nil, leading: self.safeArea.leadingAnchor, trailing: self.safeArea.trailingAnchor, topPadding: 200, bottomPadding: 0, leadingPadding: 125, trailingPadding: 125)
        
        tipAmountReturnLabel.anchor(top: buttonStackView.bottomAnchor, bottom: nil, leading: totalLabel.trailingAnchor, trailing: self.safeArea.trailingAnchor, topPadding: 200, bottomPadding: 0, leadingPadding: 10, trailingPadding: 10)
        
        totalLabel.anchor(top: tipLabel.bottomAnchor, bottom: nil, leading: self.safeArea.leadingAnchor, trailing: self.safeArea.trailingAnchor, topPadding: 20, bottomPadding: 0, leadingPadding: 125, trailingPadding: 125)
        
        returnLabel.anchor(top: tipAmountReturnLabel.bottomAnchor, bottom: nil, leading: totalLabel.trailingAnchor, trailing: self.safeArea.trailingAnchor, topPadding: 20, bottomPadding: 0, leadingPadding: 10, trailingPadding: 10)
    }
    
    func activateButtons() {
        buttons.forEach{$0.addTarget(self, action: #selector(tipsButtonTapped(sender:)), for: .touchUpInside)}
    }
    @objc func tipsButtonTapped(sender: UIButton) {
        switch sender {
        case fivePercentButton:
            totalBeforeTip = billTextField.text ?? ""
            guard let bill = Double(totalBeforeTip) else {return}
            let tip = bill * 0.05
            let billTotal = bill + tip
            returnLabel.text = "$\(billTotal)"
            tipAmountReturnLabel.text = "$\(tip)"
        case tenPercentButton:
            totalBeforeTip = billTextField.text ?? ""
            guard let bill = Double(totalBeforeTip) else {return}
            let tip = bill * 0.10
            let billTotal = bill + tip
            returnLabel.text = "$\(billTotal)"
            tipAmountReturnLabel.text = "$\(tip)"
        case fifteenPercentButton:
            totalBeforeTip = billTextField.text ?? ""
            guard let bill = Double(totalBeforeTip) else {return}
            let tip = bill * 0.15
            let billTotal = bill + tip
            returnLabel.text = "$\(billTotal)"
            tipAmountReturnLabel.text = "$\(tip)"
        case twentyPercentButton:
            totalBeforeTip = billTextField.text ?? ""
            guard let bill = Double(totalBeforeTip) else {return}
            let tip = bill * 0.20
            let billTotal = bill + tip
            returnLabel.text = "$\(billTotal)"
            tipAmountReturnLabel.text = "$\(tip)"
        default:
            print("error")
        }
    }
}

