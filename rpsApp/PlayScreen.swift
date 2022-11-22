//
//  PlayScreen.swift
//  rpsApp
//
//  Created by JAMES DURCAN on 11/14/22.
//

import Foundation
import UIKit

class PlayScreen: UIViewController{
    
    override func viewDidLoad() {
        
        if AppData.playerChoice == 1{
            playerChoiceOutlet.image = UIImage(named: "SCISSORS")
        }
        else if AppData.playerChoice == 2{
            playerChoiceOutlet.image = UIImage(named: "PAPER")
        }
        else if AppData.playerChoice == 3{
            playerChoiceOutlet.image = UIImage(named: "ROCK")
        }
        var computerChoice = Int.random(in: 1...3)
        if computerChoice == 1{
            computerChoiceOutlet.image = UIImage(named: "SCISSORS")
        }
        else if computerChoice == 2{
            computerChoiceOutlet.image = UIImage(named: "PAPER")
        }
        else if computerChoice == 3{
            computerChoiceOutlet.image = UIImage(named: "ROCK")
        }
        winCheck(computerChoice)
        streakLabelOutlet.text = "Streak: \(AppData.streak)"
        coinsLabelOutlet.text = "Coins: \(AppData.coins)"
    }
    
    @IBOutlet weak var streakLabelOutlet: UILabel!
    @IBOutlet weak var playerChoiceOutlet: UIImageView!
    @IBOutlet weak var computerChoiceOutlet: UIImageView!
    
    @IBOutlet weak var coinsLabelOutlet: UILabel!
    
    
    @IBOutlet weak var winnerOutlet: UILabel!
    
    func winCheck(_ compChoice:Int){
        if compChoice == 1{
            if AppData.playerChoice == 1{
                AppData.ties+=1
                winnerOutlet.text = "You Tied!"
            }
            else if AppData.playerChoice == 3{
                AppData.wins+=1
                winnerOutlet.text = "You Won!"
                AppData.streak+=1
                AppData.coins += Int((pow(Double(AppData.streak),Double(AppData.streak))))
            }
            else if AppData.playerChoice == 2{
                AppData.losses+=1
                winnerOutlet.text = "You Lose!"
                AppData.streak = 0
            }
        }
        if compChoice == 2{
            if AppData.playerChoice == 2{
                AppData.ties+=1
                winnerOutlet.text = "You Tied!"
            }
            else if AppData.playerChoice == 1{
                AppData.wins+=1
                winnerOutlet.text = "You Won!"
                AppData.streak+=1
                AppData.coins += Int((pow(Double(AppData.streak),Double(AppData.streak))))
            }
            else if AppData.playerChoice == 3{
                AppData.losses+=1
                winnerOutlet.text = "You Lose!"
                AppData.streak = 0
            }
        }
        if compChoice == 3{
            if AppData.playerChoice == 3{
                AppData.ties+=1
                winnerOutlet.text = "You Tied!"
            }
            else if AppData.playerChoice == 2{
                AppData.wins+=1
                winnerOutlet.text = "You Won!"
                AppData.streak+=1
                AppData.coins += Int((pow(Double(AppData.streak),Double(AppData.streak))))
            }
            else if AppData.playerChoice == 1{
                AppData.losses+=1
                winnerOutlet.text = "You Lose!"
                AppData.streak = 0
            }
        }

    }
    
    @IBAction func backButton(_ sender: Any) {
        performSegue(withIdentifier: "unwind", sender: self)
    }
    
    
    
}
