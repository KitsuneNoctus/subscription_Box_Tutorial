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
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    let imageView: UIImageView = {
        var imageView = UIImageView()
//        imageView = UIImage(named: "shipping")
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
//MARK: View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        
        imageView.image = UIImage(named: "shipping")
        
        self.view.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.65),
            stackView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5),
            stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        stackView.addArrangedSubview(imageView)
        
        stackView.addArrangedSubview(usernameTextField)
        NSLayoutConstraint.activate([
            usernameTextField.widthAnchor.constraint(equalTo: stackView.widthAnchor)
        ])
    
        stackView.addArrangedSubview(passwordTextField)
        NSLayoutConstraint.activate([
            passwordTextField.widthAnchor.constraint(equalTo: stackView.widthAnchor)
        ])
        
        stackView.addArrangedSubview(loginButton)
        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),
            loginButton.centerYAnchor.constraint(equalTo: stackView.centerYAnchor)
        ])
        loginButton.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
        

        // Do any additional setup after loading the view.
    }
    
    @objc func loginTapped(){
        self.view.window!.rootViewController = HomeViewController()
//        let nextVC = HomeViewController()
//        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
//    let nextVC = ViewController()
//    self.navigationController?.pushViewController(nextVC, animated: true)
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
