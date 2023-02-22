//
//  SectionHeaderView.swift
//  FitnessApp
//
//  Created by Aleksandr on 22.02.2023.
//

import UIKit

final class SectionHeaderView: UICollectionReusableView {
    static let id = "SectionHeaderView"
    
    private lazy var title = UILabel()
    
    
}

private extension SectionHeaderView {
    
    func setupViews() {
        setupView(title)
    }
    
    func constraintsViews() {
        NSLayoutConstraint.activate([
            title.centerXAnchor.constraint(equalTo: centerXAnchor),
            title.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
