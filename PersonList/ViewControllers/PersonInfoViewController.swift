//
//  PersonInfoViewController.swift
//  PersonList
//
//  Created by fear on 24.05.2024.
//

import UIKit

final class PersonInfoViewController: UITableViewController {
    var personList: [Person]!
}
    // MARK: - UITableViewDataSource
extension PersonInfoViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "showInfo", for: indexPath)
        let person = personList[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        content.text = indexPath.row == 0 ? person.phone : person.email
        
        content.image = indexPath.row == 0 ?
        UIImage(systemName: "phone.fill") :
        UIImage(systemName: "tray.fill")
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let fullNames = personList.map { $0.fullName }
        return fullNames[section]
    }

}
    // MARK: - UITableViewDelegate
extension PersonInfoViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
