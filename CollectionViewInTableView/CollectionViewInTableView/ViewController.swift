//
//  ViewController.swift
//  CollectionViewInTableView
//
//  Created by Sainath Bamen on 17/06/23.
//

import UIKit
var myData = [
    ProductData(sectionType: "Phones", product: ["iphone","iphone1","oppo","iphone","oppo"]),
    ProductData(sectionType: "TV", product: ["tv1","tv2","tv3","tv4","tv5"]),
    ProductData(sectionType: "Headphones", product: ["head1","head1","head1","head1","head1"]),
    ProductData(sectionType: "Clothing", product: ["tshirt1.jpeg","tshirt2.jpeg","tshirt3.jpeg","tshirt4.jpeg","tshirt5.jpeg"]),
    ProductData(sectionType: "Laptops", product: ["dell1.jpeg","dell2.jpeg","dell3.jpeg","dell4.jpeg","dell5.jpeg"])
]


class ViewController: UIViewController {
    
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return myData.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return myData[section].sectionType
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        cell.mycollectionView.tag = indexPath.section
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        view.tintColor = .yellow
    }
    
    
}

