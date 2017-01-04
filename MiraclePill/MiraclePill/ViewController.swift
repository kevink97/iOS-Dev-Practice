//
//  ViewController.swift
//  MiraclePill
//
//  Created by Kevin Kang on 1/2/17.
//  Copyright © 2017 Kevin Kang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var pillImg: UIImageView!
    @IBOutlet weak var pillName: UILabel!
    @IBOutlet weak var pillCost: UILabel!
    @IBOutlet weak var bar: UIView!
    @IBOutlet weak var nameText: UILabel!
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var streetText: UILabel!
    @IBOutlet weak var streetInput: UITextField!
    @IBOutlet weak var cityText: UILabel!
    @IBOutlet weak var cityInput: UITextField!
    @IBOutlet weak var stateText: UILabel!
    @IBOutlet weak var stateBtn: UIButton!
    
    
    @IBOutlet weak var countryText: UILabel!
    @IBOutlet weak var countryInput: UITextField!
    @IBOutlet weak var zipcodeText: UILabel!
    @IBOutlet weak var zipcodeInput: UITextField!
    
    @IBOutlet weak var buynowBtn: UIButton!
    
    @IBOutlet weak var successImg: UIImageView!
    
    
    let states = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut",
        "Delaware", "Florida", "Georgia"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        toggleHidden()
    }
    
    @IBAction func buynowBtnPressed(_ sender: Any) {
        let allItems : [UIView] = [statePickerBtn, statePicker,
                                   pillImg, pillName, pillCost,
                                   bar, nameText, nameInput,
                                   streetText, streetInput,
                                   cityText, cityInput,
                                   stateText, stateBtn,
                                   countryText, countryInput,
                                   zipcodeText, zipcodeInput,
                                   buynowBtn]
        for item in allItems {
            if !item.isHidden {
                item.isHidden = true
            }
        }
        successImg.isHidden = false
        setNeedsStatusBarAppearanceUpdate()
    }
    
    override var prefersStatusBarHidden: Bool {
        return successImg != nil  && !successImg.isHidden
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return  states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return  states[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        toggleHidden()
    }
    
    func toggleHidden() {
        statePicker.isHidden = !statePicker.isHidden
        countryText.isHidden = !countryText.isHidden
        countryInput.isHidden = !countryInput.isHidden
        zipcodeText.isHidden = !zipcodeText.isHidden
        zipcodeInput.isHidden = !zipcodeInput.isHidden
    }
}

