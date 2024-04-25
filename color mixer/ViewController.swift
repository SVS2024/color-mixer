//
//  ViewController.swift
//  color mixer
//
//  Created by Sergey Voronin on 24.04.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorMix: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redNumber: UILabel!
    @IBOutlet var greenNumber: UILabel!
    @IBOutlet var blueNumber: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
        // MARK: Label Red
        redNumber.text = ""
        redNumber.textAlignment = .center
        redNumber.numberOfLines = 1
        
        // MARK: Label Green
        greenNumber.text = ""
        greenNumber.textAlignment = .center
        greenNumber.numberOfLines = 1
        
        // MARK: Label Blue
        blueNumber.text = ""
        blueNumber.textAlignment = .center
        blueNumber.numberOfLines = 1
        
        // MARK: Red Slider
        redSlider.value = 1
        redSlider.minimumValue = 1
        redSlider.maximumValue = 255
        redSlider.minimumTrackTintColor = .red
        
        redNumber.text = String(Int(redSlider.value))
        
        // MARK: Green Slider
        greenSlider.value = 1
        greenSlider.minimumValue = 1
        greenSlider.maximumValue = 255
        greenSlider.minimumTrackTintColor = .green
        
        greenNumber.text = String(Int(greenSlider.value))
        
        
        // MARK: Blue Slider
        blueSlider.value = 1
        blueSlider.minimumValue = 1
        blueSlider.maximumValue = 255
        blueSlider.minimumTrackTintColor = .blue
        
        blueNumber.text = String(Int(blueSlider.value))
    }
        @IBAction func redSliderAction() {
            redNumber.text = String(Int(redSlider.value))
            colorMix.backgroundColor = UIColor(
                red: CGFloat(redSlider.value)/255,
                green: CGFloat(greenSlider.value)/255,
                blue: CGFloat(blueSlider.value)/255, alpha: 1)
        }
        
        @IBAction func greenSliderAction() {
            greenNumber.text = String(Int(greenSlider.value))
            colorMix.backgroundColor = UIColor(
                red: CGFloat(redSlider.value)/255,
                green: CGFloat(greenSlider.value)/255,
                blue: CGFloat(blueSlider.value)/255, alpha: 1)
        }
        
        @IBAction func blueSliderAction() {
            blueNumber.text = String(Int(blueSlider.value))
            colorMix.backgroundColor = UIColor(
                red: CGFloat(redSlider.value)/255,
                green: CGFloat(greenSlider.value)/255,
                blue: CGFloat(blueSlider.value)/255, alpha: 1)
        }
}


