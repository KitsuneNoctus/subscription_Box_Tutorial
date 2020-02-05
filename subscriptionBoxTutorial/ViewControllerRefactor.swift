//
//  ViewControllerRefactor.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 2/4/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

class ViewControllerRefactor: UIViewController {
    
    var firstView: customView!
    var secondView: customView!
    var thirdView: customView!
    var pagesArray: [customView] = []
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }()
    
    let container: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.spacing = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        view.distribution = .fillEqually
        return view
    }()
    
    let pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.currentPage = 0
        pageControl.isUserInteractionEnabled = false
        pageControl.pageIndicatorTintColor = UIColor(white: 1.0, alpha: 0.4)
        pageControl.currentPageIndicatorTintColor = UIColor.white
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        return pageControl
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

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
