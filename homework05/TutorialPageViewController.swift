//
//  TutorialPageViewController.swift
//  homework05
//
//  Created by student on 2020/12/12.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class TutorialPageViewController: UIViewController {

    @IBOutlet weak var tutorialPageControl: UIPageControl!
    @IBOutlet weak var tutorialScrollView: UIScrollView!

    var backgroundColor = UIColor(red:CGFloat(0) , green: CGFloat(0), blue: CGFloat(0), alpha: CGFloat(1.0))

    override func viewDidLoad() {
        super.viewDidLoad()
        tutorialScrollView.backgroundColor = backgroundColor
    }

    @IBAction func changePage(_ sender: UIPageControl) {
        let point = CGPoint(x: tutorialScrollView.bounds.width * CGFloat(sender.currentPage), y: 0)
        tutorialScrollView.setContentOffset(point, animated: true)
    }

}

extension TutorialPageViewController: UIScrollViewDelegate {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let page = scrollView.contentOffset.x / scrollView.bounds.width
        tutorialPageControl.currentPage = Int(page)
    }
}
