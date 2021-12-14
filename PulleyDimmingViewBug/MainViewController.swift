//
//  MainViewController.swift
//  PulleyDimmingViewBug
//
//  Created by Bogdan Lviv on 14.12.2021.
//

import UIKit

class MainViewController: UIViewController {

    var onNextButtonPressed: () -> Void = {}
    
    convenience init(onNextButtonPressed: @escaping () -> Void) {
        self.init()
        self.onNextButtonPressed = onNextButtonPressed
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        self.onNextButtonPressed()
    }
}
