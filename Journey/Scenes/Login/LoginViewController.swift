//
//  LoginViewController.swift
//  Journey
//
//  Created by Ana Julia Molinos Leite Da Silva on 11/09/26.
//

import Foundation
import UIKit

class LoginViewController: UIViewController{
    
    let contentView: LoginView
    
    init(contentView: LoginView){
        self.contentView = contentView
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    private func setup() {
        self.view.backgroundColor = .white
        self.navigationController?.navigationBar.isHidden = true
        self.view.addSubview(contentView)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}
