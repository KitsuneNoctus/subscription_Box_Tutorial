//
//  LoginViewController.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 2/4/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    //Once again testing
    
    var loginView: UIView!
    var color: UIColor!
    
//    var loginTitle: UILabel!
//    var usernameTextField: UITextField!
//    var passwordTextField: UITextField!
    
    let loginTitle: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont(name: "Helvetica", size: 20)
        label.textColor = UIColor(white: 1.0, alpha: 0.8)
        label.text = "PetBox"
        return label
    }()
    
    var usernameTextField: UITextField = {
       let usernameTextField = UITextField()
        usernameTextField.text = "username"
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        return usernameTextField
    }()
    
    var passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.text = "password"
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        return passwordTextField
    }()
    
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        return stackView
    }()
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.backgroundColor = UIColor(white: 1.0, alpha: 0.9)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        
        self.view.addSubview(loginButton)
        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            loginButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        loginButton.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
        

        // Do any additional setup after loading the view.
    }
    
    @objc func loginTapped(){
           self.view.window!.rootViewController = HomeViewController()
    }
    
//    func setGradient(){
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.colors = [color.cgColor, UIColor.white.cgColor]
//        gradientLayer.locations = [0.0,3.0]
//        gradientLayer.frame = self.bounds
//        layer.insertSublayer(gradientLayer, at: 0)
//    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
