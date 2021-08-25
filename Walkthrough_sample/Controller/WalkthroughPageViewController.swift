//
//  WalkthroughPageViewController.swift
//  Walkthrough_sample
//
//  Created by jisung on 2021/08/25.
//

import UIKit

class WalkthroughPageViewController: UIPageViewController, UIPageViewControllerDataSource {

    //MARK: - Properties
    
    var pageHeadings = ["Create", "Show", "Discover"]
    var pageImages = ["onboarding-1", "onboarding-2", "onboarding-3"]
    var pageSubheadings = ["Subheading Create", "Subheading Show", "Subheading Discover"]
    
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Set the data source to itself
        
        dataSource = self
        //Create the first walkthrough screen
        
        if let startingViewController = contentViewController(at: 0) {
            setViewControllers(startingViewController, direction: .forward, animated: true, completion: nil)
        }
        
        
    }
    
    //MARK: - PageViewController DataSource
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! WalkthroughContentViewController).Index
        
        index -= 1
        return contentViewController(at: index)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! WalkthroughContentViewController).Index
        
        index += 1
        return contentViewController(at: index)
    }
    
    //MARK: - Helper
    func contentViewController(at index: Int) -> WalkthroughContentViewController? {
        if index < 0 || index >= pageHeadings.count {
            return nil
        }
        //Create a new view controller and pass suitable data
        let storyboard = UIStoryboard(name: "Onboarding", bundle: nil)
        if let pageContentViewController = storyboard.instantiateViewController(withIdentifier: "WalkthroughContentViewController") as? WalkthroughContentViewController {
            pageContentViewController.imageFile = pageImages[index]
            pageContentViewController.heading = pageHeadings[index]
            pageContentViewController.subHeading = pageSubheadings[index]
            pageContentViewController.Index = index
            
            return pageContentViewController
        }
        
        return nil
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
