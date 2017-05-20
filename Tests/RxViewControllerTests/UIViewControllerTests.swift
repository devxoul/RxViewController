#if os(iOS)
import UIKit
import XCTest

import RxExpect
import RxTest

import RxViewController

final class UIViewControllerTests: XCTestCase {
  func testViewDidLoad() {
    RxExpect { test in
      let viewController = UIViewController()
      test.assert(viewController.rx.viewDidLoad).filterNext().isEmpty()
    }
    RxExpect { test in
      let viewController = UIViewController()
      test.scheduler.scheduleAt(0) { viewController.viewDidLoad() }
      test.assert(viewController.rx.viewDidLoad).filterNext().count(1)
    }
  }

  func testViewWillAppear() {
    RxExpect { test in
      let viewController = UIViewController()
      test.assert(viewController.rx.viewWillAppear).filterNext().isEmpty()
    }
    RxExpect { test in
      let viewController = UIViewController()
      test.scheduler.scheduleAt(0) { viewController.viewWillAppear(true) }
      test.scheduler.scheduleAt(0) { viewController.viewWillAppear(false) }
      test.assert(viewController.rx.viewWillAppear).filterNext().equal([true, false])
    }
  }
  func testViewDidAppear() {
    RxExpect { test in
      let viewController = UIViewController()
      test.assert(viewController.rx.viewDidAppear).filterNext().isEmpty()
    }
    RxExpect { test in
      let viewController = UIViewController()
      test.scheduler.scheduleAt(0) { viewController.viewDidAppear(true) }
      test.scheduler.scheduleAt(0) { viewController.viewDidAppear(false) }
      test.assert(viewController.rx.viewDidAppear).filterNext().equal([true, false])
    }
  }

  func testViewWillDisappear() {
    RxExpect { test in
      let viewController = UIViewController()
      test.assert(viewController.rx.viewWillDisappear).filterNext().isEmpty()
    }
    RxExpect { test in
      let viewController = UIViewController()
      test.scheduler.scheduleAt(0) { viewController.viewWillDisappear(true) }
      test.scheduler.scheduleAt(0) { viewController.viewWillDisappear(false) }
      test.assert(viewController.rx.viewWillDisappear).filterNext().equal([true, false])
    }
  }
  func testViewDidDisappear() {
    RxExpect { test in
      let viewController = UIViewController()
      test.assert(viewController.rx.viewDidDisappear).filterNext().isEmpty()
    }
    RxExpect { test in
      let viewController = UIViewController()
      test.scheduler.scheduleAt(0) { viewController.viewDidDisappear(true) }
      test.scheduler.scheduleAt(0) { viewController.viewDidDisappear(false) }
      test.assert(viewController.rx.viewDidDisappear).filterNext().equal([true, false])
    }
  }

  func testViewWillLayoutSubviews() {
    RxExpect { test in
      let viewController = UIViewController()
      test.assert(viewController.rx.viewWillLayoutSubviews).filterNext().isEmpty()
    }
    RxExpect { test in
      let viewController = UIViewController()
      test.scheduler.scheduleAt(0) { viewController.viewWillLayoutSubviews() }
      test.assert(viewController.rx.viewWillLayoutSubviews).filterNext().count(1)
    }
  }
  func testViewDidLayoutSubviews() {
    RxExpect { test in
      let viewController = UIViewController()
      test.assert(viewController.rx.viewDidLayoutSubviews).filterNext().isEmpty()
    }
    RxExpect { test in
      let viewController = UIViewController()
      test.scheduler.scheduleAt(0) { viewController.viewDidLayoutSubviews() }
      test.assert(viewController.rx.viewDidLayoutSubviews).filterNext().count(1)
    }
  }

  func testWillMoveToParentViewController() {
    RxExpect { test in
      let viewController = UIViewController()
      test.assert(viewController.rx.willMoveToParentViewController).filterNext().isEmpty()
    }
    RxExpect { test in
      let viewController = UIViewController()
      let parentViewController = UIViewController()
      test.scheduler.scheduleAt(0) { viewController.willMove(toParentViewController: parentViewController) }
      test.scheduler.scheduleAt(0) { viewController.willMove(toParentViewController: nil) }
      test.assert(viewController.rx.willMoveToParentViewController).filterNext().equal([parentViewController, nil]) { $0 === $1 }
    }
  }
  func testDidMoveToParentViewController() {
    RxExpect { test in
      let viewController = UIViewController()
      test.assert(viewController.rx.didMoveToParentViewController).filterNext().isEmpty()
    }
    RxExpect { test in
      let viewController = UIViewController()
      let parentViewController = UIViewController()
      test.scheduler.scheduleAt(0) { viewController.didMove(toParentViewController: parentViewController) }
      test.scheduler.scheduleAt(0) { viewController.didMove(toParentViewController: nil) }
      test.assert(viewController.rx.didMoveToParentViewController).filterNext().equal([parentViewController, nil]) { $0 === $1 }
    }
  }

  func testDidReceiveMemoryWarning() {
    RxExpect { test in
      let viewController = UIViewController()
      test.assert(viewController.rx.didReceiveMemoryWarning).filterNext().isEmpty()
    }
    RxExpect { test in
      let viewController = UIViewController()
      test.scheduler.scheduleAt(0) { viewController.didReceiveMemoryWarning() }
      test.assert(viewController.rx.didReceiveMemoryWarning).filterNext().count(1)
    }
  }
}
#endif
