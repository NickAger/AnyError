import UIKit
import XCTest
import AnyError


enum ExampleError: ErrorType {
    case NoPayloadError
    case GeneralError(String)
    case AccessingResourceError(NSURL)
    case Underlying(ErrorType)
}

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAnyError() {
        let error = ExampleError.GeneralError("Here is a specific type of error")
        let typeErasedError = AnyError(cause: error)

        XCTAssertEqual(String(typeErasedError.cause), String(error))
    }
}
