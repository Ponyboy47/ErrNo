//  Copyright (c) 2017 Neil Pankey & Jacob Williams. All rights reserved.

#if !os(Linux)
import Darwin.C.errno

public extension ErrNo {
/* non-blocking and interrupt i/o */
    /// Resource temporarily unavailable
    public static let EAGAIN = ErrNo(rawValue: Darwin.EAGAIN)
    /// Operation now in progress
    public static let EINPROGRESS = ErrNo(rawValue: Darwin.EINPROGRESS)
    /// Operation already in progress
    public static let EALREADY = ErrNo(rawValue: Darwin.EALREADY)

/* ipc/network software -- argument errors */
    /// Socket operation on non-socket
    public static let ENOTSOCK = ErrNo(rawValue: Darwin.ENOTSOCK)
    /// Destination address required
    public static let EDESTADDRREQ = ErrNo(rawValue: Darwin.EDESTADDRREQ)
    /// Message too long
    public static let EMSGSIZE = ErrNo(rawValue: Darwin.EMSGSIZE)
    /// Protocol wrong type for socket
    public static let EPROTOTYPE = ErrNo(rawValue: Darwin.EPROTOTYPE)
    /// Protocol not available
    public static let ENOPROTOOPT = ErrNo(rawValue: Darwin.ENOPROTOOPT)
    /// Protocol not supported
    public static let EPROTONOSUPPORT = ErrNo(rawValue: Darwin.EPROTONOSUPPORT)
    /// Socket type not supported
    public static let ESOCKTNOSUPPORT = ErrNo(rawValue: Darwin.ESOCKTNOSUPPORT)
    /// Operation not supported
    public static let ENOTSUP = ErrNo(rawValue: Darwin.ENOTSUP)
    /// Operation not supported on socket
    public static let EOPNOTSUPP = ErrNo.ENOTSUP
    /// Protocol family not supported
    public static let EPFNOSUPPORT = ErrNo(rawValue: Darwin.EPFNOSUPPORT)
    /// Address family not supported by protocol family
    public static let EAFNOSUPPORT = ErrNo(rawValue: Darwin.EAFNOSUPPORT)
    /// Address already in use
    public static let EADDRINUSE = ErrNo(rawValue: Darwin.EADDRINUSE)
    /// Can't assign requested address
    public static let EADDRNOTAVAIL = ErrNo(rawValue: Darwin.EADDRNOTAVAIL)

/* ipc/network software -- operational errors */
    /// Network is down
    public static let ENETDOWN = ErrNo(rawValue: Darwin.ENETDOWN)
    /// Network is unreachable
    public static let ENETUNREACH = ErrNo(rawValue: Darwin.ENETUNREACH)
    /// Network dropped connection on reset
    public static let ENETRESET = ErrNo(rawValue: Darwin.ENETRESET)
    /// Software caused connection abort
    public static let ECONNABORTED = ErrNo(rawValue: Darwin.ECONNABORTED)
    /// Connection reset by peer
    public static let ECONNRESET = ErrNo(rawValue: Darwin.ECONNRESET)
    /// No buffer space available
    public static let ENOBUFS = ErrNo(rawValue: Darwin.ENOBUFS)
    /// Socket is already connected
    public static let EISCONN = ErrNo(rawValue: Darwin.EISCONN)
    /// Socket is not connected
    public static let ENOTCONN = ErrNo(rawValue: Darwin.ENOTCONN)
    /// Can't send after socket shutdown
    public static let ESHUTDOWN = ErrNo(rawValue: Darwin.ESHUTDOWN)
    /// Too many references: can't splice
    public static let ETOOMANYREFS = ErrNo(rawValue: Darwin.ETOOMANYREFS)
    /// Operation timed out
    public static let ETIMEDOUT = ErrNo(rawValue: Darwin.ETIMEDOUT)
    /// Connection refused
    public static let ECONNREFUSED = ErrNo(rawValue: Darwin.ECONNREFUSED)

    /// Too many levels of symbolic links
    public static let ELOOP = ErrNo(rawValue: Darwin.ELOOP)
    /// File name too long
    public static let ENAMETOOLONG = ErrNo(rawValue: Darwin.ENAMETOOLONG)

