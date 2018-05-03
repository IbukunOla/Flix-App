//
//  MovieApiManager.swift
//  Movie_App
//
//  Created by Ibukun on 5/3/18.
//  Copyright © 2018 MacOS. All rights reserved.
//

import Foundation

class MovieApiManager {
    static let baseUrl = "https://api.themoviedb.org/3/movie/"
    static let apiKey = "a07e22bc18f5cb106bfe4cc1f83ad8ed"
    var session: URLSession
    
    init() {
        session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
    }
    
    func nowPlayingMovies(completion: @escaping ([Movie]?, Error?) -> ()) {
        let url = URL(string: MovieApiManager.baseUrl + "now_playing?api_key=\(MovieApiManager.apiKey)")!
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let task = session.dataTask(with: request) { (data, response, error) in
            if let data = data {
                let dataDic = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
                let movieDic = dataDic["results"] as! [[String: Any]]
                
                let movies = Movie.movies(dictionaries: movieDic)
                completion(movies, nil)
            } else {
                completion(nil, error)
            }
        }
        task.resume()
    }
}
