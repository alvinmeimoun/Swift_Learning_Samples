

import Foundation
import UIKit
import CoreData

class AddViewController : UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var raceField: UITextField!
    
    private func doValid(){
        if nameField.text != nil && raceField != nil && !nameField.text!.isEmpty && !raceField.text!.isEmpty {
            //Do save
            let moc = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            
            let animal = NSEntityDescription.insertNewObject(forEntityName: "Animal", into: moc) as! Animal
            animal.name = nameField.text
            animal.race = raceField.text
            
            do {
                try moc.save()
                doClose()
            } catch {
                fatalError("Failed to fetch animals: \(error)")
            }
            
        }
    }
    
    private func doClose(){
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func closeButtonClick(_ sender: Any) {
        doClose()
    }
    
    
    @IBAction func addButtonClick(_ sender: Any) {
        doValid()
    }
}
