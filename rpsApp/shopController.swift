
import UIKit

class ShopController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coinsLabel.text = "Coins: \(AppData.coins)"
    }
    
    @IBOutlet weak var coinsLabel: UILabel!
    
}
