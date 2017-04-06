//
//  AutoTableViewCell.swift
//  AutoLayoutSwift
//
//  Created by mac on 17/4/6.
//  Copyright © 2017年 mac. All rights reserved.
//

import UIKit

class AutoTableViewCell: UITableViewCell {

    @IBOutlet weak var myDescripLabel: UILabel!
    @IBOutlet weak var myTitleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
