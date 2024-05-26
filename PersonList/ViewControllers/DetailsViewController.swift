//
//  PersonDetailsViewController.swift
//  PersonList
//
//  Created by fear on 24.05.2024.
//

import UIKit

final class DetailsViewController: UIViewController {
    
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = "\(person.fullName)"
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }
}
