//
//  CastViewController.swift
//  PracticaIOS
//
//  Created by Luis Ignacio Garcia Torres on 25/10/2020.
//

import UIKit

class CastViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
     
    @IBOutlet weak var tableView: UITableView!
    
    let cast: [Cast] = [Cast.init(id: 1, avatar: "optimus", fullName: "Optimus Prime", role: "Optimus Prime", episode: 87, birth: "Unknow", placeBirth: "Cybertron"), Cast.init(id: 2, avatar: "megatron", fullName: "Megatron", role: "Megatron", episode: 87, birth: "332", placeBirth: "Cybertron"), Cast.init(id: 3, avatar: "bumble", fullName: "BumbleBee", role: "BumbleBee", episode: 23, birth: "77", placeBirth: "Cybertron"), Cast.init(id: 4, avatar: "star", fullName: "StarScream", role: "StarScream", episode: 37, birth: "345", placeBirth: "Cybertron"), Cast.init(id: 5, avatar: "grimlock", fullName: "Grimlock", role: "Grimlock", episode: 27, birth: "321", placeBirth: "Cybertron"), Cast.init(id: 6, avatar: "wind", fullName: "Wind", role: "Wind", episode: 32, birth: "112", placeBirth: "Cybertron")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
    
    func setupUI(){
        self.title = "Casting"
        let nib = UINib.init(nibName: "CastTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CastTableViewCell")
        
        tableView.delegate = self
        tableView.dataSource = self
 
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 123
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cast.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CastTableViewCell", for: indexPath) as? CastTableViewCell {
            let actor = cast[indexPath.row]
            cell.setCast(actor)
            return cell
        }

       fatalError("1")
    }
    
}
