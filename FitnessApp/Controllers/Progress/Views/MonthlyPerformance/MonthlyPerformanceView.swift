//
//  MonthlyPerformanceView.swift
//  FitnessApp
//
//  Created by Aleksandr on 10.01.2023.
//

import UIKit

final class MonthlyPerformanceView: WABaseInfoView {
    
    private let chartsView = WAChartsView()
    
    func configure(with item: [WAChartsView.Data], topChartOffset: Int){
        chartsView.configure(with: item, topChartOffset: topChartOffset)
    }
    
}

extension MonthlyPerformanceView {
    override func setupViews() {
        super.setupViews()
        
        setupView(chartsView)
    }
    
    override func constraintViews () {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            chartsView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            chartsView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            chartsView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            chartsView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
    }
}
