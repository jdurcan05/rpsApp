//
//  ViewController.swift
//  rpsApp
//
//  Created by JAMES DURCAN on 11/11/22.
//

import UIKit

class AppData{
    static var playerChoice = 0
    static var wins = 0
    static var ties = 0
    static var losses = 0
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBOutlet weak var winLabelOutlet: UILabel!
    @IBOutlet weak var lossLabelOutlet: UILabel!
    
    @IBAction func scissorClick(_ sender: Any) {
        AppData.playerChoice = 1
        performSegue(withIdentifier: "winnerSegue", sender: self)
    }
    

    @IBAction func paperClick(_ sender: Any) {
        AppData.playerChoice = 2
        performSegue(withIdentifier: "winnerSegue", sender: self)
    }
    
    
    @IBAction func rockClick(_ sender: Any) {
        AppData.playerChoice = 3
        performSegue(withIdentifier: "winnerSegue", sender: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        winLabelOutlet.text = "\(AppData.wins)"
        lossLabelOutlet.text = "\(AppData.losses)"
    }
}

