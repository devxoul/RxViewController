#if os(iOS)
import UIKit

import RxCocoa
import RxSwift

public extension Reactive where Base: UIWindow {

    /// Rx Single, triggerred when the Window has appeared on screen
    public var windowDidAppear: Single<Void> {
        return self.sentMessage(#selector(Base.makeKeyAndVisible)).map{ _  in return Void()}.take(1).asSingle()
    }
}
#endif
