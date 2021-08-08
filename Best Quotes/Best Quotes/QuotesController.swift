//
//  QuotesController.swift
//  Best Quotes
//
//  Created by Dhairya on 20/07/21.
//

import UIKit


class QuotesController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var TableView: UITableView!
    var arrayvalue: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
      

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayvalue.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        
        cell.lbll2.text = arrayvalue[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "endController")as! endController
        vc.str = indexPath.row
        vc.Quotess = arrayvalue
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}

