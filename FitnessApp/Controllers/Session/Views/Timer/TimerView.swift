//
//  TimerView.swift
//  FitnessApp
//
//  Created by Aleksandr on 27.12.2022.
//

import UIKit

final class TimerView: WABaseInfoView {
    
    private let progressView: ProgressView = {
        let progressView = ProgressView()
        progressView.drawProgress(with: 0.7)
        
        return progressView
    }()
    
}

extension TimerView {
    override func setupViews() {
        super.setupViews()
        setupView(progressView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        NSLayoutConstraint.activate([
            progressView.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -40),
            progressView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 40),
            progressView.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            progressView.heightAnchor.constraint(equalTo: progressView.widthAnchor)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()

    }
}
