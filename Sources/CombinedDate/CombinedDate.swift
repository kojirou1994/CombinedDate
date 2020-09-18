public struct CombinedDate: RawRepresentable, Codable, Equatable, Comparable {

  public let year: UInt16
  public let month: UInt8
  public let day: UInt8

  @inlinable
  public init(year: UInt16, month: UInt8, day: UInt8) {
    self.year = year
    self.month = month
    self.day = day
  }

  @inlinable
  public init(year: UInt16, month: UInt8) {
    self.init(year: year, month: month, day: 0)
  }

  @inlinable
  public init(year: UInt16) {
    self.init(year: year, month: 0, day: 0)
  }

  @inlinable
  public init(rawValue: UInt32) {
    year = numericCast(rawValue >> 16)
    month = .init(truncatingIfNeeded: (rawValue << 16) >> 24)
    day = .init(truncatingIfNeeded: rawValue & 0xff)
  }

  @inlinable
  public var rawValue: UInt32 {
    (UInt32(year) << 16)
      | (UInt32(month) << 8)
      | UInt32(day)
  }

  @inlinable
  public static func < (lhs: CombinedDate, rhs: CombinedDate) -> Bool {
    lhs.rawValue < rhs.rawValue
  }
}
