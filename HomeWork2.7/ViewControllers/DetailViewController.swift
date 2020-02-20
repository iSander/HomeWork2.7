//
//  DetailViewController.swift
//  HomeWork2.7
//
//  Created by Alex Sander on 19.02.2020.
//  Copyright © 2020 Alex Sander. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fullNameLabel.text = person.fullName
        emailLabel.text = person.email
        phoneLabel.text = person.phone
    }
}
