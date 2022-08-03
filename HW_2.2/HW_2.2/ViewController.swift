//
//  ViewController.swift
//  HW_2.2
//
//  Created by Владимир Макаров on 14.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var labelRed: UILabel!
    @IBOutlet weak var labelGreen: UILabel!
    @IBOutlet weak var labelBlue: UILabel!
    
    @IBOutlet weak var slaiderRed: UISlider!
    @IBOutlet weak var slaiderGreen: UISlider!
    @IBOutlet weak var slaiderBlue: UISlider!
    
    private var slaidersDefolt: [UISlider] = []
    private var setingLabels: [UILabel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setSlaiderDefolt ()
        setColorView()
    }
    
    private func setSlaiderDefolt () {
        slaidersDefolt = [slaiderRed, slaiderGreen, slaiderBlue]
        for slaider in slaidersDefolt {
            slaider.value = 0.5
        }
    }
    
    @IBAction func slaidersAction() {
        setColorView()
    }
    
    private func settingValueLabel () {
        setingLabels = [labelRed, labelGreen, labelBlue]
        for labels in setingLabels {
            switch labels {
            case labelRed:
                labels.text = String(format: "%.2f", slaiderRed.value)
            case labelGreen:
                labels.text = String(format: "%.2f", slaiderGreen.value)
            default:
                labels.text = String(format: "%.2f", slaiderBlue.value)
            }
        }
    }
    
    private func setColorView() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(slaiderRed.value),
            green: CGFloat(slaiderGreen.value),
            blue: CGFloat(slaiderBlue.value),
            alpha: 1)
        settingValueLabel ()
    }
    
}

