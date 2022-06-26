//
//  ViewController.swift
//  viewWithRGB
//
//  Created by Асанкул Садыков on 26/6/22.
//

import UIKit

class ViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet var coloredView: UIView!
    
    @IBOutlet var redLabelAmount: UILabel!
    @IBOutlet var greenLabelAmount: UILabel!
    @IBOutlet var blueLabelAmount: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coloredView.layer.cornerRadius = 20
        
    }

    // MARK: IBActions
    @IBAction func redSliderAction() {
        redLabelAmount.text = String(String(format: "%.2f", redSlider.value))
        changeBackgroungColor(red: Double(redSlider.value), green: Double(greenSlider.value), blue: Double(blueSlider.value))
    }
    @IBAction func greenSliderAction() {
        greenLabelAmount.text = String(String(format: "%.2f", greenSlider.value))
        changeBackgroungColor(red: Double(redSlider.value), green: Double(greenSlider.value), blue: Double(blueSlider.value))
    }
    @IBAction func blueSliderAction() {
        blueLabelAmount.text = String(String(format: "%.2f", blueSlider.value))
        changeBackgroungColor(red: Double(redSlider.value), green: Double(greenSlider.value), blue: Double(blueSlider.value))
    }
    
    
    // MARK: Private functions
    private func changeBackgroungColor(red: Double, green: Double, blue: Double) {
        coloredView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
}

