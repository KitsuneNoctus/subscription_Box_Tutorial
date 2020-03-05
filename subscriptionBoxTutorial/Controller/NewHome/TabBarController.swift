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
        HomeVc.title = "Home"
        //-----
        let navController = UINavigationController(rootViewController:HomeVc)
        HomeVc.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: ""), tag: 0)
        
        //===============
        let vc2 = NewBoxViewController()
        vc2.title = "New Box"
        //--
        let navController2 = UINavigationController(rootViewController: vc2)
        vc2.tabBarItem = UITabBarItem(title: "New Box", image: UIImage(named: ""), tag: 1)
        
        //===============
        let vc3 = PastBoxesViewController()
        vc3.title = "Past Orders"
        //--
        let navController3 = UINavigationController(rootViewController: vc3)
        vc3.tabBarItem = UITabBarItem(title: "Old", image: UIImage(named: ""), tag: 2)
        
        //===============
        let vc4 = ContentView()
        let vc4True = UIHostingController(rootView: vc4)

        //----
        let navController4 = UINavigationController(rootViewController: vc4True)
        vc4True.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: ""), tag: 3)
      
        //The Views - The list
        viewControllers = [navController,navController2,navController3,navController4]
        
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected a new view controller")
    }

}
