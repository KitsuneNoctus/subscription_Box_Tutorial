//
//  ItemsPastViewController.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 2/29/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

class ItemsPastViewController: UIViewController {
    //    Stole some code from fellow student. https://github.com/caocmai/   ...
    
    var theBox: Box!
    
    var itemName: [String] = []
    var itemImage: [String] = []
    
    //MARK: Setting up UITableView
    let table: UITableView = {
       let table = UITableView()
       table.translatesAutoresizingMaskIntoConstraints = false
       table.rowHeight = 100
       return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
            setTable()
            getData()
    }
        
    func setTable(){
        self.view.addSubview(table)
        self.view.backgroundColor = .white
        
        table.register(ItemViewCell.self, forCellReuseIdentifier: ItemViewCell.identifier)
        table.delegate = self
        table.dataSource = self
        
        NSLayoutConstraint.activate([
            table.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            table.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            table.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            table.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor)
        ])
    }
        
    func getData(){
        let items = theBox!.items
        
        for item in items{
            itemName.append(item.name)
            itemImage.append(item.image)
        }
    }
}

extension ItemsPastViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return theBox.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ItemViewCell.identifier, for: indexPath) as! ItemViewCell
        cell.itemImage.image = UIImage(named: "ball")
        cell.textLabel?.text = "\(itemName[indexPath.row]) \(theBox.date)"
        return cell
    }
    
    
}
