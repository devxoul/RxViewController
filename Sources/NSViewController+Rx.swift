#if os(macOS)
import AppKit

import RxCocoa
import RxSwift

public extension Reactive where Base: NSViewController {
  public var viewDidLoad: ControlEvent<Void> {
    let source = self.methodInvoked(#selector(Base.viewDidLoad)).map { _ in }
    return ControlEvent(events: source)
  }

  public var viewWillAppear: ControlEvent<Void> {
    let source = self.methodInvoked(#selector(Base.viewWillAppear)).map { _ in }
    return ControlEvent(events: source)
  }
  public var viewDidAppear: ControlEvent<Void> {
    let source = self.methodInvoked(#selector(Base.viewDidAppear)).map { _ in }
    return ControlEvent(events: source)
  }

  public var viewWillDisappear: ControlEvent<Void> {
    let source = self.methodInvoked(#selector(Base.viewWillDisappear)).map { _ in }
    return ControlEvent(events: source)
  }
  public var viewDidDisappear: ControlEvent<Void> {
    let source = self.methodInvoked(#selector(Base.viewDidDisappear)).map { _ in }
    return ControlEvent(events: source)
  }

  public var viewWillLayout: ControlEvent<Void> {
    let source = self.methodInvoked(#selector(Base.viewWillLayout)).map { _ in }
    return ControlEvent(events: source)
  }
  public var viewDidLayout: ControlEvent<Void> {
    let source = self.methodInvoked(#selector(Base.viewDidLayout)).map { _ in }
    return ControlEvent(events: source)
  }
}
#endif
