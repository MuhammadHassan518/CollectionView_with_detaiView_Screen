//
//  ContactVCxibfile.swift
//  CollectionView
//
//  Created by Muhammad Hassan on 16/03/2022.
//

import UIKit

class ContactVCxibfile: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource {
   
    
    let categrayname = ["Action","Drama","Movies","Music","Jokes","Action","Drama","Movies","Music","Jokes","Action","Drama","Movies"]
    let movies = ["logo","logo2","logo3","logo4","logo5","logo","logo2","logo3","logo4","logo5","logo2","logo3","logo4"]
    
    @IBOutlet weak var lblContactcellxib: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        lblContactcellxib.register(UINib(nibName: "CellVC", bundle: nil), forCellWithReuseIdentifier: "ParentCell")
        lblContactcellxib.dataSource = self
        lblContactcellxib.delegate = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    // count number of items in one row of cell
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        categrayname.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : CellVC = lblContactcellxib.dequeueReusableCell(withReuseIdentifier: "ParentCell", for: indexPath) as! CellVC
        cell.lblLabel.text = categrayname[indexPath.row]
        cell.lblImage.image = UIImage(named: movies[indexPath.row])
        return cell
    }
}
