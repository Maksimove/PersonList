//
//  TabBarViewController.swift
//  PersonList
//
//  Created by fear on 24.05.2024.
//

import UIKit

final class TabBarViewController: UITabBarController {
    private var personList = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let viewControllers = viewControllers {
            for viewController in viewControllers {
                if let navigationVC = viewController as? UINavigationController {
                    if let listVC = navigationVC.topViewController as? PersonListViewController {
                        listVC.personList = personList
                    } else if let infoVC = navigationVC.topViewController as? PersonInfoViewController {
                        infoVC.personList = personList
                    }
                }
            }
        }
    }
}
