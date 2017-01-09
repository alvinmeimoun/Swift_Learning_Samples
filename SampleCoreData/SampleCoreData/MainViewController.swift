

import UIKit
import CoreData

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var items : Array<Animal>?
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        //DEMO key value storage / no link with CoreData
        //READ
        let preferences = UserDefaults.standard
        print("Last saved date : " + (preferences.string(forKey: "LAST_START_DATE") ?? "default"))
        
        //Get date as string
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy"
        let dateString = dateFormatter.string(from: date)
        
        //WRITE
        preferences.set(dateString, forKey: "LAST_START_DATE")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        doReload()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func reloadButtonClick(_ sender: Any) {
        doReload()
    }
    
    func doReload(){
        let moc = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let animalsFetch = NSFetchRequest<NSFetchRequestResult>(entityName: "Animal")
        
        do {
            items = try moc.fetch(animalsFetch) as? [Animal]
            tableView.reloadData()
        } catch {
            fatalError("Failed to fetch animals: \(error)")
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalCellMain") as! AnimalCell
        
        cell.bind(name: items![indexPath.row].name!, race: items![indexPath.row].race!)
        
        return cell
    }
}

