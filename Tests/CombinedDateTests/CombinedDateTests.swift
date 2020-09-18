import XCTest
@testable import CombinedDate

final class CombinedDateTests: XCTestCase {

  func testReleaseDate() {
    let date = CombinedDate(year: 2020, month: 12, day: 25)
    XCTAssertEqual(date, date)
    XCTAssertEqual(date, .init(rawValue: date.rawValue))

    let rawValue = date.rawValue

    measure {
      _ = CombinedDate(rawValue: rawValue)
    }
  }

  func testIncompleteDate() {
    let noDayDate = CombinedDate(year: 2020, month: 10)
    XCTAssertEqual(noDayDate.day, 0)

    let noMonthDayDate = CombinedDate(year: 2020)
    XCTAssertEqual(noMonthDayDate.month, 0)
    XCTAssertEqual(noMonthDayDate.day, 0)
  }

  func testCompareDate() {
    XCTAssertLessThan(CombinedDate(year: 2020, month: 10, day: 1),
                      CombinedDate(year: 2020, month: 10, day: 2))
  }
}
