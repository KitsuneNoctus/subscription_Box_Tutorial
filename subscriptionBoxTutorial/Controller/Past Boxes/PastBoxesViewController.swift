//
//  PastBoxesViewController.swift
//  subscriptionBoxTutorial
//
//  Created by Henry Calderon on 2/8/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

class PastBoxesViewController: UIViewController{
//    Stole some code from fellow student. https://github.com/caocmai/subscription-box/blob/master/OnboardingRefactor/Controller/ListOfBoxes.swift
    
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
        setTable()
        getData()

        // Do any additional setup after loading the view.
    }
    
    func setTable(){
        self.view.addSubview(table)
        self.view.backgroundColor = .white
        
        table.register(PastBoxesCell.self, forCellReuseIdentifier: PastBoxesCell.identifier)
        
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
        let ball = Item(name: "Ball", image: "")
        
        let box = Box(date: "Feburaury 2020", items: [ball,ball,ball,ball])
        testBoxes.append(box)
        let box2 = Box(date: "Januarauryry 2020", items: [ball,ball,ball])
        testBoxes.append(box2)
        let box3 = Box(date: "December 2019", items: [ball,ball])
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
//        cell.boxImage.image = UIImage(named: "shipping")
        cell.imageView?.image = UIImage(named: "shipping")
        cell.setContents(box:testBoxes[indexPath.row])
        return cell
    }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = ItemsPastViewController()
        vc.theBox = testBoxes[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

