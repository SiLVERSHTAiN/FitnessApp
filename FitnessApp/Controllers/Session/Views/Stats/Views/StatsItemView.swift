//
//  StatsItemView.swift
//  FitnessApp
//
//  Created by Aleksandr on 07.01.2023.
//

import UIKit

enum StatsItem {
    case heartRate(value: String)
    case averagePace(value: String)
    case totalSteps(value: String)
    case totalDistance(value: String)
    
    var data: StatsItemView.ItemData {
        switch self {
        case .heartRate(let value):
            return .init(image: Resources.Image.Stats.heartRate,
                         value: value + "bmp",
                         title: Resources.Strings.Session.heartRate)
        case .averagePace(let value):
            return .init(image: Resources.Image.Stats.averagePace,
                         value: value + " / km",
                         title: Resources.Strings.Session.averagePace)
        case .totalSteps(let value):
            return .init(image: Resources.Image.Stats.totalSteps,
                         value: value,
                         title: Resources.Strings.Session.totalSteps)
        case .totalDistance(let value):
            return .init(image: Resources.Image.Stats.totalDistance,
                         value: value + "km",
                         title: Resources.Strings.Session.totalDistance)
        }
    }
}

final class StatsItemView: WABaseView {
    
    struct ItemData {
        let image: UIImage?
        let value: String
        let title: String
    }
    
    private let imageView = UIImageView()
    
    private let statsLabel: UILabel = {
        let label = UILabel()
        label.font = Resources.Strings.Fonts.helveticaRegular(with: 17)
        label.textColor = Resources.Colors.titleGray
        return label
    }()
    
    private let subtitleStatsLabel: UILabel = {
        let label = UILabel()
        label.text = Resources.Strings.Session.heartRate.uppercased()
        label.font = Resources.Strings.Fonts.helveticaRegular(with: 10)
        label.textColor = Resources.Colors.inActive
        return label
    }()
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        return view
    }()
    
    func configure(with item: StatsItem) {
        imageView.image = item.data.image
        statsLabel.text = item.data.value
        subtitleStatsLabel.text = item.data.title.uppercased()
    }
}

extension StatsItemView {
    
    override func setupViews() {
        super.setupViews()
        
        setupView(imageView)
        setupView(stackView)
        stackView.addArrangedSubview(statsLabel)
        stackView.addArrangedSubview(subtitleStatsLabel)
    }
    
    override func constraintViews () {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 23),
            imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor),
            
            stackView.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 15),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
    }
}
