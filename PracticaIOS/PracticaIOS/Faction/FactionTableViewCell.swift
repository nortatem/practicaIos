//
//  FactionTableViewCell.swift
//  PracticaIOS
//
//  Created by Luis Ignacio Garcia Torres on 25/10/2020.
//

import UIKit

class FactionTableViewCell: UITableViewCell{

    private weak var faction: Faction?


    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var motto: UILabel!
    

    
    override func awakeFromNib() {
        logo.layer.cornerRadius = 20.0
        logo.layer.borderWidth = 1.0
        logo.layer.borderColor = UIColor.white.withAlphaComponent(0.2).cgColor
    }
    
    
   
    func setFaction(_ faction: Faction) {
        self.faction = faction
        
        logo.image = faction.logo == nil ? nil : UIImage.init(named: faction.logo!)
        
        motto.text  = faction.motto
    }



    
    
}
