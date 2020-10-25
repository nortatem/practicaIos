//
//  DataController.swift
//  PracticaIOS
//
//  Created by Luis Ignacio Garcia Torres on 25/10/2020.
//

import Foundation

class DataController{
    
    static var shared = DataController()
    
    private init() {}
    var id: Int = 0
    
    private var rating: [Rating] = []
    
    
    
    func rateEpisode (_ episode: Episode, value: Double){
        if self.ratingForEpisode(episode) == nil {
            let rateValue = Rating.init(id: episode.id, rate: Rate.rated(value: value))
            rating.append(rateValue)
        }
    }
    
    
    
    func removeRateEpisode(_ episode: Episode){
        if let index = self.rating.firstIndex(where: { (rating) -> Bool in
                                            
            return episode.id == rating.id
        })
            {
                self.rating.remove(at: index)
            }
    }
    
    
    
    func ratingForEpisode(_ episode: Episode) -> Rating?{
        let filtered = rating.filter {
            $0.id == episode.id
        }
        
        return filtered.first
    }
    
    
    
}
