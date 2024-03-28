//
//  ViewController.swift
//  nwvigation_segue
//
//  Created by İbrahim Toytekin on 28.03.2024.
//

import UIKit

class ViewController: UIViewController {

    //Değişkenler
    @IBOutlet weak var textField: UITextField!
    
    
    var defaultMyLabelText="Yazı yazmadınız"
    
    
    //Sayfa yüklenirken olması gerekenler
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text=defaultMyLabelText

    }
    
    // Segue işleminden iönce ne yapılsın
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sayfa2VC" {
            defaultMyLabelText = textField.text ?? ""
            
            if let destinationVC = segue.destination as? ViewController2 {
                destinationVC.strtngLabel = defaultMyLabelText
            }
        }
    }
    // Butonlar
    @IBAction func btnClick(_ sender: Any) {
    performSegue(withIdentifier: "sayfa2VC", sender: nil)
    }
    
}

