//
//  ViewController.swift
//  TableViewApplication
//
//  Created by Canadore Student on 2023-03-27.
//  Copyright © 2023 Canadore Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTableView.delegate = self
        myTableView.dataSource = self
    }

    


}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Demo Cell \(indexPath.row)"
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Cell \(indexPath.row) selected")
    }


    
}

