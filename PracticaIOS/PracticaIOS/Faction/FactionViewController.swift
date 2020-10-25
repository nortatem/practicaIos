//
//  FactionViewController.swift
//  PracticaIOS
//
//  Created by Luis Ignacio Garcia Torres on 25/10/2020.
//

import UIKit

class FactionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
 
    @IBOutlet weak var tableView: UITableView!
    
    let factions: [Faction] = [Faction.init(id: 1, name: "autobots", logo: "autobots", motto: "¡Vamos Autobots!"), Faction.init(id: 2, name: "decepticons", logo: "decepticons", motto: "¡Maldito Optimus Prime!"), Faction.init(id: 3, name: "dinobots", logo: "dinobots", motto: "¡WRAAARGG!"), Faction.init(id: 4, name: "Aerialbots", logo: "aerialbots", motto: "Transformemonos en Superion")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
    
    func setupUI(){
        self.title = "Facción"
        let nib = UINib.init(nibName: "FactionTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "FactionTableViewCell")
        
        tableView.delegate = self
        tableView.dataSource = self
 
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return factions.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "FactionTableViewCell", for: indexPath) as? FactionTableViewCell {
            let faction = factions[indexPath.row]
            cell.setFaction(faction)
            return cell
        }

       fatalError("1")
    }
    
}


/*
 func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     if let cell = tableView.dequeueReusableCell(withIdentifier: "FactionTableViewCell", for: indexPath) as? FactionTableViewCell {
         let faction = factions[indexPath.row].id
        // let factionDetailVC = FactionDetailViewController.init(title:  faction )
        // self.navigationController?.pushViewController(factionDetailVC, animated: true)
         tableView.deselectRow(at: indexPath, animated: true)
         

         /*
          }
      } else {
          let houseDetailVC = HouseDetailViewController.init(house: house)
          self.navigationController?.pushViewController(houseDetailVC, animated: true)
          tableView.deselectRow(at: indexPath, animated: true)
      }

          */
         
         return cell
     }

    fatalError("1")
 }



 
 */
