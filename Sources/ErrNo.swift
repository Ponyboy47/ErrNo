//  Copyright (c) 2017 Neil Pankey and Jacob Williams. All rights reserved.

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
        return String(cString: strerror(self.rawValue))
    }
}

/// Wraps the most recent `errno` value
public func lastError() -> ErrNo? {
    return ErrNo(rawValue: errno)
}

/// Wrapper around errno values from the C standard library.
public struct ErrNo: Error, RawRepresentable, Equatable, Comparable {
    public typealias RawValue = errno_t
    public var rawValue: RawValue
    public init(rawValue: RawValue) {
        self.rawValue = rawValue
    }

    public static func ==(lhs: ErrNo, rhs: ErrNo) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }
    public static func ==(lhs: RawValue, rhs: ErrNo) -> Bool {
        return lhs == rhs.rawValue
    }
    public static func ==(lhs: ErrNo, rhs: RawValue) -> Bool {
        return lhs.rawValue == rhs
    }
    public static func ~=(lhs: ErrNo, rhs: ErrNo) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }
    public static func ~=(lhs: RawValue, rhs: ErrNo) -> Bool {
        return lhs == rhs.rawValue
    }
    public static func ~=(lhs: ErrNo, rhs: RawValue) -> Bool {
        return lhs.rawValue == rhs
    }
    public static func <(lhs: ErrNo, rhs: ErrNo) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }
    public static func <(lhs: ErrNo, rhs: RawValue) -> Bool {
        return lhs.rawValue < rhs
    }
    public static func <(lhs: RawValue, rhs: ErrNo) -> Bool {
        return lhs < rhs.rawValue
    }

    /// Operation not permitted (POSIX.1)
    public static let EPERM: RawValue = 1
    /// No such file or directory (POSIX.1)
    public static let ENOENT: RawValue = 2
    /// No such process (POSIX.1)
    public static let ESRCH: RawValue = 3
    /// Interrupted system call (POSIX.1)
    public static let EINTR: RawValue = 4
    /// I/O error (POSIX.1)
    public static let EIO: RawValue = 5
    /// No such device or address (POSIX.1)
    public static let ENXIO: RawValue = 6
    /// Argument list too long (POSIX.1)
    public static let E2BIG: RawValue = 7
    /// Exec format error (POSIX.1)
    public static let ENOEXEC: RawValue = 8
    /// Bad file descriptor (POSIX.1)
    public static let EBADF: RawValue = 9
    /// No child processes (POSIX.1)
    public static let ECHILD: RawValue = 10
    /// Out of memory (POSIX.1)
    public static let ENOMEM: RawValue = 12
    /// Permission denied (POSIX.1)
    public static let EACCES: RawValue = 13
    /// Bad address (POSIX.1)
    public static let EFAULT: RawValue = 14
    /// Block device required (POSIX.1)
    public static let ENOTBLK: RawValue = 15
    /// Device or resource busy (POSIX.1)
    public static let EBUSY: RawValue = 16
    /// File exists (POSIX.1)
    public static let EEXIST: RawValue = 17
    /// Improper link (POSIX.1)
    public static let EXDEV: RawValue = 18
    /// No such device (POSIX.1)
    public static let ENODEV: RawValue = 19
    /// Not a directory (POSIX.1)
    public static let ENOTDIR: RawValue = 20
    /// Is a directory (POSIX.1)
    public static let EISDIR: RawValue = 21
    /// Invalid argument (POSIX.1)
    public static let EINVAL: RawValue = 22
    /// Too many open files in system (POSIX.1);  on  Linux,  this  is  probably  a  result  of  encountering  the /proc/sys/fs/file-max limit (see proc(5)).
    public static let ENFILE: RawValue = 23
    /// Too many open files (POSIX.1); Commonly caused by exceeding the RLIMIT_NOFILE resource limit described in getrlimit(2).
    public static let EMFILE: RawValue = 24
    /// Inappropriate I/O control operation (POSIX.1)
    public static let ENOTTY: RawValue = 25
    /// Text file busy (POSIX.1)
    public static let ETXTBSY: RawValue = 26
    /// File too large (POSIX.1)
    public static let EFBIG: RawValue = 27
    /// No space left on device (POSIX.1)
    public static let ENOSPC: RawValue = 28
    /// Illegal seek (POSIX.1)
    public static let ESPIPE: RawValue = 29
    /// Read-only file system (POSIX.1)
    public static let EROFS: RawValue = 30
    /// Too many links (POSIX.1)
    public static let EMLINK: RawValue = 31
    /// Broken pipe (POSIX.1)
    public static let EPIPE: RawValue = 32
    /// Math argument out of domain of function (POSIX.1, C99)
    public static let EDOM: RawValue = 33
    /// Math result not representable, result too large (POSIX.1, C99)
    public static let ERANGE: RawValue = 34
}
