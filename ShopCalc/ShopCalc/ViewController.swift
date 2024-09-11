//
//  ViewController.swift
//  SamGil-Lab1
//
//  Created by Gil, Sam on 9/2/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var price: Double = 0.0
    var discount: Double = 0.0
    var tax: Double = 0.0
    var conversion: Double = 1.0
    
    @IBAction func PriceBox(_ sender: UITextField) {
        price = Double(sender.text!) ?? 0.0
        displayFinPrice()
        
    }
    
    @IBAction func DiscountBox(_ sender: UITextField) {
        discount = Double(sender.text!) ?? 0.0
        discount = discount > 0.0 ? discount/100 : 0.0
        displayFinPrice()
    }
    
    @IBAction func TaxBox(_ sender: UITextField) {
        tax = Double(sender.text!) ?? 0.0
        tax = tax > 0.0 ? tax/100 : 0.0
        displayFinPrice()
    }
    
    @IBOutlet weak var FinalPrice: UILabel!

    func getFinPrice() -> Double {
        (price * (1-discount) * (1+tax))
    }
    func displayFinPrice() {
        self.FinalPrice.text = String(format: "%.2f", getFinPrice() * conversion)
    }
    
    @IBAction func convertEuro(_ sender: UIButton) {
        conversion =  0.91
        displayFinPrice()
    }
    
    @IBAction func convertPounds(_ sender: UIButton) {
        conversion =  0.77
        displayFinPrice()
    }
    
    @IBAction func convertDollar(_ sender: UIButton) {
        conversion = 1.00
        displayFinPrice()
    }
    
}


