//
//  DetailVC.swift
//  CollectionView
//
//  Created by Muhammad Hassan on 15/03/2022.
//

import UIKit

class DetailVC: UIViewController {
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblImage: UIImageView!
    
    var strname: String = ""
    var strimage: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblImage.image  = UIImage(named: strimage)
        lblName.text = strname
        
    }

}
