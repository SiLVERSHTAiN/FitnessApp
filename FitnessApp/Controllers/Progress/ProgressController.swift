//
//  ProgressController.swift
//  FitnessApp
//
//  Created by Aleksandr on 20.12.2022.
//

import UIKit

class ProgressController: WABaseController {
    
    private let dailyPerformanceView = DailyPerformanceView(with: Resources.Strings.Progress.dailyPerformance,
                                                            buttonTitle: Resources.Strings.Progress.last7Days)

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
}

extension ProgressController {
    
    override func setupViews() {
        super.setupViews()
        
        view.setupView(dailyPerformanceView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            dailyPerformanceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            dailyPerformanceView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            dailyPerformanceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            dailyPerformanceView.heightAnchor.constraint(equalTo: dailyPerformanceView.widthAnchor, multiplier: 0.68)
 
        ])
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        title = Resources.Strings.NavBar.progress
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.title(for: .progress)
        
        addNavBarButton(at: .left, with: Resources.Strings.Progress.navBarLeft)
        addNavBarButton(at: .right, with: Resources.Strings.Progress.navBarRight)
        
        dailyPerformanceView.configure(with: [.init(value: "1", title: "Mon", heightParm: 0.2),
                                              .init(value: "2", title: "Teu", heightParm: 0.4),
                                              .init(value: "3", title: "Wen", heightParm: 0.6),
                                              .init(value: "4", title: "Thu", heightParm: 0.8),
                                              .init(value: "5", title: "Fri", heightParm: 1),
                                              .init(value: "3", title: "Sat", heightParm: 0.6),
                                              .init(value: "2", title: "Sun", heightParm: 0.4),
        ])
    }
}

