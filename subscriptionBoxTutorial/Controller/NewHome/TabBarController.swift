//
//  TabBarController.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 2/27/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit
import SwiftUI

class TabBarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        self.delegate = self
    }
    
    func setupViewControllers(){
        self.tabBar.barTintColor = UIColor.black
        self.tabBar.tintColor = UIColor.white
        
        //==============
        let vc = NewHomePageViewController()
//        vc.imageName = "northAmerica"
        vc.title = "Home"
//        vc.view.backgroundColor = UIColor.blue
        //--
        let navController = UINavigationController(rootViewController:vc)
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
//        vc.tabBarItem = UITabBarItem(title: vc.title, image: , selectedImage:)
        
        //===============
        let vc2 = NewBoxPageViewController()
        vc.title = "New"
        //--
        let navController2 = UINavigationController(rootViewController: vc2)
        vc2.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 1)
        
        //===============
        let vc3 = ContentView()
        let vc3True = UIHostingController(rootView: vc3)
//        vc3.title = "Profile"
        //----
        let navController3 = UINavigationController(rootViewController: vc3True)
        vc3True.tabBarItem = UITabBarItem(tabBarSystemItem: .topRated , tag: 2)
        //===============
        //The Views - The list
        viewControllers = [navController,navController2, navController3]
        
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected a new view controller")
    }

}
