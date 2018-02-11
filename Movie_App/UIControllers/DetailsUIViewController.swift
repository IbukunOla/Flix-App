//
//  DetailsUIViewController.swift
//  Movie_App
//
//  Created by MacOS on 2/10/18.
//  Copyright © 2018 MacOS. All rights reserved.
//

import UIKit

enum MovieKeys {
    static let baseUrl = "https://image.tmdb.org/t/p/w500"
    static let tl = "title"
    static let bdp = "backdrop_path"
    static let pp = "poster_path"
    static let rd = "release_date"
    static let ov = "overview"
}

class DetailsUIViewController: UIViewController {

    @IBOutlet weak var backdropImageView: UIImageView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    var movie: [String: Any]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let movie = movie{
            titleLabel.text = movie[MovieKeys.tl] as? String
            releaseDateLabel.text = movie[MovieKeys.rd] as? String
            overviewLabel.text = movie[MovieKeys.ov] as? String
            let backdropPathString = movie[MovieKeys.bdp] as! String
            let posterPathString = movie[MovieKeys.pp] as! String
            let backdropUrl = URL(string: MovieKeys.baseUrl + backdropPathString)!
            backdropImageView.af_setImage(withURL: backdropUrl)
            
            let posterPathUrl = URL(string: MovieKeys.baseUrl + posterPathString)!
            posterImageView.af_setImage(withURL: posterPathUrl)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
