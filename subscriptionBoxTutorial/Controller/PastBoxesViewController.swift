//
//  PastBoxesViewController.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 2/8/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

//class PastBoxesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
class PastBoxesViewController: UIViewController {
    
    
//    let pastBoxesArray = [String](repeating: "Past Order", count: 10)
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return pastBoxesArray.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "pastBoxesCell", for: indexPath)
//        cell.textLabel?.text = "\(indexPath.row) \(pastBoxesArray[indexPath.row])"
//        return cell
//    }
//
//
    //MARK: Setting up UITableView
    let table: UITableView = {
       let table = UITableView()
       table.translatesAutoresizingMaskIntoConstraints = false
       table.rowHeight = 100
       return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        //This sets root view controller to itself so it can be navigated away from I think
        self.navigationController?.initRootViewController(vc: self)
//        setTable()
        self.view.backgroundColor = .black

        // Do any additional setup after loading the view.
    }
    
//    func setTable(){
//        self.view.addSubview(table)
//        NSLayoutConstraint.activate([
//            table.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
//            table.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
//            table.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
//            table.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor)
//        ])
//
//        table.register(PastBoxesCell.self, forCellReuseIdentifier: "PastBoxesCell")
//        table.delegate = self
//        table.dataSource = self
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
