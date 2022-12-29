//
//  ProgressView.swift
//  FitnessApp
//
//  Created by Aleksandr on 27.12.2022.
//

import UIKit

extension TimerView {
    
    final class ProgressView: UIView {        
        func drawProgress(with percent: CGFloat) {
            
            let circleFrame = UIScreen.main.bounds.width - (15 + 40) * 2
            let radius = circleFrame / 2
            let center = CGPoint(x: radius, y: radius)
            let startAngle = -CGFloat.pi * 7/6
            let endAngle = CGFloat.pi * 1/6
            
            // путь
            let circlePath = UIBezierPath(arcCenter: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
            
            // дефолтный слой серый
            let defaultCircleLayer = CAShapeLayer()
            defaultCircleLayer.path = circlePath.cgPath
            defaultCircleLayer.strokeColor = Resources.Colors.separator.cgColor
            defaultCircleLayer.lineWidth = 20
            defaultCircleLayer.strokeEnd = 1
            defaultCircleLayer.fillColor = UIColor.clear.cgColor
            defaultCircleLayer.lineCap = .round
            
            // первый синий слой
            let circleLayer = CAShapeLayer()
            circleLayer.path = circlePath.cgPath
            circleLayer.strokeColor = Resources.Colors.active.cgColor
            circleLayer.lineWidth = 20
            circleLayer.strokeEnd = percent
            circleLayer.fillColor = UIColor.clear.cgColor
            circleLayer.lineCap = .round // закругленные края
            
            let dotAngle = CGFloat.pi * (7/6 - (8/6 * percent))
            let dotPoint = CGPoint(x: cos(-dotAngle) * radius + center.x,
                                        y: sin(-dotAngle) * radius + center.y)
            let dotPath = UIBezierPath()
            dotPath.move(to: dotPoint)
            dotPath.addLine(to: dotPoint)
            
            let defaultDotLayer = CAShapeLayer()
            defaultDotLayer.path = dotPath.cgPath
            defaultDotLayer.fillColor = UIColor.clear.cgColor
            defaultDotLayer.strokeColor = Resources.Colors.active.cgColor
            defaultDotLayer.lineCap = .round
            defaultDotLayer.lineWidth = 20
            
            let dotLayer = CAShapeLayer()
            dotLayer.path = dotPath.cgPath
            dotLayer.fillColor = UIColor.clear.cgColor
            dotLayer.strokeColor = UIColor.white.cgColor
            dotLayer.lineCap = .round
            dotLayer.lineWidth = 8

            
            layer.addSublayer(defaultCircleLayer)
            layer.addSublayer(circleLayer)
            layer.addSublayer(defaultDotLayer)
            layer.addSublayer(dotLayer)
        }
    }
}
