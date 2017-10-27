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

    public public static func <(lhs: ErrNo, rhs: ErrNo) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }

    /// Operation not permitted (POSIX.1)
	public static let EPERM = 1
    /// No such file or directory (POSIX.1)
	public static let ENOENT = 2
    /// No such process (POSIX.1)
	public static let ESRCH = 3
    /// Interrupted system call (POSIX.1)
	public static let EINTR = 4
    /// I/O error (POSIX.1)
	public static let EIO = 5
    /// No such device or address (POSIX.1)
	public static let ENXIO = 6
    /// Argument list too long (POSIX.1)
	public static let E2BIG = 7
    /// Exec format error (POSIX.1)
	public static let ENOEXEC = 8
    /// Bad file descriptor (POSIX.1)
	public static let EBADF = 9
    /// No child processes (POSIX.1)
	public static let ECHILD = 10
    /// Out of memory (POSIX.1)
	public static let ENOMEM = 12
    /// Permission denied (POSIX.1)
	public static let EACCES = 13
    /// Bad address (POSIX.1)
	public static let EFAULT = 14
    /// Block device required (POSIX.1)
	public static let ENOTBLK = 15
    /// Device or resource busy (POSIX.1)
	public static let EBUSY = 16
    /// File exists (POSIX.1)
	public static let EEXIST = 17
    /// Improper link (POSIX.1)
	public static let EXDEV = 18
    /// No such device (POSIX.1)
	public static let ENODEV = 19
    /// Not a directory (POSIX.1)
	public static let ENOTDIR = 20
    /// Is a directory (POSIX.1)
	public static let EISDIR = 21
    /// Invalid argument (POSIX.1)
	public static let EINVAL = 22
    /// Too many open files in system (POSIX.1);  on  Linux,  this  is  probably  a  result  of  encountering  the /proc/sys/fs/file-max limit (see proc(5)).
	public static let ENFILE = 23
    /// Too many open files (POSIX.1); Commonly caused by exceeding the RLIMIT_NOFILE resource limit described in getrlimit(2).
	public static let EMFILE = 24
    /// Inappropriate I/O control operation (POSIX.1)
	public static let ENOTTY = 25
    /// Text file busy (POSIX.1)
	public static let ETXTBSY = 26
    /// File too large (POSIX.1)
	public static let EFBIG = 27
    /// No space left on device (POSIX.1)
	public static let ENOSPC = 28
    /// Illegal seek (POSIX.1)
	public static let ESPIPE = 29
    /// Read-only file system (POSIX.1)
	public static let EROFS = 30
    /// Too many links (POSIX.1)
	public static let EMLINK = 31
    /// Broken pipe (POSIX.1)
	public static let EPIPE = 32
    /// Math argument out of domain of function (POSIX.1, C99)
	public static let EDOM = 33
    /// Math result not representable, result too large (POSIX.1, C99)
	public static let ERANGE = 34

    /// Operation would block
	public static let EWOULDBLOCK = ErrNo.EAGAIN
}
