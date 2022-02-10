//
//  ViewController.swift
//  Post_UI
//
//  Created by BOICOMP21070028 on 9/2/2565 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listPost.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = listPost[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellPost", for: indexPath) as! CellPost
        cell.delegate = self
        cell.config(postItem: item)
        return cell
    }
}

extension ViewController: CellPostDelegate{

    func btnPress(title: String) {
        let alert = UIAlertController(title: "\(title)", message: "This is \(title).", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
     
}
