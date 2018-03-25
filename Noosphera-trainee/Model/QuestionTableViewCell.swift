//
//  QuestionTableViewCell.swift
//  Noosphera-trainee
//
//  Created by Лев Купчинов on 25.03.2018.
//  Copyright © 2018 Лев Купчинов. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    @IBOutlet weak var userPhoto: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var LocationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
