//
//  SectionTableViewController.swift
//  HomeWork2.7
//
//  Created by Alex Sander on 19.02.2020.
//  Copyright © 2020 Alex Sander. All rights reserved.
//

import UIKit

class SectionTableViewController: UITableViewController {
    
    var personList = Person.getPersonList()

    override func numberOfSections(in tableView: UITableView) -> Int {
        return personList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = personList[section]
        return person.fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)

        let person = personList[indexPath.section]
        cell.textLabel?.text = indexPath.row == 0 ? person.email : person.phone

        return cell
    }
}
