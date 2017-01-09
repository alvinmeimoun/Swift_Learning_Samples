
import Foundation
import UIKit

class TestCell : UITableViewCell {
    
    @IBOutlet weak var labelHistory: UILabel!
    
    func bind(title: String){
        self.labelHistory.text = title
    }
    
}
