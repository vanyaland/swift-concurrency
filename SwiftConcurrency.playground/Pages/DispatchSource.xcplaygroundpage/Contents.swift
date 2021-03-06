/*:
 [Table of contents](Table-of-contents) • [Previous page](@previous) • [Next page](@next)

 # Dispatch Source

 [Dispatch Sources](https://developer.apple.com/library/archive/documentation/General/Conceptual/ConcurrencyProgrammingGuide/GCDWorkQueues/GCDWorkQueues.html)

 - Timer Dispatch Source - generates periodic notifications.
 - Signal Dispatch Source - interacts with unix-signals.
 - Description Dispatch Source - notifies on file changes.
 - Process Dispatch Source - allows to listen for process eevnts.
 */
import Foundation

final class DispatchSourceDemo {

    private let source = DispatchSource.makeTimerSource()

    func run() {
        source.setEventHandler {
            print("DispatchSourceDemo")
        }
        source.schedule(deadline: .now(), repeating: 5)
        source.activate()
    }

}

let dispatchSourceDemo = DispatchSourceDemo()
dispatchSourceDemo.run()
