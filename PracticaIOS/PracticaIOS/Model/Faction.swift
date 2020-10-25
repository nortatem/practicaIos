//
//  Faction.swift
//  PracticaIOS
//
//  Created by Luis Ignacio Garcia Torres on 25/10/2020.
//

import Foundation

class Faction {
    
    var id: Int
    var name: String?
    var logo: String?
    var motto: String?

    init(id: Int,
         name: String?,
         logo: String?,
         motto: String?)
    
    {
        self.id = id
        self.name = name
        self.logo = logo
        self.motto = motto
    }

}
