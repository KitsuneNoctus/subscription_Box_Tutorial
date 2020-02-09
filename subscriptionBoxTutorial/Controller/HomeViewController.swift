//
//  HomeViewController.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 2/4/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
//    let navBar: UINavigationBar!
    
    let container: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        //view.spacing = 30
        view.translatesAutoresizingMaskIntoConstraints = false
        view.distribution = .fillEqually
        return view
    }()
    
    //Example
//    let continueButton: UIButton = {
//        let button = UIButton()
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.setTitle("Subscribe Now", for: .normal)
//        button.setTitleColor(UIColor.darkGray, for: .normal)
//        button.layer.cornerRadius = 10
//        button.layer.masksToBounds = true
//        button.backgroundColor = UIColor(white: 1.0, alpha: 0.9)
//        return button
//    }()
    
    let newBoxButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("New Box", for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = UIColor.purple
        return button
    }()

    let pastBoxesButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Past Boxes", for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = UIColor.purple
        return button
    }()

    let profileButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Profile", for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = UIColor.purple
        return button
    }()
//MARK: View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
        self.view.addSubview(container)
        
        NSLayoutConstraint.activate([
            container.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            container.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            container.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30)
        ])
        
        container.addSubview(newBoxButton)
        container.addSubview(pastBoxesButton)
        container.addSubview(profileButton)
        NSLayoutConstraint.activate([
            //newBoxButton
            newBoxButton.widthAnchor.constraint(equalTo: container.widthAnchor),
            newBoxButton.heightAnchor.constraint(equalToConstant: 50),
            //pastBoxesButton
//            pastBoxesButton.widthAnchor.constraint(equalTo: container.widthAnchor),
//            pastBoxesButton.heightAnchor.constraint(equalToConstant: 50),
//            pastBoxesButton.topAnchor.constraint(equalTo: newBoxButton.bottomAnchor, constant:30 ),
            //profileButton
            profileButton.widthAnchor.constraint(equalTo: container.widthAnchor),
            profileButton.heightAnchor.constraint(equalToConstant: 50),
            profileButton.topAnchor.constraint(equalTo: pastBoxesButton.bottomAnchor, constant: 30)
        ])
        newBoxButton.addTarget(self, action: #selector(newTapped), for: .touchUpInside)
        profileButton.addTarget(self, action: #selector(profileTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            pastBoxesButton.widthAnchor.constraint(equalTo: container.widthAnchor),
            pastBoxesButton.heightAnchor.constraint(equalToConstant: 50),
            pastBoxesButton.topAnchor.constraint(equalTo: newBoxButton.bottomAnchor, constant:30 )
        ])
        pastBoxesButton.addTarget(self, action: #selector(pastTapped), for: .touchUpInside)

        // Do any additional setup after loading the view.
    }
    
    @objc func profileTapped(){
        self.view.window!.rootViewController = ProfileViewController()
    }
    
    @objc func newTapped(){
        self.view.window!.rootViewController = NewBoxViewController()
    }

    @objc func pastTapped(){
        self.view.window!.rootViewController = PastBoxesViewController()
    }
    

}
