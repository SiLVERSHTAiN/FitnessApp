//
//  StatsItemView.swift
//  FitnessApp
//
//  Created by Aleksandr on 07.01.2023.
//

import UIKit

final class StatsItemView: WABaseView {
    
    private let Image = Resources.Image.Stats.heartRate
    
    private let statsLabel: UILabel = {
        let label = UILabel()
        label.font = Resources.Strings.Fonts.helveticaRegular(with: 17)
        label.textColor = Resources.Colors.inActive
        label.textAlignment = .center
        return label
    }()
    
    private let subtitleStatsLabel: UILabel = {
        let label = UILabel()
        label.font = Resources.Strings.Fonts.helveticaRegular(with: 10)
        label.textColor = Resources.Colors.titleGray
        label.textAlignment = .center
        return label
    }()
    
    private let statsImage: UIImage = {
        let image = UIImage()

        return image
    }()
}
