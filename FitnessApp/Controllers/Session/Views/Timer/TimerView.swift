//
//  TimerView.swift
//  FitnessApp
//
//  Created by Aleksandr on 27.12.2022.
//

import UIKit

final class TimerView: WABaseInfoView {
    
    private let progressView = ProgressView()
    
    private var timer = Timer()
    private var timerProgress: CGFloat = 0
    private var timerDuration = 0.0
    
    func configure(with duration: Double, progress: Double) {
        timerDuration = duration
        
        let tempCurrentValue = progress > duration ? duration : progress
        let goalValueDevider = duration == 0 ? 1 : duration
        let percent = tempCurrentValue / goalValueDevider
        
        progressView.drawProgress(with: CGFloat(percent))
    }
    
    func startTimer() {
        
    }
    
    func pauseTimer() {
        
    }
    
    func stopTimer() {
        
    }
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
