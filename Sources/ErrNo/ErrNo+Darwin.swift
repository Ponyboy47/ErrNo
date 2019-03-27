// Copyright (c) 2019 Neil Pankey & Jacob Williams. All rights reserved.

#if !os(Linux)
import Darwin.C.errno

public extension ErrNo {
    /* non-blocking and interrupt i/o */
    /// Resource temporarily unavailable
    static let EAGAIN = ErrNo(rawValue: Darwin.EAGAIN)
    /// Operation would block
    static let EWOULDBLOCK = ErrNo(rawValue: Darwin.EWOULDBLOCK)
    /// Operation now in progress
    static let EINPROGRESS = ErrNo(rawValue: Darwin.EINPROGRESS)
    /// Operation already in progress
    static let EALREADY = ErrNo(rawValue: Darwin.EALREADY)

    /* ipc/network software -- argument errors */
    /// Socket operation on non-socket
    static let ENOTSOCK = ErrNo(rawValue: Darwin.ENOTSOCK)
    /// Destination address required
    static let EDESTADDRREQ = ErrNo(rawValue: Darwin.EDESTADDRREQ)
    /// Message too long
    static let EMSGSIZE = ErrNo(rawValue: Darwin.EMSGSIZE)
    /// Protocol wrong type for socket
    static let EPROTOTYPE = ErrNo(rawValue: Darwin.EPROTOTYPE)
    /// Protocol not available
    static let ENOPROTOOPT = ErrNo(rawValue: Darwin.ENOPROTOOPT)
    /// Protocol not supported
    static let EPROTONOSUPPORT = ErrNo(rawValue: Darwin.EPROTONOSUPPORT)
    /// Socket type not supported
    static let ESOCKTNOSUPPORT = ErrNo(rawValue: Darwin.ESOCKTNOSUPPORT)
    /// Operation not supported
    static let ENOTSUP = ErrNo(rawValue: Darwin.ENOTSUP)
    /// Operation not supported on socket
    static let EOPNOTSUPP = ErrNo(rawValue: Darwin.EOPNOTSUPP)
    /// Protocol family not supported
    static let EPFNOSUPPORT = ErrNo(rawValue: Darwin.EPFNOSUPPORT)
    /// Address family not supported by protocol family
    static let EAFNOSUPPORT = ErrNo(rawValue: Darwin.EAFNOSUPPORT)
    /// Address already in use
    static let EADDRINUSE = ErrNo(rawValue: Darwin.EADDRINUSE)
    /// Can't assign requested address
    static let EADDRNOTAVAIL = ErrNo(rawValue: Darwin.EADDRNOTAVAIL)

    /* ipc/network software -- operational errors */
    /// Network is down
    static let ENETDOWN = ErrNo(rawValue: Darwin.ENETDOWN)
    /// Network is unreachable
    static let ENETUNREACH = ErrNo(rawValue: Darwin.ENETUNREACH)
    /// Network dropped connection on reset
    static let ENETRESET = ErrNo(rawValue: Darwin.ENETRESET)
    /// Software caused connection abort
    static let ECONNABORTED = ErrNo(rawValue: Darwin.ECONNABORTED)
    /// Connection reset by peer
    static let ECONNRESET = ErrNo(rawValue: Darwin.ECONNRESET)
    /// No buffer space available
    static let ENOBUFS = ErrNo(rawValue: Darwin.ENOBUFS)
    /// Socket is already connected
    static let EISCONN = ErrNo(rawValue: Darwin.EISCONN)
    /// Socket is not connected
    static let ENOTCONN = ErrNo(rawValue: Darwin.ENOTCONN)
    /// Can't send after socket shutdown
    static let ESHUTDOWN = ErrNo(rawValue: Darwin.ESHUTDOWN)
    /// Too many references: can't splice
    static let ETOOMANYREFS = ErrNo(rawValue: Darwin.ETOOMANYREFS)
    /// Operation timed out
    static let ETIMEDOUT = ErrNo(rawValue: Darwin.ETIMEDOUT)
    /// Connection refused
    static let ECONNREFUSED = ErrNo(rawValue: Darwin.ECONNREFUSED)

    /// Too many levels of symbolic links
    static let ELOOP = ErrNo(rawValue: Darwin.ELOOP)
    /// File name too long
    static let ENAMETOOLONG = ErrNo(rawValue: Darwin.ENAMETOOLONG)

    /// Host is down
    static let EHOSTDOWN = ErrNo(rawValue: Darwin.EHOSTDOWN)
    /// No route to host
    static let EHOSTUNREACH = ErrNo(rawValue: Darwin.EHOSTUNREACH)
    /// Directory not empty
    static let ENOTEMPTY = ErrNo(rawValue: Darwin.ENOTEMPTY)

