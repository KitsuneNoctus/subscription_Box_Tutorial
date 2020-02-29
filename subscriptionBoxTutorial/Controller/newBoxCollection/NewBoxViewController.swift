//
//  NewBoxViewController.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 2/9/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

class NewBoxViewController: UIViewController {
    
    let flow = CustomFlowLayout()
    
    lazy var collectionView: UICollectionView = {
        
        // Instantiating the UICollectionView, using the default flow layout
        let collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        //TODO: Set the datasource & delegate
        collectionView.dataSource = self
        collectionView.delegate = self
        
        
        // Customization
        collectionView.alwaysBounceVertical = true
        collectionView.backgroundColor = .white
        
        //TODO: Register the cell
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)
        
        collectionView.collectionViewLayout =  flow
        
        return collectionView
    }()
    
    
    var data: [String] = Array(repeating: "Hello", count: 10)
    
    override func loadView() {
        super.loadView()
        view.addSubview(collectionView)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

}

extension NewBoxViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as! CollectionViewCell
        let data = self.data[indexPath.item]
        cell.textLabel.text = "\(data) : \(indexPath.row)"
        cell.textLabel.textColor = UIColor.white
        return cell
    }
}

extension NewBoxViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
