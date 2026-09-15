//
//  LoginView.swift
//  Journey
//
//  Created by Ana Julia Molinos Leite Da Silva on 11/09/26.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    let logoImage: UIImageView = {
        let image = UIImageView()
        
        image.image = UIImage(named: "logo")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
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
    
    let passwordRecoveryButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("Esqueci a senha", for: .normal)
        button.setTitleColor(Colors.primaryBlue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14, weight: .bold)
        button.translatesAutoresizingMaskIntoConstraints = false
        /// **TO DO:** add button action
        
        return button
    }()
    
    let loginButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("Fazer login", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        button.backgroundColor = Colors.primaryPurple
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        /// **TO DO:** add button action
        
        return button
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
        self.addSubview(logoImage)
        self.addSubview(passwordRecoveryButton)
        self.addSubview(loginButton)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
            logoImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 128),
            logoImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            logoImage.widthAnchor.constraint(equalToConstant: 152),
            
            emailTextField.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 64),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 16),
            passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
            
            passwordRecoveryButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 15),
            passwordRecoveryButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
            
            loginButton.topAnchor.constraint(equalTo: passwordRecoveryButton.bottomAnchor, constant: 47),
            loginButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 48),
            loginButton.widthAnchor.constraint(equalToConstant: 256)
            
        ])
    }
}
