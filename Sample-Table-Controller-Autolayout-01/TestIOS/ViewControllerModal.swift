

import Foundation
import UIKit

class ViewControllerModel : UIViewController {
    
    @IBOutlet weak var btClose: UIButton!
    @IBAction func btCloseClick(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
