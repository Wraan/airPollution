//
//  PickerHandler.swift
//  AirPolution
//
//  Created by RMS2018 on 13/03/2019.
//  Copyright © 2019 example. All rights reserved.
//

import UIKit

class PickerHandler: NSObject, UIPickerViewDelegate, UIPickerViewDataSource {
    
    weak var pickerView: UIPickerView!
    weak var parent: ConfigurationViewController!
    
    var pickerStrings = [String]()
    var isOnChangeEnabled = false
    var value = String()
    
    init(parent: ConfigurationViewController, pickerView: UIPickerView) {
        super.init()
        
        self.parent = parent
        
        self.pickerView = pickerView
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
    }
    
    func numberOfComponents(in wojewodztwoPicker: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerStrings.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerStrings[row]
    }
    
    func setPickerStrings(pickerStrings:[String]){
        self.pickerStrings = [String](pickerStrings)
        self.value = pickerStrings.first!
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        self.value = pickerStrings[row]
        if(isOnChangeEnabled){
            parent.updateCitiesPickerStrings(state: pickerStrings[row])
        }
    }
    func reload(){
        self.pickerView.reloadAllComponents()
        
    }
    
}
