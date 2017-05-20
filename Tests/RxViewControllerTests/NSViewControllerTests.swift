#if os(macOS)
import AppKit
import XCTest

import RxExpect
import RxTest

import RxViewController

final class NSViewControllerTests: XCTestCase {
  func testViewDidLoad() {
    RxExpect { test in
      let viewController = NSViewController()
      test.assert(viewController.rx.viewDidLoad).filterNext().isEmpty()
    }
    RxExpect { test in
      let viewController = NSViewController()
      test.scheduler.scheduleAt(0) { viewController.viewDidLoad() }
      test.assert(viewController.rx.viewDidLoad).filterNext().count(1)
    }
  }

  func testViewWillAppear() {
    RxExpect { test in
      let viewController = NSViewController()
      test.assert(viewController.rx.viewWillAppear).filterNext().isEmpty()
    }
    RxExpect { test in
      let viewController = NSViewController()
      test.scheduler.scheduleAt(0) { viewController.viewWillAppear() }
      test.assert(viewController.rx.viewWillAppear).filterNext().count(1)
    }
  }
  func testViewDidAppear() {
    RxExpect { test in
      let viewController = NSViewController()
      test.assert(viewController.rx.viewDidAppear).filterNext().isEmpty()
    }
    RxExpect { test in
      let viewController = NSViewController()
      test.scheduler.scheduleAt(0) { viewController.viewDidAppear() }
      test.assert(viewController.rx.viewDidAppear).filterNext().count(1)
    }
  }

  func testViewWillDisappear() {
    RxExpect { test in
      let viewController = NSViewController()
      test.assert(viewController.rx.viewWillDisappear).filterNext().isEmpty()
    }
    RxExpect { test in
      let viewController = NSViewController()
      test.scheduler.scheduleAt(0) { viewController.viewWillDisappear() }
      test.assert(viewController.rx.viewWillDisappear).filterNext().count(1)
    }
  }
  func testViewDidDisappear() {
    RxExpect { test in
      let viewController = NSViewController()
      test.assert(viewController.rx.viewDidDisappear).filterNext().isEmpty()
    }
    RxExpect { test in
      let viewController = NSViewController()
      test.scheduler.scheduleAt(0) { viewController.viewDidDisappear() }
      test.assert(viewController.rx.viewDidDisappear).filterNext().count(1)
    }
  }

  
  func testViewWillLayout() {
    RxExpect { test in
      let viewController = NSViewController()
      test.assert(viewController.rx.viewWillLayout).filterNext().isEmpty()
    }
    RxExpect { test in
      let viewController = NSViewController()
      test.scheduler.scheduleAt(0) { viewController.viewWillLayout() }
      test.assert(viewController.rx.viewWillLayout).filterNext().count(1)
    }
  }
  func testViewDidLayout() {
    RxExpect { test in
      let viewController = NSViewController()
      test.assert(viewController.rx.viewDidLayout).filterNext().isEmpty()
    }
    RxExpect { test in
      let viewController = NSViewController()
      test.scheduler.scheduleAt(0) { viewController.viewDidLayout() }
      test.assert(viewController.rx.viewDidLayout).filterNext().count(1)
    }
  }
}
#endif
