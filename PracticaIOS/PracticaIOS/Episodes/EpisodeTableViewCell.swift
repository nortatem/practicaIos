//
//  EpisodeTableViewCell.swift
//  PracticaIOS
//
//  Created by Luis Ignacio Garcia Torres on 25/10/2020.
//

import UIKit

class EpisodeTableViewCell: UITableViewCell{
    
    private weak var episode: Episode?
    //weak var delegate: EpisodeTableViewCellDelegate?

    
    @IBOutlet weak var thumb: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var rateButton: UIButton!
    
    
    var rateBlock: (() -> Void)?
    
    override func awakeFromNib() {
        thumb?.layer.cornerRadius = 20.0
        thumb?.layer.borderColor  = UIColor.white.withAlphaComponent(0.2).cgColor
        thumb?.layer.borderWidth  = 1.0
        rateButton?.layer.cornerRadius = 5
    }

    
    
    func setEpisode(_ episode: Episode) {
        self.episode = episode
        thumb.image = episode.image == nil ? nil : UIImage.init(named: episode.image!)
        title.text  = episode.name
        date.text   = episode.date
    }


    @IBAction func fireRate(_ sender: Any) {
        self.rateBlock?()
        
        
    }
    
    
    
}
