//
//  Resources.swift
//  FitnessApp
//
//  Created by Aleksandr on 19.12.2022.
//

import UIKit

enum Resources {
    enum Colors {
        static let active = UIColor(hexString: "#437BFE")
        static let inActive = UIColor(hexString: "#929DA5")
        
        static let titleGray = UIColor(hexString: "#545C77")
        
        static let background = UIColor(hexString: "#F8F9F9")
        static let separator = UIColor(hexString: "#E8ECEF")
        static let secondary = UIColor(hexString: "#F0F3FF")
    }
    
    enum Strings {
        enum TabBar {
            static func title(for tab: Tabs) -> String {
                switch tab {
                case .overview: return "Overview"
                case .session: return "Session"
                case .progress: return "Progress"
                case .settings: return "Settings"
                }
            }
        }

        
        enum NavBar {
            static let overview = "Today"
            static let session = "High Intensity Cardio"
            static let progress = "Workout Progress"
            static let settings = "Settings"
        }
        
        enum Overview {
            static let allWorkuotsButton = "All Workouts"
        }
        
        enum Session {
            static let navBarStart = "Start   "
            static let navBarPause = "Pause"
            static let navBarFinish = "Finish"
            
            static let elapsedTime = "Elapsed Times"
            static let remainigTime = "Remaining Time"
            
            static let completed = "COMPLETED"
            static let remaining = "REMAINING"
            
            static let workoutStats = "Workout stats"
            static let averagePace = "Average pace"
            static let heartRate = "Heart rate"
            static let totalDistance = "Total distance"
            static let totalSteps = "Total steps"
            
            static let stepsCounter = "Steps Counter"
        }
        
        enum Progress {
            static let navBarLeft = "Export"
            static let navBarRight = "Details"
            
            static let dailyPerformance = "Dayli Performance"
            static let last7Days = "Last 7 days"
            
            static let monthlyPerformanceView = "Monthly Performance"
            static let last10Month = "Last 10 month"
        }
        
        enum Fonts {
            static func helveticaRegular(with size: CGFloat) -> UIFont {
                UIFont(name: "Helvetica", size: size) ?? UIFont()
            }
        }
    }
    
    enum Image {
        enum TabBar {
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab {
                case .overview: return UIImage(named: "overview_tab")
                case .session: return UIImage(named: "session_tab")
                case .progress: return UIImage(named: "progress_tab")
                case .settings: return UIImage(named: "settings_tab")
                }
            }
        }
        
        enum Stats {
            static let heartRate = UIImage(named: "stats_heartRate")
            static let averagePace = UIImage(named: "stats_averagePace")
            static let totalSteps = UIImage(named: "stats_totalSteps")
            static let totalDistance = UIImage(named: "steps_totalDistance")
        }
        
        enum Common {
            static let allWorkuotsImage = UIImage(named: "down_arrow")
            static let addButtonImage = UIImage(named: "add_button")
        }
    }
}

