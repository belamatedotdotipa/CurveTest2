//
//  ViewController.swift
//  CurveTest
//
//  Created by Mate Barandi on 18/04/2019.
//  Copyright © 2019 Mate Barandi. All rights reserved.
//

import UIKit

class ProgrammaticVC: UIViewController {
    
    weak var centerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let centerView = UIView()
        self.centerView = centerView
        centerView.translatesAutoresizingMaskIntoConstraints = false
        centerView.backgroundColor = UIColor.red
        view.addSubview(centerView)
        centerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        centerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        centerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        centerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        
        
        // Comment the line below to see the view again
        centerView.setBottomCurve()
    }


}

