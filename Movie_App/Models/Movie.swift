//
//  Movie.swift
//  Movie_App
//
//  Created by Ibukun on 5/2/18.
//  Copyright © 2018 MacOS. All rights reserved.
//

import Foundation

class Movie{
    var title: String
    var overview: String
    var posterUrl: URL?
    var releaseDate: String
    var backdropUrl: String
    
    
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No Title"
        overview = dictionary["overview"] as? String ?? "No overview"
        let posterPathString = movie["poster_path"] as! String
        let baseUrlString = "https://image.tmdb.org/t/p/w500"
        posterUrl = URL(string: baseUrlString + posterPathString)!
        releaseDate = dictionary["release_date"] as? String ?? "No Release Date"
        let backdropPathString = movie["poster_path"] as! String
        backdropUrl = URL(string: baseUrlString + backdropPathString)
    }
    
    class func movies(dictionaries: [[String: Any]]) -> [Movie] {
        var movies: [Movie] = []
        for dict in dictionaries {
            let movies = Movie(dictionary: dict)
            movies.append(movie)
        }
        return movies
    }
}
