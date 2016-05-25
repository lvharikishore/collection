//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Hari Kishore on 5/25/16.
//  Copyright © 2016 Cognizant. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //let flowLayout = UICollectionViewFlowLayout()
        let layout : MultpleLineFlowLayout = MultpleLineFlowLayout.init()
        let collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: layout)
        
        //collectionView.collectionViewLayout = layout
        collectionView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "collectionCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = UIColor.cyanColor()
        
        self.view.addSubview(collectionView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 10
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("collectionCell", forIndexPath: indexPath)
        
        cell.backgroundColor = UIColor.greenColor()
        
        let title : UILabel = UILabel.init(frame: CGRect(x: 0, y: 10, width: cell.bounds.size.width, height: 40))
        //title.tag = 200
        title.text = String(indexPath.row)
        cell.contentView.addSubview(title)
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize
    {
        return CGSizeMake(50, 50)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets
    {
        return UIEdgeInsets(top: 2, left: 2, bottom: 2, right: 2)
    }

}

