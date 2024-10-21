//
//  TestMainViewController.swift
//  DemoAppSwift
//
//  Created by Macbook pro on 21/10/24.
//

import UIKit

class TestMainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var dataCustomView: CustomViewDataFill!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tblView.delegate = self
        tblView.dataSource = self
        tblView.register(UINib(nibName: "DataTableViewCell", bundle: nil), forCellReuseIdentifier: "DataTableViewCell")
    
        dataCustomView.txtFirstName.text = "GTM"
        dataCustomView.txtLastName.text = "SAKHIYA"
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DataTableViewCell", for: indexPath) as? DataTableViewCell else {
            return UITableViewCell()
        }
        
        // Configure the cell (e.g., set the text for the label)
        cell.customLabel.text = "Row \(indexPath.row + 1)"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0 // Set the desired height for your rows
    }

}
