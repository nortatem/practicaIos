//
//  Rating.swift
//  PracticaIOS
//
//  Created by Luis Ignacio Garcia Torres on 25/10/2020.
//

import Foundation


enum Rate {
    case unrated
    case rated(value: Double)
    
}


struct Rating{
    var id: Int
    var rate: Rate
    
    
}
