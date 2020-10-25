//
//  CastTableViewCell.swift
//  PracticaIOS
//
//  Created by Luis Ignacio Garcia Torres on 25/10/2020.
//

import UIKit

class CastTableViewCell: UITableViewCell{
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var heart: UIButton!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var role: UILabel!
    @IBOutlet weak var episodes: UILabel!
    
    
    override func awakeFromNib() {
        avatar.layer.cornerRadius = 20.0
        avatar.layer.borderWidth = 1.0
        avatar.layer.borderColor = UIColor.white.withAlphaComponent(0.2).cgColor
        
        
        
    }
    
    func setCast(_ cast: Cast){
        self.episodes.text = "\(cast.episode ?? 0) episodes"
        self.role.text = cast.role
        self.name.text = cast.fullName
        self.avatar.image = UIImage.init(named: cast.avatar ?? "")

        
    }
    
    
    
    
}
