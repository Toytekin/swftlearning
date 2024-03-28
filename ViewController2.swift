//
//  ViewController2.swift
//  nwvigation_segue
//
//  Created by İbrahim Toytekin on 28.03.2024.
//

import UIKit

class ViewController2: UIViewController {
    
    
    
    /// Değişkenler
    @IBOutlet weak var myLabel: UILabel!
    

    
        var strtngLabel=""
    
    
    
    //Sayfa yüklenemeden önce olacakların yazıldığı fonksiyon
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text=strtngLabel
    }
    

}
