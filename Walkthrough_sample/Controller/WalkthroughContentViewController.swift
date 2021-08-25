//
//  WalkthroughContentViewController.swift
//  Walkthrough_sample
//
//  Created by jisung on 2021/08/25.
//

import UIKit

class WalkthroughContentViewController: UIViewController {
    
    //MARK: - Outlets
    
    @IBOutlet var headingLabel : UILabel! {
        didSet {
            headingLabel.numberOfLines = 0
        }
    }
    
    @IBOutlet var subHeadingLable : UILabel! {
        didSet {
            subHeadingLable.numberOfLines = 0
        }
    }
    
    @IBOutlet var contentImageView: UIImageView!
    
    //MARK: - Properties
    var Index = 0
    var heading = ""
    var subHeading = ""
    var imageFile = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        headingLabel.text = "Heading"
        subHeadingLable.text = "Subheading"
        contentImageView.image = UIImage(named: imageFile)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
