//
//  ViewController.swift
//  iReview
//
//  Created by Srini Motheram on 1/16/17.
//  Copyright © 2017 Srini Motheram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var restaurantNameLabel           :UILabel!
    @IBOutlet var yourNameTextField             :UITextField!
    @IBOutlet var yourReviewTextView            :UITextView!
    @IBOutlet var overallRatingSlider           :UISlider!
    @IBOutlet var foodRatingSegControl          :UISegmentedControl!
    @IBOutlet var serviceRatingStepper          :UIStepper!
    @IBOutlet var recommendedSwitch             :UISwitch!
    
    //MARK: - Interactivity Methods
    @IBAction func pressed(button: UIButton){
        guard let name = yourNameTextField.text else {
            return
        }
        guard let review = yourReviewTextView.text else {
            return
        }
        let foodRating = foodRatingSegControl.titleForSegment(at: foodRatingSegControl.selectedSegmentIndex)!
        
        
        print("Review for Michigan Masala Restuarant")
        print("Name: \(name)")
        print("Review: \(review)")
        print("Overall Rating: \(overallRatingSlider.value)")
        print("Food Rating: \(foodRating)")
        print("Service Rating: \(serviceRatingStepper.value)")
        print("Recommended: \(recommendedSwitch.isOn)")

       // surveyNameLabel.text = "\(name) Favorite Restaurant"
 
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        //userFirstNameTextField.delegate = self
        recommendedSwitch.isOn = false
        serviceRatingStepper.value = 4
        overallRatingSlider.value = 0.5
        foodRatingSegControl.selectedSegmentIndex = 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

