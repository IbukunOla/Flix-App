//
//  DetailsUIViewController.swift
//  Movie_App
//
//  Created by MacOS on 2/10/18.
//  Copyright © 2018 MacOS. All rights reserved.
//

import UIKit

class DetailsUIViewController: UIViewController {

    @IBOutlet weak var backdropImageView: UIImageView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let movie = movie{
            titleLabel.text = movie.title
            releaseDateLabel.text = movie.releaseDate
            overviewLabel.text = movie.overview
            if movie.backdropUrl != nil {
                backdropImageView.af_setImage(withURL: backdropUrl)
            }
            if movie.posterUrl != nil {
                posterImageView.af_setImage(withURL: posterPathUrl)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
