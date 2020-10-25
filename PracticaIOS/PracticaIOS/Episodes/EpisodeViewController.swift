//
//  EpisodeViewController.swift
//  PracticaIOS
//
//  Created by Luis Ignacio Garcia Torres on 24/10/2020.
//

import UIKit

class EpisodeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
        
    @IBOutlet weak var seasonSegmented: UISegmentedControl!

    @IBOutlet weak var tableView: UITableView!
    

    var episodes: [Episode] = [
                            
                            Episode.init(id: 1, name: "Transporte al olvido", date: "6 de Octubre de 1984", image: "episodio1", episode: 1, season: 1, overview: "Volver a Cybertron con eneregia es la principal prioridad de .."),
                               Episode.init(id: 2, name: "Rueda hacia él", date: "7 de Octubre de 1984", image: "episodio2", episode: 2, season: 1, overview: "Con Megatron asumido como muerto, Starscream toma el poder y hace las cosas a su manera."),
                               Episode.init(id: 3, name: "Dividir y Conquistar", date: "8 de Octubre de 1984", image: "episodio3", episode: 3, season: 1, overview: "Megatron cree que la clave para una victoria de Decepticon radica en el Polo Norte..."),
                               Episode.init(id: 4, name: "Fuego en el Cielo", date: "9 de Octubre de 1984", image: "episodio4", episode: 4, season: 1, overview: "Un poco de músculo extra en las filas de Autobot ciertamente sería bienvenido.")
                               , Episode.init(id: 5, name: "La Guerra de los Dinobots", date: "10 de Octubre de 1984", image: "episodio5", episode: 5, season: 1, overview: "Ciertamente, los Dinobots le dan a los Autobots una ventaja sobre los Decepticons en la batalla.")
                               , Episode.init(id: 6, name: "La Última Sentencia (Parte 1)", date: "11 de Octubre de 1984", image: "episodio6", episode: 1, season: 2, overview: "Sparkplug se queda atrás cuando todos los Autobots creen que tienen un gran problema de Decepticon en Maharaja.")
                               , Episode.init(id: 7, name: "La Última Sentencia (Parte 2)", date: "12 de Octubre de 1984", image: "episodio7", episode: 2, season: 2, overview: "La presencia cercana de Cybertron ha enviado a la Tierra y a todos a ella al caos. Los Autobots y los Dinobots tienen...")
                               , Episode.init(id: 8, name: "Cuenta Regresiva hacia la Extinción", date: "13 de Octubre de 1984", image: "episodio8", episode: 3, season: 2, overview: "Megatron cree que la clave para una victoria de Decepticon radica en el Polo Norte...")
                               , Episode.init(id: 9, name: "Plaga de Insecticons", date: "14 de Octubre de 1984", image: "episodio9", episode: 4, season: 2, overview: "Los Insecticones han venido a la Tierra. Ciertamente le dan a los Autobots y los Decepticons una buena razón para darse cuenta.")
                               , Episode.init(id: 10, name: "Heavy Metal War", date: "15 de Octubre de 1984", image: "episodio10", episode: 5, season: 2, overview: "La guerra se llena de gente con la repentina introducción de los Constructicons.")
                               , Episode.init(id: 11, name: "Hogar es dónde están", date: "16 de Octubre de 1984", image: "episodio11", episode: 1, season: 3, overview: "os Autobots continúan defendiendo la ciudad, mientras preparan su nueva base en una vieja...")
                               , Episode.init(id: 12, name: "Enemigos de la Prehistoria", date: "17 de Octubre de 1984", image: "episodio12", episode: 2, season: 3, overview: "Megatrón revela su existencia a Isaac Sumdac, pero lo engaña diciéndole que es un Autobot.")
                               , Episode.init(id: 13, name: "La Emoción de la cacería", date: "18 de Octubre de 1984", image: "episodio13", episode: 3, season: 3, overview: "Buscando reconstruir su cuerpo, Megatrón necesita obtener un elemento llamado “Destronium")
                               , Episode.init(id: 14, name: "Sonido y furia", date: "19 de Octubre de 1984", image: "episodio14", episode: 4, season: 3, overview: "Megatrón crea a Soundwave, un robot en forma de un juguete para que Isaac se lo regale a su hija Sari en su cumpleaños.")
                               , Episode.init(id: 15, name: "La Supervivencia de los más fuertes", date: "20 de Octubre de 1984", image: "episodio15", episode: 5, season: 3, overview: "Acampando en el bosque, Prowl, Bumblebee y Sari descubren una energía cybertroniana...")
                                ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
     
    
    
    func setupUI() {
        self.title = "Temporadas"
        
        /*
        seasonSegmented.selectedSegmentTintColor = UIColor.black.withAlphaComponent(0.75)
        seasonSegmented.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        seasonSegmented.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.75)], for: .normal)
        */
        let nib = UINib.init(nibName: "EpisodeTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "EpisodeTableViewCell")
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }

    
    
    @IBAction func openRate(_ sender: Any) {
        let rateViewController = RateViewController()
        rateViewController.modalPresentationStyle = .fullScreen
        self.present(rateViewController, animated: true, completion: nil)
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 123
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return false
    }
    
    
    
    func numberOFSections(in tableView: UITableView) ->Int {
        return 1
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episodes.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "EpisodeTableViewCell", for: indexPath) as? EpisodeTableViewCell {
            let ep = episodes[indexPath.row]
            cell.setEpisode(ep)
            cell.rateBlock = { () -> Void in
                let rateViewController  = RateViewController.init(whitEpisode: ep)
                let navigationController = UINavigationController.init(rootViewController: rateViewController)
                self.present(navigationController, animated: true, completion: nil)
            }
            return cell
        }

       fatalError("Error")
    }
    
}
