//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Mikhail Tabakaev on 3/12/24.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var welcomeLabel: UILabel!
    
    // MARK: - Public Properties
    var userName: String!
    
    // MARK: - Private Properties
    private let primaryColor = UIColor(
        red: 18/255,
        green: 64/255,
        blue: 118/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 127/255,
        green: 159/255,
        blue: 128/255,
        alpha: 1
    )
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        welcomeLabel.text = "Welcome, \(userName ?? "") !"
    }
}

// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
