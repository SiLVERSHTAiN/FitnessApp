//
//  ChartView.swift
//  FitnessApp
//
//  Created by Aleksandr on 11.01.2023.
//

import UIKit

final class ChartView: WABaseView {
    
    private let yAxisSeparator: UIView = {
        let view = UIView()
        view.backgroundColor = Resources.Colors.separator
        return view
    }()
    
    private let xAxisSeparator: UIView = {
        let view = UIView()
        view.backgroundColor = Resources.Colors.separator
        return view
    }()
    
    func configure(with data: [WAChartsView.Data]) {
        layoutIfNeeded()
        addDashLines()
    }
}

extension ChartView {
    
    override func setupViews() {
        super.setupViews()
        
        setupView(yAxisSeparator)
        setupView(xAxisSeparator)

    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            yAxisSeparator.leadingAnchor.constraint(equalTo: leadingAnchor),
            yAxisSeparator.widthAnchor.constraint(equalToConstant: 1),
            yAxisSeparator.topAnchor.constraint(equalTo: topAnchor),
            yAxisSeparator.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            xAxisSeparator.leadingAnchor.constraint(equalTo: leadingAnchor),
            xAxisSeparator.heightAnchor.constraint(equalToConstant: 1),
            xAxisSeparator.trailingAnchor.constraint(equalTo: trailingAnchor ),
            xAxisSeparator.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()

    }
}

private extension ChartView {
    
    func addDashLines() {
        (0..<9).map { CGFloat($0) }.forEach {
            addDashLine(at: bounds.height / 9 * $0)
        }
    }
    
    func addDashLine(at yPosition: CGFloat) {
        let startPoint = CGPoint(x: 0, y: yPosition)
        let endPoint = CGPoint(x: bounds.width, y: yPosition)
        
        let dashPath = CGMutablePath()
        dashPath.addLines(between: [startPoint, endPoint])
        
        let dashLine = CAShapeLayer()
        dashLine.path = dashPath
        dashLine.strokeColor = Resources.Colors.separator.cgColor
        dashLine.lineWidth = 1
        dashLine.lineDashPattern = [6, 3] // Длинная линии пунктира и ширина пробела
        
        layer.addSublayer(dashLine)
    }
}

