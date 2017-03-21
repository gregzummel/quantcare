//
//  Switch_TableViewCell.swift
//  Healthcaretake1
//
//  Created by Greg Szumel on 3/20/17.
//  Copyright © 2017 Greg Szumel. All rights reserved.
//

import UIKit

class Switch_TableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var bool_switch: UISwitch!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
