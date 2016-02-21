//
//  ScheduleSpeakerViewCell.swift
//  TEDxOhioStateUniversity
//
//  Created by Ishmeet Grewal on 2/21/16.
//  Copyright © 2016 Ishmeet Grewal. All rights reserved.
//

import UIKit

class ScheduleSpeakerViewCell: UITableViewCell {

    @IBOutlet weak var speakerImage: UIImageView!
    @IBOutlet weak var speakerTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
