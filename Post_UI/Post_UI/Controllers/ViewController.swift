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
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellPost", for: indexPath) as! CellPost
        cell.name.text = "Sarayut Thong-un"
        cell.profileImage.load(url: "https://c8.alamy.com/zooms/9/ece0745d430e41f4a45e947817e9285d/w8tgbd.jpg")
        cell.caption.text = "asdasdasdasdasdasdas"
//        tableView.reloadData()
        return cell
    }
    
    
}
