//
//  StatsView.swift
//  FitnessApp
//
//  Created by Aleksandr on 07.01.2023.
//

import UIKit

final class StatsView: WABaseInfoView {
    
    private let itemView = StatsItemView()
    
    override func setupViews() {
        super.setupViews()
        
        setupView(itemView)
        itemView.configure(with: StatsItemView.StatsItem(image: Resources.Image.Stats.heartRate,
                                                         value: "155 bpm",
                                                         title: Resources.Strings.Session.heartRate.uppercased()))
        
        NSLayoutConstraint.activate([
            itemView.topAnchor.constraint(equalTo: topAnchor, constant: 35),
            itemView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15)
        ])
    }
    
}
