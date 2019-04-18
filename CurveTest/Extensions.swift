//
//  Extensions.swift
//  CurvyScreens
//
//  Created by Mate Barandi on 16/04/2019.
//  Copyright © 2019 Mate Barandi. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func setBottomCurve(curve: CGFloat = 40.0){
        
        self.frame = self.bounds
        
        let rect = self.bounds
        let y:CGFloat = rect.size.height - curve
        let curveTo:CGFloat = rect.size.height
        
        let myBezier = UIBezierPath()
        myBezier.move(to: CGPoint(x: 0, y: y))
        myBezier.addQuadCurve(to: CGPoint(x: rect.width, y: y), controlPoint: CGPoint(x: rect.width / 2, y: curveTo))
        myBezier.addLine(to: CGPoint(x: rect.width, y: 0))
        myBezier.addLine(to: CGPoint(x: 0, y: 0))
        myBezier.close()
        
        let maskForPath = CAShapeLayer()
        maskForPath.path = myBezier.cgPath
        layer.mask = maskForPath
        
    }

    }

