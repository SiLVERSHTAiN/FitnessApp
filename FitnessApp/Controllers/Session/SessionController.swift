//
//  SessionController.swift
//  FitnessApp
//
//  Created by Aleksandr on 20.12.2022.
//

import UIKit
import SwiftUI

class SessionController: BaseController {

    private let timerView: TimerView = {
        let view = TimerView()
        
        return view
    }()
    
    override func navBarLeftButtonHandler() {
        print("Session NavBar left button tapped")
    }
}

extension SessionController {
    
    override func setupViews() {
        super.setupViews()
        view.setupView(timerView)
        
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        title = Resources.Strings.NavBar.session
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.title(for: .session)
        
        addNavBarButton(at: .left, with: Resources.Strings.Session.navBarLeft)
        addNavBarButton(at: .right, with: Resources.Strings.Session.navBarRight)
    }
}

