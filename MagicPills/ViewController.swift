//
//  ViewController.swift
//  MagicPills
//
//  Created by Estique on 12/24/16.
//  Copyright © 2016 Estique. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    let states = ["Dhaka", "Rajshahi", "Pabna", "Chittagong", "Barisal"]
   
    @IBOutlet var btnState: UIButton!
    @IBOutlet var pickerState: UIPickerView!
    @IBOutlet var imagePill: UIImageView!
    @IBOutlet var pillName: UILabel!
    @IBOutlet var pillPrice: UILabel!
    @IBOutlet var fullName: UILabel!
    @IBOutlet var enterFullName: UITextField!
    @IBOutlet var streetAddress: UILabel!
    @IBOutlet var enterStreetAddress: UITextField!
    @IBOutlet var city: UILabel!
    @IBOutlet var enterCity: UITextField!
    @IBOutlet var state: UILabel!
    @IBOutlet var imageSuccess: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerState.dataSource = self
        pickerState.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnStatePressed(_ sender: AnyObject) {
        pickerState.isHidden = false;
        
    }
    
    
    @IBAction func btnBuyNow(_ sender: AnyObject) {
        btnState.isHidden = true
        imagePill.isHidden = true
        pillName.isHidden = true
        pillPrice.isHidden = true
        fullName.isHidden = true
        enterFullName.isHidden = true
        streetAddress.isHidden = true
        enterStreetAddress.isHidden = true
        city.isHidden = true
        enterCity.isHidden = true
        state.isHidden = true
        imageSuccess.isHidden = false
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        btnState.setTitle(states[row], for: UIControlState())
        pickerState.isHidden = true;
    }

}

