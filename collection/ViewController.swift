//
//  ViewController.swift
//  collection
//
//  Created by MAC on 13/02/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrData = [UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        arrData = [#imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "1"),#imageLiteral(resourceName: "4"),#imageLiteral(resourceName: "3"),#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "4"),#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "4"),#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "4"),#imageLiteral(resourceName: "3"),#imageLiteral(resourceName: "1"),#imageLiteral(resourceName: "3"),#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "1"),#imageLiteral(resourceName: "6"),#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "4"),#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "6"),#imageLiteral(resourceName: "6"),#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "4"),#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "1"),#imageLiteral(resourceName: "4"),#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "4"),#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "6"),#imageLiteral(resourceName: "5")]
        
    }


}

extension ViewController: UICollectionViewDelegate , UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.imgView.image = arrData[indexPath.row]
        return cell
        
    }
    
    
    
    
    
}

extension ViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let collectionWidth = collectionView.bounds.width
        return CGSize(width: (collectionWidth/2) - 10, height: (collectionWidth/2) - 10)
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return -5
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 0, left: 5, bottom: 0, right: 5)
    }
}
