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
	@IBOutlet weak var socialContainerView: UIView!
	@IBOutlet weak var transactionContainerView: UIView!

	let numberOfPages :Int = 2

	override func viewDidLoad() {
		super.viewDidLoad()
		self.scrollView.isPagingEnabled = true
		self.scrollView.delegate = self
//		self.scrollView.contentSize = CGSize(width: (self.socialContainerView.frame.width * 2) + 67, height: socialContainerView.frame.size.height + 20)
//		self.scrollView.isPagingEnabled = true
//		print(self.scrollView.contentSize.width)

		}

}

extension ViewController: UIScrollViewDelegate {
//	func scrollViewDidScroll(_ scrollView: UIScrollView) {
//	}
	func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
		print(scrollView.contentOffset.x)
	}
}
