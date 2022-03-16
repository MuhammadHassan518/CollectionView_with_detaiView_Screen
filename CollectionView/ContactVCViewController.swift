//
//  ContactVCViewController.swift
//  CollectionView
//
//  Created by Muhammad Hassan on 16/03/2022.
//

import UIKit

class ContactVCViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var TableView: UITableView!
    
    var sectionArrayNames = ["Usman","Hammad","Zohaib","Hassan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate = self
        TableView.dataSource = self
        TableView.register(UINib(nibName: "ContactVCxibfile", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int { 4 }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let HeaderView = UIView()
        HeaderView.backgroundColor = .green
        let HeaderTitle = UILabel(frame: CGRect(x: 10, y: 10, width: TableView.frame.size.width, height: 20))
        HeaderTitle.text = sectionArrayNames[section]
        HeaderTitle.textAlignment = .center
        HeaderView.addSubview(HeaderTitle)
        return HeaderView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat { 40 }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {5}
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {160}
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : ContactVCxibfile = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ContactVCxibfile
        return cell
    }
}

class cells: UITableViewCell
{ @IBOutlet weak var lblContact: UILabel! }
