//
//  SpeakerTableViewCell.swift
//  TEDxOhioStateUniversity
//
//  Created by Ishmeet Grewal on 1/24/16.
//  Copyright © 2016 Ishmeet Grewal. All rights reserved.
//

import UIKit

class SpeakerTableViewCell: UITableViewCell {

    // Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
