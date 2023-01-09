//
//  SessionController.swift
//  FitnessApp
//
//  Created by Aleksandr on 20.12.2022.
//

import UIKit
import SwiftUI

class SessionController: WABaseController {

    private let timerView = TimerView()
    private let statsView = StatsView(with: Resources.Strings.Session.workoutStats)
    private let stepsView = StepsView(with: Resources.Strings.Session.stepsCounter)
    
    private let timerDuration = 15.0
    
    override func navBarLeftButtonHandler() {
        if timerView.state == .isStopped {
            timerView.startTimer()
        } else {
            timerView.pauseTimer()
        }
        timerView.state = timerView.state == .isRuning ? .isStopped : .isRuning
        setTitleForNavBarButton(timerView.state == .isRuning ? Resources.Strings.Session.navBarPause : Resources.Strings.Session.navBarStart,
                                at: .left)
    }
    
    override func navBarRightButtonHandler() {
        timerView.stopTimer()
        timerView.state = .isStopped
        setTitleForNavBarButton(Resources.Strings.Session.navBarFinish, at: .right)
    }
}

extension SessionController {
    
    override func setupViews() {
        super.setupViews()
        view.setupView(timerView)
        view.setupView(statsView)
        view.setupView(stepsView)
        
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            
            statsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            statsView.topAnchor.constraint(equalTo: timerView.bottomAnchor, constant: 11),
            statsView.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -7.5),
            
            stepsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            stepsView.topAnchor.constraint(equalTo: statsView.topAnchor),
            stepsView.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 7.5),
            stepsView.heightAnchor.constraint(equalTo: statsView.heightAnchor)
            
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        title = Resources.Strings.NavBar.session
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.title(for: .session)
        
        addNavBarButton(at: .left, with: Resources.Strings.Session.navBarStart)
        addNavBarButton(at: .right, with: Resources.Strings.Session.navBarFinish)
        
        timerView.configure(with: timerDuration, progress: 0)
        
        statsView.configure(with: [.heartRate(value: "155"),
                                   .averagePace(value: "9'20''"),
                                   .totalSteps(value: "7,682"),
                                   .totalDistance(value: "8.25")])
        
        stepsView.configure(with: [.init(value: "8k", title: "2/13", heightParm: 1),
                                   .init(value: "7k", title: "2/14", heightParm: 0.8),
                                   .init(value: "5k", title: "2/15", heightParm: 0.6),
                                   .init(value: "6k", title: "2/16", heightParm: 0.7)
        ])
    }
}

