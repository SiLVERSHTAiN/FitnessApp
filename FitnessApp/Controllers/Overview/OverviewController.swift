//
//  ViewController.swift
//  FitnessApp
//
//  Created by Aleksandr on 19.12.2022.
//

import UIKit

class OverviewController: BaseController {
    
    private let allWorkoutsButton = SecondaryButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.overview
    }
}

extension OverviewController {
    override func addViews() {
        super.addViews()
        
        view.addSubview(allWorkoutsButton)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            allWorkoutsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            allWorkoutsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130)
        ])
    }
    
    override func configure() {
        super.configure()
        
        allWorkoutsButton.translatesAutoresizingMaskIntoConstraints = false
        allWorkoutsButton.setTitle(Resources.Strings.Overview.allWorkuotsButton)
        allWorkoutsButton.addTarget(self, action: #selector(allWorkoutsButtonActions), for: .touchUpInside)
    }
}

@objc extension OverviewController {
    func allWorkoutsButtonActions() {
        print("All workout button tapped ")
    }
}


