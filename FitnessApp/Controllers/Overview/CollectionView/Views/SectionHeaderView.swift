//
//  SectionHeaderView.swift
//  FitnessApp
//
//  Created by Aleksandr on 22.02.2023.
//

import UIKit

final class SectionHeaderView: UICollectionReusableView {
    static let id = "SectionHeaderView"

    private let title: UILabel = {
        let lable = UILabel()
        lable.font = Resources.Strings.Fonts.helveticaRegular(with: 13)
        lable.textColor = Resources.Colors.inActive
        lable.textAlignment = .center
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

private extension SectionHeaderView {
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
