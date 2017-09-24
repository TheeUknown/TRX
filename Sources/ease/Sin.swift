import Foundation

public extension Ease {
  
  /**
   
   Sine Easing Functions
   
   */
  public struct Sin {
    
    /// Ease in
    public static let easeIn: TimingFunction = {
      t, b, c, d in
      return -c * cos(t / d * .pi / 2) + c + b
    }
    
    /// Ease out
    public static let easeOut: TimingFunction = {
      t, b, c, d in
      return c * sin(t / d * .pi / 2) + b
    }
    
    /// Ease in out
    public static let easeInOut: TimingFunction = {
      t, b, c, d in
      return -c / 2 * (cos(.pi * t / d) - 1) + b
    }
    
  }
  
}
