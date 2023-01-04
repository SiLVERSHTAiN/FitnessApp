//
//  TimerView.swift
//  FitnessApp
//
//  Created by Aleksandr on 27.12.2022.
//

import UIKit

enum TimerState {
    case isRuning
    case isPaused
    case isStopped
}

final class TimerView: WABaseInfoView {
    
    private let elapsedTimeLable: UILabel = {
        let lable = UILabel()
        lable.text = Resources.Strings.Session.elapsedTime
        lable.font = Resources.Strings.Fonts.helveticaRegular(with: 14)
        lable.textColor = Resources.Colors.inActive
        lable.textAlignment = .center
        return lable
    }()
    
    private let elapsedTimeValueLable: UILabel = {
        let lable = UILabel()
        lable.text = "02:15"
        lable.font = Resources.Strings.Fonts.helveticaRegular(with: 46)
        lable.textColor = Resources.Colors.titleGray
        lable.textAlignment = .center
        return lable
    }()
    
    private let remainingTimeLable: UILabel = {
        let lable = UILabel()
        lable.text = Resources.Strings.Session.remainigTime
        lable.font = Resources.Strings.Fonts.helveticaRegular(with: 13)
        lable.textColor = Resources.Colors.inActive
        lable.textAlignment = .center
        return lable
    }()
    
    private let remainingTimeValueLable: UILabel = {
        let lable = UILabel()
        lable.text = "12:45"
        lable.font = Resources.Strings.Fonts.helveticaRegular(with: 13)
        lable.textColor = Resources.Colors.titleGray
        lable.textAlignment = .center
        return lable
    }()
    
    private let timerStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.spacing = 10
        return stack
    }()
    
    private let progressView = ProgressView()
    
    private var timer = Timer()
    private var timerProgress: CGFloat = 0
    private var timerDuration = 0.0
    
    public var state: TimerState = .isStopped
    
    func configure(with duration: Double, progress: Double) {
        timerDuration = duration
        
        let tempCurrentValue = progress > duration ? duration : progress
        let goalValueDevider = duration == 0 ? 1 : duration
        let percent = tempCurrentValue / goalValueDevider
        
        progressView.drawProgress(with: CGFloat(percent))
    }
    
    func startTimer() {
        timer.invalidate()
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { [weak self] timer in
            guard let self = self else { return }
            self.timerProgress += 0.01
            
            if self.timerProgress > self.timerDuration {
                self.timerProgress = self.timerDuration
                timer.invalidate()
            }
            
            self.configure(with: self.timerDuration, progress: self.timerProgress)
        })
    }
    
    func pauseTimer() {
        timer.invalidate()
    }
    
    func stopTimer() {
        guard self.timerProgress > 0 else { return }
        timer.invalidate()
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { [weak self] timer in
            guard let self = self else { return }
            self.timerProgress -= 0.1
            
            if self.timerProgress <= 0 {
                self.timerProgress = 0
                timer.invalidate()
            }
            
            self.configure(with: self.timerDuration, progress: self.timerProgress)
        })
    }
}

extension TimerView {
    override func setupViews() {
        super.setupViews()
        setupView(progressView)
        setupView(timerStackView)
        
        [
            elapsedTimeLable,
            elapsedTimeValueLable,
            remainingTimeLable,
            remainingTimeValueLable
        ].forEach {
            timerStackView.addArrangedSubview($0)
        }
    }
    
    override func constraintViews() {
        super.constraintViews()
        NSLayoutConstraint.activate([
            progressView.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -40),
            progressView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 40),
            progressView.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            progressView.heightAnchor.constraint(equalTo: progressView.widthAnchor),
            progressView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 40),
            
            timerStackView.centerYAnchor.constraint(equalTo: progressView.centerYAnchor),
            timerStackView.centerXAnchor.constraint(equalTo: progressView.centerXAnchor)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()

    }
}
