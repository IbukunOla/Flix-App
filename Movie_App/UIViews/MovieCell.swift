//
//  MovieCell.swift
//  Movie_App
//
//  Created by MacOS on 2/3/18.
//  Copyright © 2018 MacOS. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    var movie: Movie! {
        didSet{
            titleLabel.text = movie.title
            overviewLabel.text = movie.overview
            
            if movie.posterUrl != nil {
                posterImageView.af_setImage(withURL: movie.posterUrl)
            }
        }
    }

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
