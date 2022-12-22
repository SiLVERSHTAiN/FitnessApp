//
//  OverviewNavBar.swift
//  FitnessApp
//
//  Created by Aleksandr on 21.12.2022.
//

import UIKit

final class OverviewNavBar: BaseView {
    
    private let titleLabel = UILabel()
    private let allWorkoutsButton = SecondaryButton()
    private let addButton = UIButton()
}

extension OverviewNavBar {
    
    override func addViews() {
        super.addViews()
        
        addSubview(allWorkoutsButton)
        addSubview(titleLabel)
        addSubview(addButton)
    }
    
    override func layoutViews () {
        super.layoutViews()
    }
    
    override func configure() {
        super.configure()
        
        backgroundColor = .white
        addButtomBorder(with: Resources.Colors.separator, height: 1)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = Resources.Strings.NavBar.overview
        titleLabel.textColor = Resources.Colors.titleGray
        titleLabel.font = Resources.Strings.Fonts.helveticaRegular(with: 22)
        
        allWorkoutsButton.translatesAutoresizingMaskIntoConstraints = false
        allWorkoutsButton.setTitle(Resources.Strings.Overview.allWorkuotsButton)
        allWorkoutsButton.addTarget(self, action: #selector(allWorkoutsButtonActions), for: .touchUpInside)
        
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.setImage(Resources.Image.Common.addButtonImage, for: .normal)
        addButton.addTarget(self, action: #selector(addButtonActions), for: .touchUpInside)
    }
}

@objc extension OverviewNavBar {
    func allWorkoutsButtonActions() {
        print("All workout button tapped ")
    }
    
    func addButtonActions() {
        print("All workout button tapped ")
    }
}
