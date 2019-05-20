//
//  ViewController2.swift
//  AirPolution
//
//  Created by RMS2018 on 13/03/2019.
//  Copyright © 2019 example. All rights reserved.
//

import UIKit

class ConfigurationViewController: UIViewController{
    
    @IBOutlet weak var wojewodztwoPicker: UIPickerView!
    @IBOutlet weak var miastoPicker: UIPickerView!
    
    var wojewodztwoPickerHandler:PickerHandler!
    var miastoPickerHandler:PickerHandler!
    
    @IBAction func onClick(_ sender: UIButton) {
        let number = Int.random(in: 0 ..< 100)
        wojewodztwoPicker.selectRow(number%16, inComponent: 0, animated: true)
        let picker = wojewodztwoPickerHandler as UIPickerViewDelegate
        picker.pickerView?(wojewodztwoPicker, didSelectRow: number%16, inComponent: 0)
    }
    
    var wojewodztwa = ["Wielkopolskie", "Kujawsko-Pomorskie", "Małopolskie", "Łódzkie", "Dolnośląskie", "Lubelskie", "Lubuskie", "Mazowieckie", "Opolskie", "Podlaskie", "Pomorskie", "Śląskie", "Podkarpackie", "Świętokrzyskie", "Warmińsko-Mazurskie", "Zachodniopomorskie"]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let uiButton = sender as! UIBarButtonItem
        if(uiButton.title == "Dalej"){
            let navController = segue.destination as! NavigationViewController
            let receivedViewController = navController.viewControllers.first as! ReceivedDataViewController
            receivedViewController.state = wojewodztwoPickerHandler.value
            receivedViewController.city = miastoPickerHandler.value
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wojewodztwoPickerHandler = PickerHandler(parent: self, pickerView: wojewodztwoPicker)
        miastoPickerHandler = PickerHandler(parent: self, pickerView: miastoPicker)
        
        wojewodztwoPickerHandler.setPickerStrings(pickerStrings: wojewodztwa)
        wojewodztwoPickerHandler.isOnChangeEnabled = true
        
        miastoPickerHandler.setPickerStrings(pickerStrings: getCitiesFromState(state: wojewodztwa[0]))
    }
    
    public func updateCitiesPickerStrings(state: String){
        print(getCitiesFromState(state: state))
        miastoPickerHandler.setPickerStrings(pickerStrings: getCitiesFromState(state: state))
        
        miastoPickerHandler.reload()
    }
    
    
    private func getCitiesFromState(state: String) -> [String]{
        switch state {
        case "Wielkopolskie": return ["Kalisz", "Poznan", "Koszalin"]
        case "Kujawsko-Pomorskie": return ["Bydgoszcz", "Torun"]
        case "Małopolskie": return ["Krakow", "Nowy Targ", "Zakopane"]
        case "Łódzkie": return ["Lodz", "Zgierz"]
        case "Dolnośląskie": return ["Wroclaw", "Jelenia Gora"]
        case "Lubelskie": return ["Lublin", "Zamosc"]
        case "Lubuskie": return ["Zielona Gora", "Gorzow Wielkopolski"]
        case "Mazowieckie": return ["Warsaw"]
        case "Opolskie": return ["Kedzierzyn-Kozle", "Olesno"]
        case "Podlaskie": return ["Bialystok", "Suwalki"]
        case "Pomorskie": return ["Gdansk", "Gdynia", "Sopot"]
        case "Śląskie": return ["Katowice", "Gliwice", "Cieszyn", "Czestochowa"]
        case "Podkarpackie": return ["Rzeszow", "Mielec"]
        case "Świętokrzyskie": return ["Domaszowice", "Nowy Staw"]
        case "Warmińsko-Mazurskie": return ["Olsztyn", "Elblag"]
        case "Zachodniopomorskie": return ["Szczecin", "Szczecinek"]
        default: return []
        }
    }


}
