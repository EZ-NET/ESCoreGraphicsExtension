//
//  CGPoint.swift
//  ESCoreGraphicsExtension
//
//  Created by Tomohiro Kumagai on H27/07/29.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

import CoreGraphics
import Swim

// MARK: - Scaleable & Truncateable

extension CGPoint : Scaleable, Truncateable {
	
	public typealias Scale = CGScale
	
	public func scaled(scale:CGScale) -> CGPoint {
		
		guard !scale.isSameMagnification else {
			
			return self
		}
		
		let x = self.x.scaled(scale)
		let y = self.y.scaled(scale)
		
		return CGPoint(x: x, y: y)
	}
	
	public func truncate() -> CGPoint {
		
		let x = self.x.truncate()
		let y = self.y.truncate()
		
		return CGPoint(x: x, y: y)
	}
}

