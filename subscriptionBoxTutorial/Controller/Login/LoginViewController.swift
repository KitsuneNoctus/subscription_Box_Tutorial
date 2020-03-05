//
//  LoginViewController.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 2/4/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    var titleConstraintStart: NSLayoutConstraint!
    var titleConstraintEnd: NSLayoutConstraint!
    
    //MARK: Login Title Label
    let loginTitle: UILabel = {
        let label = UILabel()
        label.text = "PetBox"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont(name: "Marker Felt", size: 80)
        label.textColor = UIColor.white
        return label
    }()
    
    //MARK: Login Button
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
    
    //MARK: Image View
    let imageView: UIImageView = {
        var imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "shippinglogo")
        return imageView
    }()
    
    let usernameTextField: SimpleTextField = {
        let textField = SimpleTextField(placeholder: "username")
        return textField
    }()
    
    let passwordTextField: SimpleTextField = {
        let textField = SimpleTextField(placeholder: "password")
        textField.isSecureTextEntry = true
        return textField
    }()
    
//    //MARK: Username
//    var usernameTextField: UITextField = {
//       let usernameTextField = UITextField()
//        usernameTextField.text = "username"
//        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
//        return usernameTextField
//    }()
//
//    //MARK: Password
//    var passwordTextField: UITextField = {
//        let passwordTextField = UITextField()
//        passwordTextField.text = "password"
//        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
//        return passwordTextField
//    }()
    
//=========================================================================
    
//MARK: View Did Appear
    override func viewDidAppear(_ animated: Bool) {
        loginTitle.transform = CGAffineTransform(scaleX: 0, y: 0)
        loginTitle.alpha = 0
        loginButton.alpha = 0
        titleConstraintStart.isActive = false
        titleConstraintEnd.isActive = true
        UIView.animate(withDuration: 2.0, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.0, options: [], animations:{
            self.view.layoutIfNeeded()
            self.loginTitle.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.loginTitle.alpha = 1
        }, completion: {(finished: Bool) in
            UIView.animate(withDuration: 0.5, animations: {
                self.loginButton.alpha = 1
            }, completion: nil)
        })
    }
    
//MARK: View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.4352941176, green: 0.4039215686, blue: 1, alpha: 1)
        setImageView()
        setLabel()
        setButton()
        setTextFields()

    }
    
//==============================================================
    
    func setImageView(){
        self.view.addSubview(imageView)
        imageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -20).isActive = true
    }
    
    func setLabel(){
        self.view.addSubview(loginTitle)
        titleConstraintEnd = loginTitle.centerYAnchor.constraint(equalTo: imageView.topAnchor, constant: -60)
        titleConstraintStart = loginTitle.centerYAnchor.constraint(equalTo: imageView.centerYAnchor, constant: 5)
        
        titleConstraintStart.isActive = true
        
        loginTitle.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        loginTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
    }
    
    func setButton(){
        self.view.addSubview(loginButton)
        loginButton.widthAnchor.constraint(equalToConstant: 250).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        loginButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -60).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginButton.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
    }
    
    func setTextFields(){
        self.view.addSubview(usernameTextField)
        usernameTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        usernameTextField.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 30).isActive = true
        usernameTextField.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.75).isActive = true
        
        self.view.addSubview(passwordTextField)
        passwordTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 15).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.75).isActive = true
        
    }
    
//==============================================================
    
//    func setup(){
//        self.view.addSubview(imageView)
//                imageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//                imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: -150).isActive = true
//        //        imageView.bottomAnchor.constraint(equalTo: textField.topAnchor, constant: -15).isActive = true
//                imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
//                imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
//        //        imageView.bottomAnchor.constraint(equalTo: usernameTextField.topAnchor, constant: -15).isActive = true
//        //        imageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -20).isActive = true
//
//        //MARK: Add Login Button
//        self.view.addSubview(loginButton)
//        NSLayoutConstraint.activate([
//            loginButton.widthAnchor.constraint(equalToConstant: 250),
//            loginButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            loginButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -60),
//            loginButton.heightAnchor.constraint(equalToConstant: 50)
//        ])
//        loginButton.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
//
//        //MARK: User Name Add
//        self.view.addSubview(usernameTextField)
//         NSLayoutConstraint.activate([
//             usernameTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            usernameTextField.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -200),
//            usernameTextField.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.75)
//         ])
//
//         //MARK: Password Add
//         self.view.addSubview(passwordTextField)
//         NSLayoutConstraint.activate([
//             passwordTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//             passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20),
//             passwordTextField.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.75)
//         ])
//
//    }
    
//    //MARK: Image View Adding
//    func setImageView(){
//        self.view.addSubview(imageView)
//        imageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: -150).isActive = true
////        imageView.bottomAnchor.constraint(equalTo: textField.topAnchor, constant: -15).isActive = true
//        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
//        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
////        imageView.bottomAnchor.constraint(equalTo: usernameTextField.topAnchor, constant: -15).isActive = true
////        imageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -20).isActive = true
//    }
//
//    //MARK: Title View Adding
//    func setTitle(){
////        self.view.addSubview(loginTitle)
////        titleConstraintEnd = loginTitle.centerYAnchor.constraint(equalTo: imageView.topAnchor, constant: -60)
////        titleConstraintStart = loginTitle.centerYAnchor.constraint(equalTo: imageView.centerYAnchor, constant: 5)
////
////        titleConstraintStart.isActive = true
////
////        loginTitle.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
////        loginTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//    }
//
//    //MARK: Login Button adding
//    func setLoginButton(){
//        self.view.addSubview(loginButton)
//        NSLayoutConstraint.activate([
//            loginButton.widthAnchor.constraint(equalToConstant: 250),
//            loginButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            loginButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -60),
//            loginButton.heightAnchor.constraint(equalToConstant: 50)
//        ])
//        loginButton.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
//    }
//
//    //MARK: Login Fields
//    func setLoginTextFields(){
//        self.view.addSubview(usernameTextField)
//        NSLayoutConstraint.activate([
//            usernameTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//           usernameTextField.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 30),
//           usernameTextField.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.75)
//        ])
//
//
//        self.view.addSubview(passwordTextField)
//        NSLayoutConstraint.activate([
//            passwordTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 15),
//            passwordTextField.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.75)
//        ])
//    }
    
    //MARK: Login Action
    @objc func loginTapped(){
        let nextVC = TabBarController()
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    

}
