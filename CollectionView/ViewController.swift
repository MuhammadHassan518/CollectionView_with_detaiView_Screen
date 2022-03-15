//
//  ViewController.swift
//  CollectionView
//
//  Created by Muhammad Hassan on 15/03/2022.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
//    @IBOutlet weak var lblName: UILabel!
    

    @IBOutlet weak var ParentCV: UICollectionView!

    let categrayname = ["Action","Drama","Movies","Music","Jokes","Action","Drama","Movies","Music","Jokes","Action","Drama","Movies","Music","Jokes","Action","Drama","Movies","Music","Jokes","Action","Drama","Movies","Music","Jokes","Action","Drama","Movies","Music","Jokes","Action","Drama","Movies","Music","Jokes","Action","Drama","Movies","Music","Jokes","Action","Drama","Movies","Music","Jokes","Action","Drama","Movies","Music","Jokes","Action","Drama","Movies","Music","Jokes","Action","Drama","Movies","Music","Jokes"]
    let movies = ["logo","logo2","logo3","logo4","logo5","logo","logo2","logo3","logo4","logo5","logo","logo2","logo3","logo4","logo5","logo","logo2","logo3","logo4","logo5","logo","logo2","logo3","logo4","logo5","logo","logo2","logo3","logo4","logo5","logo","logo2","logo3","logo4","logo5","logo","logo2","logo3","logo4","logo5","logo","logo2","logo3","logo4","logo5","logo","logo2","logo3","logo4","logo5","logo","logo2","logo3","logo4","logo5","logo","logo2","logo3","logo4","logo5"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ParentCV.delegate = self
        ParentCV.dataSource = self
        ParentCV.register(UINib(nibName: "CellVC", bundle: nil), forCellWithReuseIdentifier: "ParentCell")
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
        {
            let width  = (view.frame.width)/3.5
                let height  = (view.frame.height)/4
                return CGSize(width: width, height: height)
        }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categrayname.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : CellVC = ParentCV.dequeueReusableCell(withReuseIdentifier: "ParentCell", for: indexPath) as! CellVC
        
        cell.lblLabel.text = categrayname[indexPath.row]
        cell.lblImage.image = UIImage(named: movies[indexPath.row])
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {1}
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "DetailVC") as! DetailVC
        self.navigationController?.pushViewController(secondVC, animated: true)
        secondVC.strimage = movies[indexPath.row]
        secondVC.strname = categrayname[indexPath.row]
        }
}

