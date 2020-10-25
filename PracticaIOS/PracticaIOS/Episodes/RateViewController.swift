//
//  RateViewController.swift
//  PracticaIOS
//
//  Created by Luis Ignacio Garcia Torres on 18/10/2020.
//

import UIKit

class RateViewController: UIViewController{
    
    
    @IBOutlet weak var rateLabel: UILabel!
    @IBOutlet weak var rateSlider: UISlider!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var confirmButton: UIButton!
    
    
    @IBOutlet weak var star01: UIImageView!
    @IBOutlet weak var star02: UIImageView!
    @IBOutlet weak var star03: UIImageView!
    @IBOutlet weak var star04: UIImageView!
    @IBOutlet weak var star05: UIImageView!
    
    private var episode: Episode?
    
    convenience init(whitEpisode episode: Episode){
        self.init()
        self.episode = episode
        self.title = episode.name
    }
    
    
    override func viewDidLoad() {
            super.viewDidLoad()
        confirmButton.layer.cornerRadius = 4.0
        
        
    }
    
    @IBAction func sliderFire(_ sender: UISlider) {
        let rate = Double(Int(sender.value * 5) / 10)
        self.setRating(rate)
    }
    
    
    @IBAction func close(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    
    
    }
    
    
    @IBAction func confirm(_ sender: Any) {
        rateLabel.text = "OK!"

        let rate = Double(Int(rateSlider.value * 5) / 10)
        
        if let episode = self.episode{
            DataController.shared.rateEpisode(episode, value: rate)
            self.navigationController?.dismiss(animated: true, completion: nil)
        }
        
        //self.navigationController?.popViewController(animated: true)

    }
    

    
    func setRating(_ rating: Double){
               
        rateLabel.text = String(rating)
        
        self.setStarImage(star01, rating:  rating, minValue: 0)
        self.setStarImage(star02, rating:  rating, minValue: 2)
        self.setStarImage(star03, rating:  rating, minValue: 4)
        self.setStarImage(star04, rating:  rating, minValue: 6)
        self.setStarImage(star05, rating:  rating, minValue: 8)
        
    }
    
    
    
    func setStarImage(_ imageView:UIImageView, rating: Double, minValue: Double){
        //let positionDouble = Double(position * 2)
        if rating >= minValue + 1.0 && rating < minValue  + 2.0 {
            imageView.image = UIImage.init(systemName: "star.lefthalf.fill")
        } else if rating >= minValue + 2.0 {
                imageView.image = UIImage.init(systemName: "star.fill")
            } else {
                imageView.image = UIImage.init(systemName: "star")
            }
                                
                            
        }
    
    }


