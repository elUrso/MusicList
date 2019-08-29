//
//  MusicCell.swift
//  MusicList
//
//  Created by Vitor Silva on 28/08/19.
//  Copyright © 2019 Vitor Silva. All rights reserved.
//

import UIKit

class MusicCell: UITableViewCell {

    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var musicLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
