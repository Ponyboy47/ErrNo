// Copyright (c) 2019 Neil Pankey & Jacob Williams. All rights reserved.

#if !os(Linux)
import Darwin.C.errno
#else
import Glibc
public typealias errno_t = Int32
#endif

// MARK: CustomStringConvertible

extension ErrNo: CustomStringConvertible {
    /// Returns the error message and code.
    public var description: String {
        return "\(message) (\(rawValue))"
    }

    /// Lookup error message specific to `ErrNo`.
    public var message: String {
        return String(cString: strerror(rawValue))
    }
}

/// Wraps the most recent `errno` value
@available(*, unavailable, renamed: "ErrNo.lastError")
public func lastError() -> ErrNo {
    return ErrNo(rawValue: errno)
}

public extension ErrNo {
    /// An ErrNo using the most current value of `errno`
    static var lastError: ErrNo {
        get { return ErrNo(rawValue: errno) }
        set { errno = newValue.rawValue }
    }
}

/// Wrapper around errno values from the C standard library.
public struct ErrNo: Error, RawRepresentable, Equatable, Comparable {
    public typealias RawValue = errno_t

    public let rawValue: RawValue

    public init(rawValue: RawValue) {
        self.rawValue = rawValue
    }

    public static func == (lhs: ErrNo, rhs: ErrNo) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }

    public static func == (lhs: RawValue, rhs: ErrNo) -> Bool {
        return lhs == rhs.rawValue
    }

    public static func == (lhs: ErrNo, rhs: RawValue) -> Bool {
        return lhs.rawValue == rhs
    }

    public static func ~= (lhs: ErrNo, rhs: ErrNo) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }

    public static func ~= (lhs: RawValue, rhs: ErrNo) -> Bool {
        return lhs == rhs.rawValue
    }

    public static func ~= (lhs: ErrNo, rhs: RawValue) -> Bool {
        return lhs.rawValue == rhs
    }

    public static func < (lhs: ErrNo, rhs: ErrNo) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }

    public static func < (lhs: ErrNo, rhs: RawValue) -> Bool {
        return lhs.rawValue < rhs
    }

    public static func < (lhs: RawValue, rhs: ErrNo) -> Bool {
        return lhs < rhs.rawValue
    }

    /// Operation not permitted (POSIX.1)
    public static let EPERM = ErrNo(rawValue: 1)
    /// No such file or directory (POSIX.1)
    public static let ENOENT = ErrNo(rawValue: 2)
    /// No such process (POSIX.1)
    public static let ESRCH = ErrNo(rawValue: 3)
    /// Interrupted system call (POSIX.1)
    public static let EINTR = ErrNo(rawValue: 4)
    /// I/O error (POSIX.1)
    public static let EIO = ErrNo(rawValue: 5)
    /// No such device or address (POSIX.1)
    public static let ENXIO = ErrNo(rawValue: 6)
    /// Argument list too long (POSIX.1)
    public static let E2BIG = ErrNo(rawValue: 7)
    /// Exec format error (POSIX.1)
    public static let ENOEXEC = ErrNo(rawValue: 8)
    /// Bad file descriptor (POSIX.1)
    public static let EBADF = ErrNo(rawValue: 9)
    /// No child processes (POSIX.1)
    public static let ECHILD = ErrNo(rawValue: 10)
    /// Out of memory (POSIX.1)
    public static let ENOMEM = ErrNo(rawValue: 12)
    /// Permission denied (POSIX.1)
    public static let EACCES = ErrNo(rawValue: 13)
    /// Bad address (POSIX.1)
    public static let EFAULT = ErrNo(rawValue: 14)
    /// Block device required (POSIX.1)
    public static let ENOTBLK = ErrNo(rawValue: 15)
    /// Device or resource busy (POSIX.1)
    public static let EBUSY = ErrNo(rawValue: 16)
    /// File exists (POSIX.1)
    public static let EEXIST = ErrNo(rawValue: 17)
    /// Improper link (POSIX.1)
    public static let EXDEV = ErrNo(rawValue: 18)
    /// No such device (POSIX.1)
    public static let ENODEV = ErrNo(rawValue: 19)
    /// Not a directory (POSIX.1)
    public static let ENOTDIR = ErrNo(rawValue: 20)
    /// Is a directory (POSIX.1)
    public static let EISDIR = ErrNo(rawValue: 21)
    /// Invalid argument (POSIX.1)
    public static let EINVAL = ErrNo(rawValue: 22)
    /// Too many open files in system (POSIX.1);  on  Linux,  this  is  probably  a  result  of  encountering  the /proc/sys/fs/file-max limit (see proc(5)).
    public static let ENFILE = ErrNo(rawValue: 23)
    /// Too many open files (POSIX.1); Commonly caused by exceeding the RLIMIT_NOFILE resource limit described in getrlimit(2).
    public static let EMFILE = ErrNo(rawValue: 24)
    /// Inappropriate I/O control operation (POSIX.1)
    public static let ENOTTY = ErrNo(rawValue: 25)
    /// Text file busy (POSIX.1)
    public static let ETXTBSY = ErrNo(rawValue: 26)
    /// File too large (POSIX.1)
    public static let EFBIG = ErrNo(rawValue: 27)
    /// No space left on device (POSIX.1)
    public static let ENOSPC = ErrNo(rawValue: 28)
    /// Illegal seek (POSIX.1)
    public static let ESPIPE = ErrNo(rawValue: 29)
    /// Read-only file system (POSIX.1)
    public static let EROFS = ErrNo(rawValue: 30)
    /// Too many links (POSIX.1)
    public static let EMLINK = ErrNo(rawValue: 31)
    /// Broken pipe (POSIX.1)
    public static let EPIPE = ErrNo(rawValue: 32)
    /// Math argument out of domain of function (POSIX.1, C99)
    public static let EDOM = ErrNo(rawValue: 33)
    /// Math result not representable, result too large (POSIX.1, C99)
    public static let ERANGE = ErrNo(rawValue: 34)
}
