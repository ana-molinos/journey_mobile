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
    
//    let title 
    
    init() {
        
        super.init(frame: .zero)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        addSubview(titleLabel)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}
