//
//  MyTableViewCell.swift
//  CollectionViewInTableView
//
//  Created by Sainath Bamen on 17/06/23.
//

import UIKit

class MyTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myData[mycollectionView.tag].product.count

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        cell.imageCV.image = UIImage(named: myData[mycollectionView.tag].product[indexPath.row])
        
        return cell
    }
    

    @IBOutlet weak var mycollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        mycollectionView.delegate = self
        mycollectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}

