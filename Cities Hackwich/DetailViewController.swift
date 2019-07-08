//
//  DetailViewController.swift
//  Cities Hackwich
//
//  Created by Devesh Bhor on 7/8/19.
//  Copyright © 2019 iOS. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var populationTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    var detailItem: City? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    

    func configureView() {
        //update the user interface for the detail item
        if let city = self.detailItem {
            if cityTextField != nil {
                cityTextField.text = city.name
                stateTextField.text = city.name
                populationTextField.text = String(city.population)
                imageView.image = UIImage(data: city.image)
            }
        }
    }

    func viewWillDisappear() {
        if let city = self.detailItem {
            city.name = cityTextField.text!
            city.state = stateTextField.text!
            city.population = Int(populationTextField.text!)!
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

   


}

