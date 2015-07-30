//
//  IntegerSupport.swift
//  ESCoreGraphicsExtension
//
//  Created by Tomohiro Kumagai on H27/07/29.
//  Copyright © 2015 EasyStyle G.K. All rights reserved.
//

import CoreGraphics

extension CGPoint {
	
	public init(x:Int, y:Int) {
		
		self.init(x: CGFloat(x), y: CGFloat(y))
	}
}

extension CGSize {

	public init(width:Int, height:Int) {
		
		self.init(width: CGFloat(width), height: CGFloat(height))
	}
}