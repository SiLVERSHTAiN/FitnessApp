//
//  TrainingCellView.swift
//  FitnessApp
//
//  Created by Aleksandr on 27.02.2023.
//

import UIKit

final class TrainingCellView: UICollectionViewCell {
    
    static let id = "TrainingCellView"
    
    private let checkmarkView = UIImageView(image: Resources.Image.Overview.notDone)
    
    private let rightArrowView = UIImageView(image: Resources.Image.Overview.rightArrow)
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
//        view.distribution = .fillProportionally
        view.spacing = 3
        return view
    }()
    
    private let title: UILabel = {
        let lable = UILabel()
        lable.font = Resources.Strings.Fonts.helveticaRegular(with: 17)
        lable.textColor = Resources.Colors.titleGray
        return lable
    }()
    
    private let subTitle: UILabel = {
        let lable = UILabel()
        lable.font = Resources.Strings.Fonts.helveticaRegular(with: 13)
        lable.textColor = Resources.Colors.inActive
        return lable
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constaintViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        
        setupViews()
        constaintViews()
        configureAppearance()
    }
    
    func configure(with title: String, subtitle: String, isDone: Bool) {
        self.title.text = title
        self.subTitle.text = subtitle
        
        checkmarkView.image = isDone ? Resources.Image.Overview.done : Resources.Image.Overview.notDone
    }
}

private extension TrainingCellView {
    func setupViews() {
        setupView(checkmarkView)
        setupView(rightArrowView)
        setupView(stackView)
        [title, subTitle].forEach(stackView.addArrangedSubview)
    }
    
    func constaintViews() {
        NSLayoutConstraint.activate([
            checkmarkView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            checkmarkView.centerYAnchor.constraint(equalTo: centerYAnchor),
            checkmarkView.widthAnchor.constraint(equalToConstant: 28),
            checkmarkView.heightAnchor.constraint(equalTo: checkmarkView.widthAnchor),
            
            stackView.leadingAnchor.constraint(equalTo: checkmarkView.trailingAnchor, constant: 15),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.trailingAnchor.constraint(equalTo: rightArrowView.leadingAnchor, constant: -15),
            
            rightArrowView.widthAnchor.constraint(equalToConstant: 7),
            rightArrowView.heightAnchor.constraint(equalToConstant: 12),
            rightArrowView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            rightArrowView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    func configureAppearance() {
        backgroundColor = .white
        layer.borderWidth = 1
        layer.borderColor = Resources.Colors.separator.cgColor
        
    }
}

