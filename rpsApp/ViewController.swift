//UI elements used:
//textField
//Button
//label
//imageview
//view controller
//navigation controller
//gesture recognizer
//Table View
//Programming elements used:
//variable
//function
//operators
//if else
//github
//enum
//Classes
//Array
//Optional
//if let statement





import UIKit

class AppData{
    static var playerChoice = 0
    static var wins = 0
    static var ties = 0
    static var losses = 0
    static var streak = 0
    static var coins = 0
    static var items: [StoreItem]?
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        AppData.items?.append(StoreItem.init(inItemTitle: "Cowboy Hat", inPlace: .head, inPrice: 30)) ?? print("Not working")
        AppData.items?.append(StoreItem.init(inItemTitle: "Cowboy Boots", inPlace: .feet, inPrice: 30))
        if let fake = AppData.items{
            print(fake)
            print(AppData.items)
        }
    }
    
    @IBOutlet weak var streakLabelOutlet: UILabel!
    @IBOutlet weak var winLabelOutlet: UILabel!
    @IBOutlet weak var lossLabelOutlet: UILabel!
    @IBOutlet weak var coinsOutlet: UILabel!
    
    
    
    
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
        streakLabelOutlet.text = "Streak: \(AppData.streak)"
        coinsOutlet.text = "Coins \(AppData.coins)"
    }
    
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        print("Unwinder")
        print(AppData.coins)
    }
}

