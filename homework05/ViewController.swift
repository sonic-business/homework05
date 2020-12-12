//
//  ViewController.swift
//  homework05
//
//  Created by student on 2020/12/10.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rgbaLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func bgColor() -> UIColor {
        UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    }

    @IBSegueAction func showTutorialPageViewController(_ coder: NSCoder) -> TutorialPageViewController? {
        let controller = TutorialPageViewController(coder: coder)
        controller?.backgroundColor = bgColor()
        return controller
    }

    @IBAction func colorSlider(_ sender: UISlider) {
        rgbaLabel.backgroundColor = bgColor()
        redLabel.text = "\(Int(redSlider.value * 255))"
        greenLabel.text = "\(Int(greenSlider.value * 255))"
        blueLabel.text = "\(Int(blueSlider.value * 255))"
        alphaLabel.text = String(format: "%.1f", alphaSlider.value)
    }

}

