//
//  ViewController.swift
//  FitnessApp
//
//  Created by Aleksandr on 19.12.2022.
//

import UIKit

class OverviewController: BaseController {
    
    private let navBar = OverviewNavBar()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.overview
    }
}

extension OverviewController {
    
    override func addViews() {
        super.addViews()
        
        view.addSubview(navBar)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            navBar.heightAnchor.constraint(equalToConstant: 113),
            
        ])
    }
    
    override func configure() {
        super.configure()
        
        navBar.translatesAutoresizingMaskIntoConstraints = false

    }
}




