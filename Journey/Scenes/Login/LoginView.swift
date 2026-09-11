//
//  LoginView.swift
//  Journey
//
//  Created by Ana Julia Molinos Leite Da Silva on 11/09/26.
//

import Foundation
import UIKit

class LoginView: UIView {
    let emailTextField: LoginTextField = {
        let textField = LoginTextField()
        
        textField.titleLabel.text = "AAAAA"
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    init() {
        super.init(frame: .zero)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        self.addSubview(emailTextField)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            emailTextField.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            emailTextField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        ])
    }
}
