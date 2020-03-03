//
//  PastBoxesViewController.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 2/8/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

class PastBoxesViewController: UIViewController{
//class PastBoxesViewController: UIViewController {
    
    
//    let pastBoxesArray = [String](repeating: "Past Order", count: 10)
    var testBoxes = [Box]()
//
//
    //MARK: Setting up UITableView
    let table: UITableView = {
       let table = UITableView()
       table.translatesAutoresizingMaskIntoConstraints = false
       table.rowHeight = 100
       return table
    }()
//MARK: View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        //This sets root view controller to itself so it can be navigated away from I think
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
        let box = Box(date: "Feburaury 2020", items:[])
        testBoxes.append(box)
        let box2 = Box(date: "Januarauryry 2020", items:[])
        testBoxes.append(box2)
        let box3 = Box(date: "December 2019", items:[])
        testBoxes.append(box3)
    }


}

//MARK: Extensions
extension PastBoxesViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return testBoxes.count
        }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PastBoxesCell.identifier, for: indexPath) as! PastBoxesCell
//        cell.textLabel?.text = "\(indexPath.row) \(testBoxes[indexPath.row].date)"
        cell.setContents(box:testBoxes[indexPath.row])
        return cell
    }
        
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let vc = ItemsPastViewController()
//        vc.testItems = testBoxes[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
//        self.navigationController?.popToViewController(vc, animated: true)
    }
}

