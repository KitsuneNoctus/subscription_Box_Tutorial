//
//  FeaturedSection.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 2/29/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

struct FeaturedSection: Section {
    
    let titles = ["Food","Toys","Treats","Grooming Supplies","Meds","Collars"]
    let itemImages = ["petFood","petFood","petFood","petFood","petFood","petFood","petFood"]
    
    var numberOfItems = 6
    
    func layoutSection() -> NSCollectionLayoutSection? {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.9), heightDimension: .fractionalHeight(0.9))
        //========
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        //========
        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(150), heightDimension: .absolute(200))
        //========
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
        //========
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        return section
    }

    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: FeaturedCell.self), for: indexPath) as! FeaturedCell
        cell.featuredLabel.text = titles[indexPath.row]
        cell.featuredImage.image = UIImage(named: itemImages[indexPath.row])
        return cell
    }
    
    // TODO: create an initializer to set the title
//    let titles = ["Food","Toys","Treats","Grooming Supplies","Meds","Collars"]
//
//    func layoutSection() -> NSCollectionLayoutSection? {
//        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
//
//        let item = NSCollectionLayoutItem(layoutSize: itemSize)
//
////        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(100), heightDimension: .absolute(150))
//        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.33), heightDimension: .fractionalHeight(0.33))
//
//        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
//
//        let section = NSCollectionLayoutSection(group: group)
//        section.orthogonalScrollingBehavior = .continuous
//
//        return section
//    }
//
//    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: FeaturedCell.self), for: indexPath) as! FeaturedCell
//        cell.set(title: titles[indexPath.row])
//        return cell
//    }
    
}
