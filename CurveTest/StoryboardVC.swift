//
//  StoryboardVC.swift
//  CurveTest
//
//  Created by Mate Barandi on 18/04/2019.
//  Copyright © 2019 Mate Barandi. All rights reserved.
//

import UIKit

class StoryboardVC: UIViewController {
    
    
    @IBOutlet weak var curvyView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        curvyView.setBottomCurve()
        
    }

}
