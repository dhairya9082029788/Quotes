//
//  ViewController.swift
//  Best Quotes
//
//  Created by Dhairya on 20/07/21.
//

import UIKit
import SwiftUI

struct Person {
    var Names: String
    var images: UIImage
    var quotation: [String] 
    
    
}
class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    let Quotess = [Person(Names: "Mahatma Gandhi", images: #imageLiteral(resourceName: "mahatma-gandhi-arun-sivaprasad") , quotation: ["A man is but the product of his thoughts. What he thinks, he becomes." , "The greatness of humanity is not in being human, but in being humane." , "Earth provides enough to satisfy every man's needs, but not every man's greed." , "You must not lose faith in humanity. Humanity is like an ocean; if a few drops of the ocean are dirty, the ocean does not become dirty." , "An error does not become truth by reason of multiplied propagation, nor does truth become error because nobody sees it.Truth stands, even if there be no public support. It is self sustained" , "Live as if you were to die tomorrow. Learn as if you were to live forever." ]) ,
                   Person(Names: "Ratan Tata", images: #imageLiteral(resourceName: "ratan-tata-img") , quotation: ["I don’t believe in taking right decisions. I take decisions and then make them right." , "Business need to go beyond the interest of their companies to the communities they serve." , "People still believe what they read is necessarily the truth" , "If you want to walk fast, walk alone. But if you want to walk far, walk together." , "I have been constantly telling people to encourage people, to question the unquestioned and not to be ashamed to bring up new ideas, new processes to get things done"]),
                   Person(Names: "Sir Abdul kalam", images: #imageLiteral(resourceName: "Abdul kalam"), quotation: ["jalebi","Bai"]),
                   Person(Names: "Sardar Patel", images: #imageLiteral(resourceName: "SVP") , quotation: ["Sunil" , "Sharma"]),
                   Person(Names: "Dhirubhai Ambani", images: #imageLiteral(resourceName: "dhirubhai") , quotation: ["Vikas" , "parekh"]),
                   Person(Names: "Elon Musk", images: #imageLiteral(resourceName: "elonMusk") , quotation: ["Ram" , "Prakash"]),
                   Person(Names: "Albert Einstein", images: #imageLiteral(resourceName: "Albert") , quotation: ["Sandeep" , "gandhi"]),
                   Person(Names: "Harivansh Rai", images: #imageLiteral(resourceName: "harivansh") , quotation: ["Charan" , "Singh"])]
    @IBOutlet weak var CollectionView1: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.isNavigationBarHidden = true
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           return CGSize(width: 180, height: 180)
        
        }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Quotess.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as! CustomCell
        cell.Imgg1.image = Quotess[indexPath.row].images
        cell.lbll1.text = Quotess[indexPath.row].Names
        cell.Imgg1.layer.cornerRadius = cell.Imgg1.frame.height/2
        cell.Imgg1.layer.borderWidth = 4
        cell.lbll1.layer.borderWidth = 0.1
       
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "QuotesController")as! QuotesController
        vc.arrayvalue = Quotess[indexPath.row].quotation
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

class CustomCell: UICollectionViewCell{
    
    @IBOutlet weak var lbll1: UILabel!
    @IBOutlet weak var Imgg1: UIImageView!
    
}
