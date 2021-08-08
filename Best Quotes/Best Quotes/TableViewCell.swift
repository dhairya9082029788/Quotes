//
//  TableViewCell.swift
//  Best Quotes
//
//  Created by Dhairya on 21/07/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lbll2: UILabel!
    @IBOutlet weak var image2: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        image2.layer.cornerRadius = 22
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
