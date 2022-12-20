//
//  ViewController.swift
//  FitnessApp
//
//  Created by Aleksandr on 19.12.2022.
//

import UIKit

class OverviewController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Overview"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.overview
    }
}

