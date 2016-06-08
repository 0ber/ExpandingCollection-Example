//
//  ViewController.swift
//  ExpandingCollectionTest
//
//  Created by Alex K. on 08/06/16.
//  Copyright © 2016 Alex K. All rights reserved.
//

import UIKit
import ExpandingCollection

class ViewController: ExpandingViewController {

  override func viewDidLoad() {
    itemSize = CGSize(width: 214, height: 264)
    super.viewDidLoad()
    
    // register cell
    let nib = UINib(nibName: String(DemoCollectionViewCell), bundle: nil)
    collectionView?.registerNib(nib, forCellWithReuseIdentifier: String(DemoCollectionViewCell))
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

extension ViewController {
  
  override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 10
  }
  
  override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier(String(DemoCollectionViewCell), forIndexPath: indexPath)
    return cell
  }
}

