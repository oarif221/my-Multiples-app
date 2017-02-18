//
//  ViewController.swift
//  Multiples
//
//  Created by Omer Arif on 08/02/2017.
//  Copyright © 2017 OmerA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number = 0
    var counterNumber = 0
    var result = 0
    var text = ""

    @IBOutlet weak var multiples: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var pressAddText: UITextView!
    @IBOutlet weak var addButton: UIButton!
    
    
    @IBAction func playBtn(sender: UIButton!){
        
        if textField.text != nil && textField.text != "" {
            multiples.isHidden = true
            textField.isHidden = true
            playButton.isHidden = true
            addButton.isHidden = false
            pressAddText.isHidden = false
            text = pressAddText.text
            number = Int(textField.text!)!
            result = number
        }
        
    }
    
    @IBAction func addBtn(sender: UIButton!){
        
        
        if result < 60 {
            result = counterNumber + number
            pressAddText.text = "\(counterNumber) + \(number) = \(result)"
            counterNumber = result
            
        } else {
            multiples.isHidden = false
            textField.isHidden = false
            playButton.isHidden = false
            addButton.isHidden = true
            pressAddText.isHidden = true
            textField.text = ""
            pressAddText.text = text
            counterNumber = 0
            result = 0
        }
        
    }

}

