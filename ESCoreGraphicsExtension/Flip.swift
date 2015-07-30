//
//  Flip.swift
//  ESCoreGraphicsExtension
//
//  Created by Tomohiro Kumagai on H27/07/29.
//  Copyright © 2015 EasyStyle G.K. All rights reserved.
//

import CoreGraphics

extension CGRect {
	
	public func flipWithHeight(height:CGFloat) -> CGRect {
		
		let origin = self.origin.flipWithHeight(height - self.height)
		let size = self.size
		
		return CGRect(x: origin.x, y: origin.y, width: size.width, height: size.height)
	}
}

extension CGPoint {
	
	public func flipWithHeight(height:CGFloat) -> CGPoint {
		
		return CGPoint(x: self.x, y: height - self.y)
	}
}