    /// Host is down
    public static let EHOSTDOWN = ErrNo(rawValue: Darwin.EHOSTDOWN)
    /// No route to host
    public static let EHOSTUNREACH = ErrNo(rawValue: Darwin.EHOSTUNREACH)
    /// Directory not empty
    public static let ENOTEMPTY = ErrNo(rawValue: Darwin.ENOTEMPTY)

/* quotas & mush */
    /// Too many processes
    public static let EPROCLIM = ErrNo(rawValue: Darwin.EPROCLIM)
    /// Too many users
    public static let EUSERS = ErrNo(rawValue: Darwin.EUSERS)
    /// Disc quota exceeded
    public static let EDQUOT = ErrNo(rawValue: Darwin.EDQUOT)

/* Network File System */
    /// Stale NFS file handle
    public static let ESTALE = ErrNo(rawValue: Darwin.ESTALE)
    /// Too many levels of remote in path
    public static let EREMOTE = ErrNo(rawValue: Darwin.EREMOTE)
    /// RPC struct is bad
    public static let EBADRPC = ErrNo(rawValue: Darwin.EBADRPC)
    /// RPC version wrong
    public static let ERPCMISMATCH = ErrNo(rawValue: Darwin.ERPCMISMATCH)
    /// RPC prog. not avail
    public static let EPROGUNAVAIL = ErrNo(rawValue: Darwin.EPROGUNAVAIL)
    /// Program version wrong
    public static let EPROGMISMATCH = ErrNo(rawValue: Darwin.EPROGMISMATCH)
    /// Bad procedure for program
    public static let EPROCUNAVAIL = ErrNo(rawValue: Darwin.EPROCUNAVAIL)

    /// No locks available
    public static let ENOLCK = ErrNo(rawValue: Darwin.ENOLCK)
    /// Function not implemented
    public static let ENOSYS = ErrNo(rawValue: Darwin.ENOSYS)

    /// Inappropriate file type or format
    public static let EFTYPE = ErrNo(rawValue: Darwin.EFTYPE)
    /// Authentication error
    public static let EAUTH = ErrNo(rawValue: Darwin.EAUTH)
    /// Need authenticator
    public static let ENEEDAUTH = ErrNo(rawValue: Darwin.ENEEDAUTH)

/* Intelligent device errors */
    /// Device power is off
    public static let EPWROFF = ErrNo(rawValue: Darwin.EPWROFF)
    /// Device error, e.g. paper out
    public static let EDEVERR = ErrNo(rawValue: Darwin.EDEVERR)

    /// Value too large to be stored in data type
    public static let EOVERFLOW = ErrNo(rawValue: Darwin.EOVERFLOW)

/* Program loading errors */
    /// Bad executable
    public static let EBADEXEC = ErrNo(rawValue: Darwin.EBADEXEC)
    /// Bad CPU type in executable
    public static let EBADARCH = ErrNo(rawValue: Darwin.EBADARCH)
    /// Shared library version mismatch
    public static let ESHLIBVERS = ErrNo(rawValue: Darwin.ESHLIBVERS)
    /// Malformed Macho file
    public static let EBADMACHO = ErrNo(rawValue: Darwin.EBADMACHO)

    /// Operation canceled
    public static let ECANCELED = ErrNo(rawValue: Darwin.ECANCELED)

    /// Identifier removed
    public static let EIDRM = ErrNo(rawValue: Darwin.EIDRM)
    /// No message of desired type
    public static let ENOMSG = ErrNo(rawValue: Darwin.ENOMSG)   
    /// Illegal byte sequence
    public static let EILSEQ = ErrNo(rawValue: Darwin.EILSEQ)
    /// Attribute not found
    public static let ENOATTR = ErrNo(rawValue: Darwin.ENOATTR)

    /// Bad message
    public static let EBADMSG = ErrNo(rawValue: Darwin.EBADMSG)
    /// Reserved
    public static let EMULTIHOP = ErrNo(rawValue: Darwin.EMULTIHOP)
    /// No message available on STREAM
    public static let ENODATA = ErrNo(rawValue: Darwin.ENODATA)
    /// Reserved
    public static let ENOLINK = ErrNo(rawValue: Darwin.ENOLINK)
    /// No STREAM resources
    public static let ENOSR = ErrNo(rawValue: Darwin.ENOSR)
    /// Not a STREAM
    public static let ENOSTR = ErrNo(rawValue: Darwin.ENOSTR)
    /// Protocol error
    public static let EPROTO = ErrNo(rawValue: Darwin.EPROTO)
    /// STREAM ioctl timeout
    public static let ETIME = ErrNo(rawValue: Darwin.ETIME)

    /// No such policy registered
    public static let ENOPOLICY = ErrNo(rawValue: Darwin.ENOPOLICY)

    /// Must be equal largest errno
    public static let ELAST = ErrNo(rawValue: Darwin.ELAST)
}
#endif
