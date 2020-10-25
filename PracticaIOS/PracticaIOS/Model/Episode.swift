//
//  Episode.swift
//  PracticaIOS
//
//  Created by Luis Ignacio Garcia Torres on 25/10/2020.
//

import Foundation

class Episode {
    
    var id: Int
    var name: String?
    var date: String?
    var image: String?
    var episode: Int
    var season: Int
    var overview: String
    
    
    init(id: Int,
         name: String?,
         date: String?,
         image: String?,
         episode: Int,
         season: Int,
         overview: String)
    {
        self.id = id
        self.name = name
        self.date = date
        self.image = image
        self.episode = episode
        self.season = season
        self.overview = overview

    }
    
}

