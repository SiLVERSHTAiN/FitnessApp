//
//  SettingsController.swift
//  FitnessApp
//
//  Created by Aleksandr on 20.12.2022.
//

import UIKit

class SettingsController: WABaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Settings"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.title(for: .settings)
    }
}
