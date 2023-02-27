//
//  TrainingCellView.swift
//  FitnessApp
//
//  Created by Aleksandr on 27.02.2023.
//

import UIKit

final class TrainingCellView: UICollectionViewCell {
    
    static let id = "TrainingCellView"
    
    private let checkmarkView: UIImageView = {
        let view = UIImageView()
        
        return view
    }()
    
    private let rightArrowView: UIImageView = {
        let view = UIImageView()
        view.image = Resources.Image.Overview.rightArrow
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
    
    func configure(with date: Date) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, MMMM dd"
        
        self.title.text = dateFormatter.string(from: date).uppercased()
    }
}

private extension TrainingCellView {
    func setupViews() {
        setupView(title)
    }
    
    func constaintViews() {
        NSLayoutConstraint.activate([
            title.centerXAnchor.constraint(equalTo: centerXAnchor),
            title.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    func configureAppearance() {}
}

