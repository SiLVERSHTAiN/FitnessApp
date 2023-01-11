//
//   YAxisView.swift
//  FitnessApp
//
//  Created by Aleksandr on 10.01.2023.
//

import UIKit

final class YAxisView: WABaseView {
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.distribution = .equalSpacing
        return view
    }()
    
    func configure(with data: [WAChartsView.Data]) {
        
        stackView.arrangedSubviews.forEach {
            $0.removeFromSuperview()
        }
        (0...9).reversed().forEach {
            let label = UILabel()
            label.font = Resources.Strings.Fonts.helveticaRegular(with: 9)
            label.textColor = Resources.Colors.inActive
            label.textAlignment = .right
            label.text = "\($0 * 10)"
            
            stackView.addArrangedSubview(label)
        }
    }
}

extension YAxisView {
    
    override func setupViews() {
        super.setupViews()
        
        setupView(stackView)

    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()

    }
}

