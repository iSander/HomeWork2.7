//
//  ViewController.swift
//  HomeWork2.7
//
//  Created by Alex Sander on 19.02.2020.
//  Copyright © 2020 Alex Sander. All rights reserved.
//

import UIKit

class RawTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var personList = Person.getPersonList()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! DetailViewController
            detailVC.person = personList[indexPath.row]
        }
    }
}

extension RawTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        
        let person = personList[indexPath.row]
        cell.textLabel?.text = person.fullName

        return cell
    }
}

