//
//  ViewController.swift
//  Anya
//
//  Created by 林辰澤 on 2022/7/22.
//

import UIKit

class ViewController: UIViewController {
    var peanut = 0
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var alphaSlider: UISlider!
    
    @IBOutlet weak var redLabel: UILabel!
    
    @IBOutlet weak var greenLabel: UILabel!
    
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var alphaLabel: UILabel!
    
    @IBOutlet weak var peanutLabel: UILabel!
    
    @IBOutlet weak var anyaLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    func initAnya(){
        redSlider.value = 245/255
        greenSlider.value = 181/255
        blueSlider.value = 171/255
        alphaSlider.value = 1
        imageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        alphaLabel.text = String(format: "%.2f", alphaSlider.value)
    }
    
    func setupGradientBackground() {
         let gradientLayer = CAGradientLayer()
         gradientLayer.frame = view.bounds
//         gradientLayer.colors = [
//            CGColor(srgbRed: 1, green: 1, blue: 1, alpha: 1),
//            CGColor(srgbRed: 0, green: 0, blue: 1, alpha: 1)
//         ]
        
        gradientLayer.colors = [UIColor.white.cgColor, UIColor.systemPink.cgColor]

         view.layer.insertSublayer(gradientLayer, at: 0)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupGradientBackground()
        initAnya()
    }


    @IBAction func colorRandom(_ sender: Any) {
        //宣告各色的Random
        redSlider.value = Float.random(in: 0...1)
        greenSlider.value = Float.random(in: 0...1)
        blueSlider.value = Float.random(in: 0...1)
        alphaSlider.value = Float.random(in: 0...1)
        imageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        alphaLabel.text = String(format: "%.2f", alphaSlider.value)
    }
    
    
    @IBAction func reset(_ sender: Any) {
        redSlider.value = 245/255
        greenSlider.value = 181/255
        blueSlider.value = 171/255
        alphaSlider.value = 1
        imageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        alphaLabel.text = String(format: "%.2f", alphaSlider.value)
    }
    
    
    @IBAction func changeColor(_ sender: Any) {
        imageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        //Slider的數值顯示到小數點後第二位
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        alphaLabel.text = String(format: "%.2f", alphaSlider.value)
  
    }
    
    
    @IBAction func eatPeanut(_ sender: Any) {
        peanut += 1
        peanutLabel.text = "安妮亞已經吃了\(peanut)顆花生"
        
        if peanut == 5 {
            anyaLabel.text = "安妮亞好開心"
        }
        
        if peanut == 10 {
            anyaLabel.text = "安妮亞愛你"
        }
        
        if peanut == 15 {
            anyaLabel.text = "安妮亞太幸福了"
        }
    }
    
}

