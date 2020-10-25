//
//  FactionDetailViewController.swift
//  PracticaIOS
//
//  Created by Luis Ignacio Garcia Torres on 25/10/2020.
//

import UIKit

class FactionDetailViewController: UIViewController{
 
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var factionLabel: UILabel!
    @IBOutlet weak var mottoLabel: UILabel!
    
    var faction: Faction? {
        didSet {
            self.title = title
            avatar.image = UIImage.init(named: self.faction?.logo ?? "")
            factionLabel.text = self.faction?.name
            mottoLabel.text = self.faction?.motto
        }
    }


}
