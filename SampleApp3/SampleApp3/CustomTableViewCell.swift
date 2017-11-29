//
//  CustomTableViewCell.swift
//  SampleApp3
//
//  Created by 川満 翔 on 2017/11/29.
//  Copyright © 2017年 川満 翔. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
