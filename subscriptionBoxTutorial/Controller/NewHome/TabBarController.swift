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
        let HomeVc = NewHomePageViewController()
//        vc.imageName = "northAmerica"
        HomeVc.title = "Home"
//        vc.view.backgroundColor = UIColor.blue
        //--
        let navController = UINavigationController(rootViewController:HomeVc)
        HomeVc.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 0)
//        vc.tabBarItem = UITabBarItem(title: vc.title, image: , selectedImage:)
        
        //===============
        let vc2 = NewBoxViewController()
        vc2.title = "New"
        //--
        let navController2 = UINavigationController(rootViewController: vc2)
        vc2.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 1)
        
        //===============
        let vc3 = PastBoxesViewController()
        vc3.title = "Past"
        //--
        let navController3 = UINavigationController(rootViewController: vc3)
        vc3.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 2)
        //===============
        let vc4 = ContentView()
        let vc4True = UIHostingController(rootView: vc4)
//        vc3.title = "Profile"
        //----
        let navController4 = UINavigationController(rootViewController: vc4True)
        vc4True.tabBarItem = UITabBarItem(tabBarSystemItem: .topRated , tag: 3)
      
        //The Views - The list
        viewControllers = [navController,navController2,navController3,navController4]
        
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected a new view controller")
    }

}
