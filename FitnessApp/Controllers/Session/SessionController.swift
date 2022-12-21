//
//  SessionController.swift
//  FitnessApp
//
//  Created by Aleksandr on 20.12.2022.
//

import UIKit

class SessionController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.session
        
        addNavBarButton(at: .left, with: Resources.Strings.Session.navBarLeft)
        addNavBarButton(at: .right, with: Resources.Strings.Session.navBarRight)
    }
    
    override func navBarLeftButtonHandler() {
        print("Session NavBar left button tapped")
    }
}
