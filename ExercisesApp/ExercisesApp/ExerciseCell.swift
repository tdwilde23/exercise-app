//
//  ExerciseCell.swift
//  ExercisesApp
//
//  Created by Taylor Wilde on 3/31/22.
//

import UIKit

class ExerciseCell: UITableViewCell {
    @IBOutlet weak var exerciseNameLabel: UILabel!
    
    @IBOutlet weak var exerciseDescriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
