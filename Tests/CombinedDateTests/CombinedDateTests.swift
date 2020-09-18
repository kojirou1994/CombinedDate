import XCTest
@testable import CombinedDate

final class CombinedDateTests: XCTestCase {
  let date = CombinedDate(year: 2020, month: 12, day: 25)

  func testReleaseDate() {
    XCTAssertEqual(date, date)
    XCTAssertEqual(date, .init(rawValue: date.rawValue))

    let rawValue = date.rawValue

    measure {
      _ = CombinedDate(rawValue: rawValue)
    }
  }
}
