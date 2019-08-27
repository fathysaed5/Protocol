//
//  NameTableViewCell.swift
//  tany
//
//  Created by fathy  on 7/10/19.
//  Copyright © 2019 fathy . All rights reserved.
//

import UIKit

class NameTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabelTabol: UILabel!
    
    @IBOutlet weak var imagView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
