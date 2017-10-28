# ErrNo

Exploring type-safe wrappers for standard C error codes.

Supported on both macOS and Linux (Ubuntu). Uses standard ErrNo's, as well as platform-specific ones.

## Installation

Requires `Swift 3` and is built via the package manager via `swift build`.

Include this in your Package.swift dependencies
```swift
.Package(url: "https://github.com/Ponyboy47/ErrNo.swift", majorVersion: 0, minor: 2)
```

## Usage

I wanted to use an enum (like in the main fork), but making this compatible with both macOS and linux which use different values for some of the same error numbers made this impossible.
So instead, this uses an struct with static lets so that it can still function very similarly to an enum, but allows for extensions to add the platform-specific things
```swift
#if !os(linux)
import Darwin.C
#else
import Glibc
#endif

import ErrNo

let bytes = read(fileDescriptor, buffer, 1000)

// An error occurred
if bytes == -1 {
    // lastError() is a public function that retrieves the most recent errno (if it is set) and returns an ErrNo struct
    if let error = lastError() {
        // Since ErrNo is a struct instead of an enum, each case must include the `ErrNo` before the .value
        switch error {
        case ErrNo.EAGAIN:
            print("The  file  descriptor fd refers to a file other than a socket and has been marked nonblocking, and the read would block.")
        case ErrNo.EBADF:
            print("fd is not a valid file descriptor or is not open for reading.")
        case ErrNo.EFAULT:
            print("buf is outside your accessible address space.")
        case ErrNo.EINTR:
            print("The call was interrupted by a signal before any data was read; see signal(7).")
        case ErrNo.EINVAL:
            print("fd is attached to an object which is unsuitable for reading; or the file was opened with the O_DIRECT flag, and either the address specified in buf, the value specified in count, or the current file off‐set is not suitably aligned.")
        case ErrNo.EIO:
            print("I/O error.")
        case ErrNo.EISDIR:
            print("fd refers to a directory.")
        default:
            print("An undocumented errno is set for the C read(2) API call: \(error)")
        }
    } else {
        print("errno is not set, so we cannot identify the error that occurred in the C layer.")
    }
}
```
NOTE: It is also possible to just remove the `ErrNo.` entirely and just use the raw value names (since they can be imported from either Glibc or Darwin.C.errno)

For example, the following switch would behave exactly the same as the switch in the example code above:
```swift
switch error {
case EAGAIN:
    print("The  file  descriptor fd refers to a file other than a socket and has been marked nonblocking, and the read would block.")
case EBADF:
    print("fd is not a valid file descriptor or is not open for reading.")
case EFAULT:
    print("buf is outside your accessible address space.")
case EINTR:
    print("The call was interrupted by a signal before any data was read; see signal(7).")
case EINVAL:
    print("fd is attached to an object which is unsuitable for reading; or the file was opened with the O_DIRECT flag, and either the address specified in buf, the value specified in count, or the current file off‐set is not suitably aligned.")
case EIO:
    print("I/O error.")
case EISDIR:
    print("fd refers to a directory.")
default:
    print("An undocumented errno is set for the C read(2) API call: \(error)")
}
```


## License

`ErrNo` is released under the MIT license.
