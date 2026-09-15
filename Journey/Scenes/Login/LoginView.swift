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
        
        textField.titleLabel.text = "E-mail"
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    let passwordTextField: LoginTextField = {
        let textField = LoginTextField()
        
        textField.titleLabel.text = "Senha"
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
        self.addSubview(passwordTextField)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
//            emailTextField.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 16),
            passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
        ])
    }
}
