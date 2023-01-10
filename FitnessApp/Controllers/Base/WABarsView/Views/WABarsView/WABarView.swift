//
//  WABarView.swift
//  FitnessApp
//
//  Created by Aleksandr on 09.01.2023.
//

import UIKit

final class WABarView: WABaseView {
    
    private let heightParm: Double
    
    private let valueLabel: UILabel = {
        let label = UILabel()
        label.font = Resources.Strings.Fonts.helveticaRegular(with: 13)
        label.textColor = Resources.Colors.active
        return label
    }()
    
    private let barView: UIView = {
        let view = UIView()
        view.backgroundColor = Resources.Colors.active
        view.layer.cornerRadius = 2.5
        return view
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = Resources.Strings.Session.heartRate.uppercased()
        label.font = Resources.Strings.Fonts.helveticaRegular(with: 9)
        label.textColor = Resources.Colors.inActive
        return label
    }()
    
    init(data: Data) {
        self.heightParm = data.heightParm
        super.init(frame: .zero)
        titleLabel.text = data.title.uppercased()
        valueLabel.text = data.value
    }
    
    required init?(coder: NSCoder) {
        self.heightParm = 0
        super.init(frame: .zero)
    }
}

extension WABarView {
    
    struct Data {
        let value: String
        let title: String
        let heightParm: Double
    }
    
    override func setupViews() {
        super.setupViews()
        
        setupView(valueLabel)
        setupView(titleLabel)
        setupView(barView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            valueLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            valueLabel.heightAnchor.constraint(equalToConstant: 10),
            
            barView.topAnchor.constraint(equalTo: valueLabel.bottomAnchor, constant: 7),
            barView.centerXAnchor.constraint(equalTo: centerXAnchor),
            barView.widthAnchor.constraint(equalToConstant: 17),
            barView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: heightParm * 0.8),
            
            titleLabel.topAnchor.constraint(equalTo: barView.bottomAnchor, constant: 10),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 10)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()

    }
}

