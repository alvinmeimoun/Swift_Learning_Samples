
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    private var items : Array<String>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        items = ["Item 1", "A", "B"]
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func bt1Click(_ sender: Any) {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellTest") as! TestCell
        
        cell.bind(title: items![indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items![indexPath.row]
        
        let newVC = self.storyboard!.instantiateViewController(withIdentifier: "viewControllerDetails") as! ViewController2
        newVC.item = item
        
        self.navigationController?.pushViewController(newVC, animated: true)
    }
    

}

