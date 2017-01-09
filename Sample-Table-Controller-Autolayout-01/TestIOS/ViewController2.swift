import Foundation
import UIKit

class ViewController2 : UIViewController {
    @IBOutlet weak var labelItem: UILabel!
    
    var item : String = "default"
    
    override func viewDidLoad() {
        self.labelItem.text = item
    }
    
}
