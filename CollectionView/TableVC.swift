//
//  TableVC.swift
//  CollectionView
//
//  Created by Muhammad Hassan on 16/03/2022.
//

import UIKit

class TableVC: UITableViewController {



    let categrayname = ["Action","Drama","Movies","Music","Jokes"]
    override func viewDidLoad() {
        super.viewDidLoad()
        }


    override func numberOfSections(in tableView: UITableView) -> Int { 1 }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categrayname.count

    }

   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! cell
        cell.lblName.text = categrayname[indexPath.row]
        return cell
    }
}
class cell:UITableViewCell
 { @IBOutlet weak var lblName: UILabel! }
