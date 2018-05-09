# ErrNo

Exploring type-safe wrappers for standard C error codes.

Supported on both macOS and Linux (Ubuntu). Uses standard ErrNo's, as well as platform-specific ones.

Allows for easy checking of error codes when using Swift C API wrappers

## Installation

Requires `Swift 4` and is built via the package manager via `swift build`.

Include this in your Package.swift dependencies
```swift
.package(url: "https://github.com/Ponyboy47/ErrNo.swift", .upToNextMinor(from: "0.4.0"))
```
For Swift 3 use version 0.2.5

## Usage

I wanted to use an enum (like in the main fork), but making this compatible with both macOS and linux (which use different values for some of the same errors) made this impossible.
So instead, this uses an struct with static lets so that it can still function very similarly to an enum, but allows for extensions to add the platform-specific error numbers
```swift
import ErrNo

#if !os(linux)
import Darwin.C
#else
import Glibc
#endif

let fileDescriptor = open("/path/to/a/file.txt", 0)

// Could show you how to use ErrNo here, but there are 30+ different errnos
that could be set and I'm too lazy to demonstrate each of them
guard fileDescriptor != -1 else { exit(EXIT_FAILURE) }

// A buffer for storing a C string (array of characters)
var buffer = UnsafeMutablePointer<CChar>()

// A simple C api to read from an open file descriptor
// Returns the number of bytes that were read and put into the buffer, or -1 if
// an error occurred
guard read(fileDescriptor, &buffer, 1000) >= 0 else {
    switch ErrNo.lastError {
    case .EAGAIN:
        print("The file descriptor fd refers to a file other than a socket and has been marked nonblocking, and the read would block.")
    case .EBADF:
        print("fd is not a valid file descriptor or is not open for reading.")
    case .EFAULT:
        print("buf is outside your accessible address space.")
    case .EINTR:
        print("The call was interrupted by a signal before any data was read; see signal(7).")
    case .EINVAL:
        print("fd is attached to an object which is unsuitable for reading; or the file was opened with the O_DIRECT flag, and either the address specified in buf, the value specified in count, or the current file off‐set is not suitably aligned.")
    case .EIO:
        print("I/O error.")
    case .EISDIR:
        print("fd refers to a directory.")
    default:
        print("An undocumented errno is set for the C read(2) API call: \(error)")
    }
   exit(EXIT_FAILURE)
}

// Always be sure to close open file descriptors
guard close(fileDescriptor) != -1 else {
    switch ErrNo.lastError {
    case .EBADF:
        print("fd isn't a valid open file descriptor")
    case .EINTR:
        print("The close() call was interrupted by a signal; see signal(7).")
    case .EIO:
        print("An I/O error occurred.")
    default:
        print("Since switches must be exhaustive, you will always need to include a default case. Or you can make a case statement for all 100+ error numbers ;)")
    }
    exit(EXIT_FAILURE)
}

exit(EXIT_SUCCESS)
```

## License

`ErrNo` is released under the MIT license.