    /* quotas & mush */
    /// Too many processes
    static let EPROCLIM = ErrNo(rawValue: Darwin.EPROCLIM)
    /// Too many users
    static let EUSERS = ErrNo(rawValue: Darwin.EUSERS)
    /// Disc quota exceeded
    static let EDQUOT = ErrNo(rawValue: Darwin.EDQUOT)

    /* Network File System */
    /// Stale NFS file handle
    static let ESTALE = ErrNo(rawValue: Darwin.ESTALE)
    /// Too many levels of remote in path
    static let EREMOTE = ErrNo(rawValue: Darwin.EREMOTE)
    /// RPC struct is bad
    static let EBADRPC = ErrNo(rawValue: Darwin.EBADRPC)
    /// RPC version wrong
    static let ERPCMISMATCH = ErrNo(rawValue: Darwin.ERPCMISMATCH)
    /// RPC prog. not avail
    static let EPROGUNAVAIL = ErrNo(rawValue: Darwin.EPROGUNAVAIL)
    /// Program version wrong
    static let EPROGMISMATCH = ErrNo(rawValue: Darwin.EPROGMISMATCH)
    /// Bad procedure for program
    static let EPROCUNAVAIL = ErrNo(rawValue: Darwin.EPROCUNAVAIL)

    /// No locks available
    static let ENOLCK = ErrNo(rawValue: Darwin.ENOLCK)
    /// Function not implemented
    static let ENOSYS = ErrNo(rawValue: Darwin.ENOSYS)

    /// Inappropriate file type or format
    static let EFTYPE = ErrNo(rawValue: Darwin.EFTYPE)
    /// Authentication error
    static let EAUTH = ErrNo(rawValue: Darwin.EAUTH)
    /// Need authenticator
    static let ENEEDAUTH = ErrNo(rawValue: Darwin.ENEEDAUTH)

    /* Intelligent device errors */
    /// Device power is off
    static let EPWROFF = ErrNo(rawValue: Darwin.EPWROFF)
    /// Device error, e.g. paper out
    static let EDEVERR = ErrNo(rawValue: Darwin.EDEVERR)

    /// Value too large to be stored in data type
    static let EOVERFLOW = ErrNo(rawValue: Darwin.EOVERFLOW)

    /* Program loading errors */
    /// Bad executable
    static let EBADEXEC = ErrNo(rawValue: Darwin.EBADEXEC)
    /// Bad CPU type in executable
    static let EBADARCH = ErrNo(rawValue: Darwin.EBADARCH)
    /// Shared library version mismatch
    static let ESHLIBVERS = ErrNo(rawValue: Darwin.ESHLIBVERS)
    /// Malformed Macho file
    static let EBADMACHO = ErrNo(rawValue: Darwin.EBADMACHO)

    /// Operation canceled
    static let ECANCELED = ErrNo(rawValue: Darwin.ECANCELED)

    /// Identifier removed
    static let EIDRM = ErrNo(rawValue: Darwin.EIDRM)
    /// No message of desired type
    static let ENOMSG = ErrNo(rawValue: Darwin.ENOMSG)
    /// Illegal byte sequence
    static let EILSEQ = ErrNo(rawValue: Darwin.EILSEQ)
    /// Attribute not found
    static let ENOATTR = ErrNo(rawValue: Darwin.ENOATTR)

    /// Bad message
    static let EBADMSG = ErrNo(rawValue: Darwin.EBADMSG)
    /// Reserved
    static let EMULTIHOP = ErrNo(rawValue: Darwin.EMULTIHOP)
    /// No message available on STREAM
    static let ENODATA = ErrNo(rawValue: Darwin.ENODATA)
    /// Reserved
    static let ENOLINK = ErrNo(rawValue: Darwin.ENOLINK)
    /// No STREAM resources
    static let ENOSR = ErrNo(rawValue: Darwin.ENOSR)
    /// Not a STREAM
    static let ENOSTR = ErrNo(rawValue: Darwin.ENOSTR)
    /// Protocol error
    static let EPROTO = ErrNo(rawValue: Darwin.EPROTO)
    /// STREAM ioctl timeout
    static let ETIME = ErrNo(rawValue: Darwin.ETIME)

    /// No such policy registered
    static let ENOPOLICY = ErrNo(rawValue: Darwin.ENOPOLICY)

    /// Must be equal largest errno
    static let ELAST = ErrNo(rawValue: Darwin.ELAST)
}
#endif
