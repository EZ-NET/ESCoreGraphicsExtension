//
//  CGFloat.swift
//  ESCoreGraphicsExtension
//
//  Created by Tomohiro Kumagai on H27/07/29.
//  Copyright © 2015 EasyStyle G.K. All rights reserved.
//

import CoreGraphics
import Swim

// MARK: - FourArithmeticType

extension CGFloat : FourArithmeticType {
	
	public static func add(lhs: CGFloat, _ rhs: CGFloat) -> CGFloat {
		
		return lhs + rhs
	}
	
	public static func subtract(lhs: CGFloat, _ rhs: CGFloat) -> CGFloat {
		
		return lhs - rhs
	}
	
	public static func multiply(lhs: CGFloat, _ rhs: CGFloat) -> CGFloat {
		
		return lhs * rhs
	}
	
	public static func divide(lhs: CGFloat, _ rhs: CGFloat) -> CGFloat {
		
		return lhs / rhs
	}
}

// MARK: - HalfValueConvertible

extension CGFloat : HalfValueConvertible {
	
}

// MARK: - Scaleable & Truncateable

extension CGFloat : Scaleable, Truncateable {
	
	public typealias Scale = CGScale
	
	public func scaled(scale: CGScale) -> CGFloat {
		
		return self * scale.value
	}
	
	public func truncate() -> CGFloat {
		
		return CGFloat(IntMax(self))
	}
}

extension CGFloat {
	
	public func scaleOf(value:CGFloat) -> CGScale {
		
		return CGScale(self / value)
	}
	
}

