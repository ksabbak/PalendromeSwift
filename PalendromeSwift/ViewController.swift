//
//  ViewController.swift
//  PalendromeSwift
//
//  Created by k_sabbak on 8/31/16.
//  Copyright © 2016 k_sabbak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var inputText: UITextField!
    @IBOutlet var outputLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        outputLabel.text = ""
        
    }
    
    
    @IBAction func onCheckButtonPressed(sender: AnyObject)
    {
        let userPalendrome = inputText.text!.lowercaseString
        let inputLength = userPalendrome.characters.count
//        var palendromeText = ""
//        
//        for letter in userPalendrome.characters
//        {
//            if NSCharacterSet.letterCharacterSet().characterIsMember(letter)
//            {
//                palendromeText.append(letter)
//            }
//        }
        
        for letter in 0...(inputLength / 2)
        {
            let testChar1 = userPalendrome[userPalendrome.startIndex.advancedBy(letter)]
            let testChar2 = userPalendrome[userPalendrome.startIndex.advancedBy(inputLength - letter - 1)]
            
            if testChar1 != testChar2
            {
                print("\(testChar1) and \(testChar2)")
                noPalendrome()
                return
            }
        }
        
        yesPalendrome()
    
    }
    
    func yesPalendrome()
    {
        outputLabel.text = "Yes! A Palendrome!"
        outputLabel.textColor = UIColor.greenColor()
    }
    
    func noPalendrome()
    {
        outputLabel.text = "Sorry, nope."
        outputLabel.textColor = UIColor.redColor()
    }




}

