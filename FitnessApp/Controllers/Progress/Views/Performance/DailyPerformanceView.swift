//
//  DailyPerformanceView.swift
//  FitnessApp
//
//  Created by Aleksandr on 10.01.2023.
//

import UIKit

final class DailyPerformanceView: WABaseInfoView {
    
    private let barsView = WABarsView()
    
    func configure(with item: [WABarView.Data]){
        barsView.configure(with: item)
    }
    
}

extension DailyPerformanceView {
    override func setupViews() {
        super.setupViews()
        
        setupView(barsView)
    }
    
    override func constraintViews () {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            barsView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            barsView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            barsView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            barsView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
    }
}
