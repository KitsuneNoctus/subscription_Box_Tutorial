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
        view.spacing = 30
        view.translatesAutoresizingMaskIntoConstraints = false
        view.distribution = .fillEqually
        return view
    }()
    
//    let newBoxButton: UIButton = {
//        let button = UIButton()
//        return button
//    }()
//
//    let pastBoxesButton: UIButton = {
//        let button = UIButton()
//        return button
//    }()
//
//    let profileButton: UIButton = {
//        let button = UIButton()
//        return button
//    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
