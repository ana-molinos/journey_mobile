//
//  LoginTextField.swift
//  Journey
//
//  Created by Ana Julia Molinos Leite Da Silva on 11/09/26.
//

import Foundation
import UIKit

class LoginTextField: UIView {
    
    let titleLabel: UILabel = {
        let text = UILabel()
        
        text.textColor = Colors.primaryBlue
        text.font = .systemFont(ofSize: 14)
        text.translatesAutoresizingMaskIntoConstraints = false
        
        return text
    }()
    
    let textField: UITextField = {
        let field = UITextField()
        
        field.borderStyle = .none
        field.layer.cornerRadius = 16
        field.clipsToBounds = true
        field.backgroundColor = Colors.gray
        field.translatesAutoresizingMaskIntoConstraints = false
        
        return field
    }()
    
    init() {
        
        super.init(frame: .zero)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        addSubview(titleLabel)
        addSubview(textField)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            
            textField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 7),
            textField.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            textField.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            textField.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            textField.heightAnchor.constraint(equalToConstant: 48)
            
        ])
    }
}
