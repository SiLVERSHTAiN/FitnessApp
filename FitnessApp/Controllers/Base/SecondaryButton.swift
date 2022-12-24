//
//  SecondaryButton.swift
//  FitnessApp
//
//  Created by Aleksandr on 21.12.2022.
//

import UIKit

public enum WAButtonType {
    case primary
    case secondary
}

final class SecondaryButton: UIButton {
    
    private var type: WAButtonType = .primary
    
    private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    private let iconView: UIImageView = {
        let iconView = UIImageView()
        iconView.image = Resources.Image.Common.allWorkuotsImage?.withRenderingMode(.alwaysTemplate)
        return iconView
    }()
    
    init(with type: WAButtonType) {
        super .init(frame: .zero)
        self.type = type
    
        addViews()
        layoutViews()
        configure()
    }
    
    required init?(coder: NSCoder) {
        super .init(frame: .zero)
        
        addViews()
        layoutViews()
        configure()
    }
    
    func setTitle(_ title: String?) {
        label.text = title
    }
}

private extension SecondaryButton {
    
    func addViews() {
        setupView(label)
        setupView(iconView)
    }
    
    func layoutViews() {
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: iconView.leadingAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
    }
    
    func configure() {
        
        switch type {
        case .secondary:
            label.textColor = Resources.Colors.inActive
            iconView.tintColor = Resources.Colors.inActive
            label.font = Resources.Strings.Fonts.helveticaRegular(with: 13)
        case .primary:
            backgroundColor = Resources.Colors.secondary
            layer.cornerRadius = 14
            label.textColor = Resources.Colors.active
            iconView.tintColor = Resources.Colors.active
            label.font = Resources.Strings.Fonts.helveticaRegular(with: 15)
        }
        makeSystem(self)
    }
}

