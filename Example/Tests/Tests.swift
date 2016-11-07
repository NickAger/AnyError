import UIKit
import XCTest
import AnyError


enum ExampleError: Error {
    case noPayloadError
    case generalError(String)
    case accessingResourceError(URL)
    case underlying(Error)
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
        let error = ExampleError.generalError("Here is a specific type of error")
        let typeErasedError = AnyError(cause: error)

        XCTAssertEqual(String(describing: typeErasedError.cause), String(describing: error))
    }
}
