//
//  AnyError.swift
//
//  Swift µframework providing `AnyError(cause:ErrorType)`
//
//  Type erasure for ErrorType(s). Designed to be used as the error type associated with a Future or Result - so that when composing futures with map/flatMap the error type is the same and can be propagated through the compositional chain.
//  see http://nickager.com/blog/2016/03/07/AnyError
//
//  Created by Nick Ager on 10/02/2016.
//  Copyright © 2016 RocketBox Ltd. All rights reserved.
//

import Foundation

/**
 Type erasing type `ErrorType`
 
 See also:
 - [Type erasure with AnyError](http://nickager.com/blog/2016/03/07/AnyError)
 */
public struct AnyError : ErrorType {
    public let cause:ErrorType
    
    public init(cause:ErrorType) {
        self.cause = cause
    }
}

/**
 Protocol extension designed as a mix-in to add `asAnyError` to any `ErrorType`
 
 See also:
 - [Type erasure with AnyError](http://nickager.com/blog/2016/03/07/AnyError)
 */
public protocol AnyErrorConverter : ErrorType {
    func asAnyError() -> AnyError;
}

public extension AnyErrorConverter {
    func asAnyError() -> AnyError {
        return AnyError(cause: self)
    }
}
