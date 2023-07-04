//
//  userPreviousHighScoresTableViewCell.swift
//  MediMatch
//
//  Created by Devin King on 2/26/23.
//

import UIKit

class userPreviousHighScoresTableViewCell: UITableViewCell {

    @IBOutlet weak var userTrophyTableCellImageView: UIImageView!
    
    @IBOutlet weak var userExamTitleTableCellViewLabel: UILabel!
    
    @IBOutlet weak var userScoreAsPercentageLabelTableViewCell: UILabel!
    
    @IBOutlet weak var userTimeRemainingLabelTableViewCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

    
}

    

