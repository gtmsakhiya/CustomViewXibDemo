//
//  DataTableViewCell.swift
//  DemoAppSwift
//
//  Created by Macbook pro on 21/10/24.
//

import UIKit

class DataTableViewCell: UITableViewCell {
    
    @IBOutlet weak var customLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
