import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!
    
    let dogs : [Dogs] = [
        Dogs(name: "Foto 1", image: "perrito1"),
        Dogs(name: "Foto 2", image: "perritos2"),
        Dogs(name: "Foto 3", image: "perritos3"),
        Dogs(name: "Foto 4", image: "perritos3"),
        Dogs(name: "Foto 5", image: "perrito")

    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self
        // Do any additional setup after loading the view.
    }
}

extension ViewController:  UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dogs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath)
        as! ItemTableViewCell
        
        cell.Name.text = dogs [indexPath.row].name
        cell.petImage.image = UIImage(named: dogs[indexPath.row].image)
        
        return cell
    }
}

