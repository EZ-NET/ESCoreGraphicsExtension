//
//  CGSize.swift
//  ESCoreGraphicsExtension
//
//  Created by Tomohiro Kumagai on H27/07/31.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

import CoreGraphics
import Swim

// MARK: - Scaleable & Truncateable

extension CGSize : Scaleable, Truncateable {
	
	public typealias Scale = CGScale

	public func scaled(scale:CGScale) -> CGSize {
		
		guard !scale.isSameMagnification else {
			
			return self
		}
		
		let width = self.width.scaled(scale)
		let height = self.height.scaled(scale)
		
		return CGSize(width: width, height: height)
	}
	
	public func truncate() -> CGSize {
		
		let width = self.width.truncate()
		let height = self.height.truncate()
		
		return CGSize(width: width, height: height)
	}
}

extension CGSize {
	
	public func widthScaleOf(size:CGSize) -> CGScale {
		
		return self.width.scaleOf(size.width)
	}
	
	public func heightScaleOf(size:CGSize) -> CGScale {
		
		return self.height.scaleOf(size.height)
	}
}
