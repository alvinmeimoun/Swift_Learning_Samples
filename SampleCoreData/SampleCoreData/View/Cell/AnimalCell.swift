

import Foundation
import UIKit

class AnimalCell : UITableViewCell {
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelRace: UILabel!
    
    func bind(name: String, race: String){
        self.labelTitle.text = name
        self.labelRace.text = race
    }
}
