//
//  ViewController.swift
//  PracticeScrollView
//
//  Created by Stephanie Ramirez on 2/25/20.
//  Copyright © 2020 Stephanie Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet private var segmentedControl: UISegmentedControl!
	@IBOutlet private var scrollView: UIScrollView!

	let numberOfPages :Int = 2

	override func viewDidLoad() {
		super.viewDidLoad()
		self.scrollView.delegate = self
		}

	@IBAction func segmentedControlTapped(_ sender: UISegmentedControl) {
		print(sender.selectedSegmentIndex)
		switch sender.selectedSegmentIndex {
		case 0:
			self.scrollView.setContentOffset(CGPoint(x: 0.0, y: 0.0), animated: true)
		case 1:
			self.scrollView.setContentOffset(CGPoint(x: 414.0, y: 0.0), animated: true)
		default:
			print("error")
		}
	}
}

extension ViewController: UIScrollViewDelegate {
	func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
		print(scrollView.contentOffset)
		let indexOfPage = scrollView.contentOffset.x / scrollView.frame.size.width
		print(indexOfPage)
		self.segmentedControl.selectedSegmentIndex = Int(indexOfPage)
	}
}
