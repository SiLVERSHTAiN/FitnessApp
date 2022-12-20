//
//  NavBarController.swift
//  FitnessApp
//
//  Created by Aleksandr on 20.12.2022.
//

import UIKit

final class NavBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        
        view.backgroundColor = .white
        navigationBar.isTranslucent = false // чтобы он не заканчивался по границе statusBar и будет окрашивать все за ним
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resources.Colors.titleGray,
            .font: Resources.Strings.Fonts.helveticaRegular(with: 17)
        ]
        navigationBar.addButtomBorder(with: Resources.Colors.separator, height: 1)
    }
}
