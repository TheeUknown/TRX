import QuartzCore

@testable import TRX
import Quick
import Nimble

class Morphable_CGAffineTransform: QuickSpec {
  
  override func spec() {
    
    var subject: Tween<CGAffineTransform>!
    var current: CGAffineTransform?
    let start = CGAffineTransformIdentity
    let finalValue = CGAffineTransformMakeTranslation(10, 20)
    
    beforeEach {
      subject = Tween(from: start,
        to: finalValue,
        time: 1,
        ease: Ease.linear,
        update: {
          current = $0
      })
    }
    
    describe("CGAffineTransform") {
      
      context("beginning") {
        
        beforeEach() {
          subject.seek(0)
        }
        
        it("should have correct value") {
          expect(current?.tx) == start.tx
          expect(current?.ty) == start.ty
        }
        
      }
      
      context("end") {
        
        beforeEach() {
          subject.seek(1)
        }
        
        it("should have correct value") {
          expect(current?.tx) == finalValue.tx
          expect(current?.ty) == finalValue.ty
        }
        
      }
      
      context("between") {
        
        beforeEach() {
          subject.seek(0.5)
        }
        
        it("should have correct value") {
          expect(current?.tx) == 5
          expect(current?.ty) == 10
        }
        
      }
      
    }
    
  }
  
}
