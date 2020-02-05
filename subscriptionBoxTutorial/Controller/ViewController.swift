//
//  ViewController.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 1/28/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    let scrollView = UIScrollView()
    let stackView = UIStackView()
    let pageControl = UIPageControl()
    let continueButton = UIButton()
    var page0View: customView!
    var page1View: customView!
    var page2View: customView!
    
    
 // MARK: Start Load View Code
    override func loadView() {
        super.loadView()
        
        //The Scroll View
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(scrollView)
        scrollView.isPagingEnabled = true
        scrollView.delegate = self
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            scrollView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0)
        ])
        
        //MARK: The Stack View
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        self.scrollView.addSubview(self.stackView)
        
        self.stackView.axis = .horizontal
        self.stackView.spacing = 0
        self.stackView.distribution = .fillEqually
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 0),
            stackView.topAnchor.constraint(equalTo: self.scrollView.topAnchor, constant: 0),
            stackView.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor, constant: 0),
            stackView.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor, constant: 0),
            //Width should not constrain to scrollView!!
            //stackView.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: 0)
            stackView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1)
        ])
        
        //MARK: Page Control
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(pageControl)
        NSLayoutConstraint.activate([
            pageControl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            pageControl.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20)
        ])
        pageControl.numberOfPages = 3
        pageControl.addTarget(self, action: #selector(pageControlTapped(sender:)), for: .valueChanged)
        
        //MARK: The Page views
//        stackView.addArrangedSubview(page0View)
//        page0View.translatesAutoresizingMaskIntoConstraints = false
//        page0View.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
//
//        page0View.addSubview(labelZero)
//         NSLayoutConstraint.activate([
//            labelZero.centerXAnchor.constraint(equalTo: page0View.centerXAnchor),
//            labelZero.centerYAnchor.constraint(equalTo: page0View.centerYAnchor)
//         ])
//        //--------------------------------------------------
//        stackView.addArrangedSubview(page1View)
//        page1View.translatesAutoresizingMaskIntoConstraints = false
//        page1View.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
//
//        page1View.addSubview(labelOne)
//        NSLayoutConstraint.activate([
//           labelOne.centerXAnchor.constraint(equalTo: page1View.centerXAnchor),
//           labelOne.centerYAnchor.constraint(equalTo: page1View.centerYAnchor)
//        ])
//        //---------------------------------------------------
//        stackView.addArrangedSubview(page2View)
//        page2View.translatesAutoresizingMaskIntoConstraints = false
//        page2View.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
//
//        page2View.addSubview(labelTwo)
//        NSLayoutConstraint.activate([
//           labelTwo.centerXAnchor.constraint(equalTo: page2View.centerXAnchor),
//           labelTwo.centerYAnchor.constraint(equalTo: page2View.centerYAnchor)
//        ])

    }
    //MARK: Styling and More
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
      let pageWidth = scrollView.bounds.width
      let pageFraction = scrollView.contentOffset.x/pageWidth
      
      pageControl.currentPage = Int((round(pageFraction)))
    }
    
    @objc func pageControlTapped(sender: UIPageControl){
        let pageWidth = scrollView.bounds.width
        let offset = sender.currentPage * Int(pageWidth)
        // [2]
        UIView.animate(withDuration: 0.33, animations: { [weak self] in
            self?.scrollView.contentOffset.x = CGFloat(offset)})
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
//        addGradientToView(view: page0View)
//        addGradientToView(view: page1View)
//        addGradientToView(view: page2View)
        self.page0View.backgroundColor = .red
        self.page1View.backgroundColor = .blue
        self.page2View.backgroundColor = .green
        // Do any additional setup after loading the view.
        
    }


}

