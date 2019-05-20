//
//  ViewController3.swift
//  AirPolution
//
//  Created by RMS2018 on 13/03/2019.
//  Copyright © 2019 example. All rights reserved.
//

import UIKit

class ReceivedDataViewController: UIViewController {
    
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var mainDataLabel: UILabel!
    
    var state = String()
    var city = String()
    let parser = PollutionDataParser()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = ApiCallBuilder(state: self.state, city: self.city).build()
        let dataReceiver = DataReceiver(url: url)
        dataReceiver.call()
        while(dataReceiver.res == nil){
            //
            if(!dataReceiver.body.isEmpty)
            {
                //self.dataLabel.text = dataReceiver.body
            }
        }
        let mainData: String = self.parser.parseMainData(response: dataReceiver.res!)
        var data: String = self.parser.parseAdditionalData(pollution: dataReceiver.res!.data.current.pollution)
        if(data.isEmpty){
            
        }
        self.mainDataLabel.text = mainData
        self.dataLabel.text = data
    }
    

}
