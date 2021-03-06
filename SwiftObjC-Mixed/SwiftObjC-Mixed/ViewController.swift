
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        MyClass.staticFunc("test")
        MyClass().normalFunc("test")
        
        let testRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageClickCallback))

        imageView.isUserInteractionEnabled = true //Enable touch catching
        imageView.addGestureRecognizer(testRecognizer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc //To be visible in objc
    func imageClickCallback(){
        print("tapped")
    }

}

