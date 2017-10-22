#if os(macOS)
import AppKit
import XCTest

import RxExpect
import RxViewController
import RxTest

final class NSViewControllerTests: XCTestCase {
  func testViewDidLoad() {
    let test = RxExpect()
    let viewController = NSViewController()
    test.scheduler.scheduleAt(100) { viewController.viewDidLoad() }
    test.assert(viewController.rx.viewDidLoad) { events in
      XCTAssertEqual(events.in(..<100).filter(.next).count, 0)
      XCTAssertEqual(events.in(100...).filter(.next).count, 1)
    }
  }

  func testViewWillAppear() {
    let test = RxExpect()
    let viewController = NSViewController()
    test.scheduler.scheduleAt(100) { viewController.viewWillAppear() }
    test.assert(viewController.rx.viewWillAppear) { events in
      XCTAssertEqual(events.in(..<100).filter(.next).count, 0)
      XCTAssertEqual(events.in(100...).filter(.next).count, 1)
    }
  }

  func testViewDidAppear() {
    let test = RxExpect()
    let viewController = NSViewController()
    test.scheduler.scheduleAt(100) { viewController.viewDidAppear() }
    test.assert(viewController.rx.viewDidAppear) { events in
      XCTAssertEqual(events.in(..<100).filter(.next).count, 0)
      XCTAssertEqual(events.in(100...).filter(.next).count, 1)
    }
  }

  func testViewWillDisappear() {
    let test = RxExpect()
    let viewController = NSViewController()
    test.scheduler.scheduleAt(100) { viewController.viewWillDisappear() }
    test.assert(viewController.rx.viewWillDisappear) { events in
      XCTAssertEqual(events.in(..<100).filter(.next).count, 0)
      XCTAssertEqual(events.in(100...).filter(.next).count, 1)
    }
  }

  func testViewDidDisappear() {
    let test = RxExpect()
    let viewController = NSViewController()
    test.scheduler.scheduleAt(100) { viewController.viewDidDisappear() }
    test.assert(viewController.rx.viewDidDisappear) { events in
      XCTAssertEqual(events.in(..<100).filter(.next).count, 0)
      XCTAssertEqual(events.in(100...).filter(.next).count, 1)
    }
  }

  func testViewWillLayout() {
    let test = RxExpect()
    let viewController = NSViewController()
    test.scheduler.scheduleAt(100) { viewController.viewWillLayout() }
    test.assert(viewController.rx.viewWillLayout) { events in
      XCTAssertEqual(events.in(..<100).filter(.next).count, 0)
      XCTAssertEqual(events.in(100...).filter(.next).count, 1)
    }
  }

  func testViewDidLayout() {
    let test = RxExpect()
    let viewController = NSViewController()
    test.scheduler.scheduleAt(100) { viewController.viewDidLayout() }
    test.assert(viewController.rx.viewDidLayout) { events in
      XCTAssertEqual(events.in(..<100).filter(.next).count, 0)
      XCTAssertEqual(events.in(100...).filter(.next).count, 1)
    }
  }
}
#endif
