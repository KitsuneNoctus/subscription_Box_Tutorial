//
//  ItemsPastViewController.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 2/29/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

class ItemsPastViewController: UIViewController {

    var testItems = [Item]()
    
    //MARK: Setting up UITableView
    let table: UITableView = {
       let table = UITableView()
       table.translatesAutoresizingMaskIntoConstraints = false
       table.rowHeight = 100
       return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
            self.navigationController?.initRootViewController(vc: self)
            setTable()
            self.view.backgroundColor = .black
            getData()

            // Do any additional setup after loading the view.
        }
        
        func setTable(){
            self.view.addSubview(table)
            NSLayoutConstraint.activate([
                table.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
                table.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
                table.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
                table.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor)
            ])

            table.register(PastBoxesCell.self, forCellReuseIdentifier: PastBoxesCell.identifier)
            table.delegate = self
            table.dataSource = self
        }
        
        func getData(){
            let item = Item(name: "Thing 1", image: "")
            testItems.append(item)
            let item2 = Item(name: "Thing 2", image: "")
            testItems.append(item2)
        }
}

extension ItemsPastViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ItemViewCell.identifier, for: indexPath) as! ItemViewCell
            cell.setContents(item: testItems[indexPath.row])
        return cell
    }
    
    
}
