//
//  NewBoxViewController.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 2/9/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

class NewBoxViewController: UIViewController {
    
    lazy var collectionView: UICollectionView = {
        
        // Instantiating the UICollectionView, using the default flow layout
        let collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.alwaysBounceVertical = true
        collectionView.backgroundColor = .white
    
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)
        
        collectionView.collectionViewLayout =  CustomFlowLayout()
        
        return collectionView
    }()
    
    let data: [Category] = [
        Category(name: "Food", image: "petFood"),
        Category(name: "Toys", image: "dogtoy"),
        Category(name: "Treats",image:"treat"),
        Category(name: "Grooming", image: "dogbrush"),
        Category(name: "Meds", image: "meds"),
        Category(name: "Accesories", image: "collar")
    ]
    
    override func loadView() {
        super.loadView()
        view.addSubview(collectionView)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

}

extension NewBoxViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as! CollectionViewCell
//        if indexPath == {
//            cell.backgroundColor = #colorLiteral(red: 1, green: 0.5756825209, blue: 0.5681426525, alpha: 0.9445098459)
//        }else{
//            cell.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
//        }
        cell.imageView.image = UIImage(named: self.data[indexPath.row].image)
        cell.textLabel.text = "\(self.data[indexPath.row].name)"
        cell.textLabel.textColor = UIColor.white
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
//        if selectedIndexPath == indexPath {
//          selectedIndexPath = nil
//        } else {
//          selectedIndexPath = indexPath
//        }
//          return false
//    }
//
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell: CollectionViewCell = collectionView.cellForItem(at: indexPath) as! CollectionViewCell
        cell.backgroundColor = .brown
        print("Selected an Item")
    }
}
