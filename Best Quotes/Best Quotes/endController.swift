//
//  endController.swift
//  Best Quotes
//
//  Created by Dhairya on 22/07/21.
//

import UIKit

class endController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    var str = 0
    @IBOutlet weak var collectionView2: UICollectionView!
    var Quotess = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 400, height: 750)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Quotess.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionView2", for: indexPath)as! CollectionView2
        cell.lbl3.text = Quotess[indexPath.row]
        cell.lbl3.layer.cornerRadius = 10
       // self.collectionView2.scrollToItem(at:, at: .centeredHorizontally, animated: true)
        return cell
    }

}
class CollectionView2: UICollectionViewCell {
    
    @IBOutlet weak var lbl3: UILabel!
}

