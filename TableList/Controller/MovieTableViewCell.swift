//
//  MovieTableViewCell.swift
//  TableList
//
//  Created by valters.steinblums on 12/08/2022.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTitleCell: UILabel?
    @IBOutlet weak var movieGenreCell: UILabel?
    @IBOutlet weak var movieYearCell: UILabel?
    @IBOutlet weak var moviePosterCell: UIImageView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
