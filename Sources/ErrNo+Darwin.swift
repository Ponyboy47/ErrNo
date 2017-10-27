//  Copyright (c) 2017 Neil Pankey & Jacob Williams. All rights reserved.

#if !os(Linux)
import Darwin.C.errno

public extension ErrNo {
/* non-blocking and interrupt i/o */
	/// Resource temporarily unavailable
	static let EAGAIN = ErrNo(rawValue: Darwin.C.errno.EAGAIN)
	/// Operation now in progress
	static let EINPROGRESS = ErrNo(rawValue: Darwin.C.errno.EINPROGRESS)
	/// Operation already in progress
	static let EALREADY = ErrNo(rawValue: Darwin.C.errno.EALREADY)

/* ipc/network software -- argument errors */
	/// Socket operation on non-socket
	static let ENOTSOCK = ErrNo(rawValue: Darwin.C.errno.ENOTSOCK)
	/// Destination address required
	static let EDESTADDRREQ = ErrNo(rawValue: Darwin.C.errno.EDESTADDRREQ)
	/// Message too long
	static let EMSGSIZE = ErrNo(rawValue: Darwin.C.errno.EMSGSIZE)
	/// Protocol wrong type for socket
	static let EPROTOTYPE = ErrNo(rawValue: Darwin.C.errno.EPROTOTYPE)
	/// Protocol not available
	static let ENOPROTOOPT = ErrNo(rawValue: Darwin.C.errno.ENOPROTOOPT)
	/// Protocol not supported
	static let EPROTONOSUPPORT = ErrNo(rawValue: Darwin.C.errno.EPROTONOSUPPORT)
	/// Socket type not supported
	static let ESOCKTNOSUPPORT = ErrNo(rawValue: Darwin.C.errno.ESOCKTNOSUPPORT)
	/// Operation not supported
	static let ENOTSUP = ErrNo(rawValue: Darwin.C.errno.ENOTSUP)
    /// Operation not supported on socket
    static let EOPNOTSUPP = ErrNo.ENOTSUP
	/// Protocol family not supported
	static let EPFNOSUPPORT = ErrNo(rawValue: Darwin.C.errno.EPFNOSUPPORT)
	/// Address family not supported by protocol family
	static let EAFNOSUPPORT = ErrNo(rawValue: Darwin.C.errno.EAFNOSUPPORT)
	/// Address already in use
	static let EADDRINUSE = ErrNo(rawValue: Darwin.C.errno.EADDRINUSE)
	/// Can't assign requested address
	static let EADDRNOTAVAIL = ErrNo(rawValue: Darwin.C.errno.EADDRNOTAVAIL)

/* ipc/network software -- operational errors */
	/// Network is down
	static let ENETDOWN = ErrNo(rawValue: Darwin.C.errno.ENETDOWN)
	/// Network is unreachable
	static let ENETUNREACH = ErrNo(rawValue: Darwin.C.errno.ENETUNREACH)
	/// Network dropped connection on reset
	static let ENETRESET = ErrNo(rawValue: Darwin.C.errno.ENETRESET)
	/// Software caused connection abort
	static let ECONNABORTED = ErrNo(rawValue: Darwin.C.errno.ECONNABORTED)
	/// Connection reset by peer
	static let ECONNRESET = ErrNo(rawValue: Darwin.C.errno.ECONNRESET)
	/// No buffer space available
	static let ENOBUFS = ErrNo(rawValue: Darwin.C.errno.ENOBUFS)
	/// Socket is already connected
	static let EISCONN = ErrNo(rawValue: Darwin.C.errno.EISCONN)
	/// Socket is not connected
	static let ENOTCONN = ErrNo(rawValue: Darwin.C.errno.ENOTCONN)
	/// Can't send after socket shutdown
	static let ESHUTDOWN = ErrNo(rawValue: Darwin.C.errno.ESHUTDOWN)
	/// Too many references: can't splice
	static let ETOOMANYREFS = ErrNo(rawValue: Darwin.C.errno.ETOOMANYREFS)
	/// Operation timed out
	static let ETIMEDOUT = ErrNo(rawValue: Darwin.C.errno.ETIMEDOUT)
	/// Connection refused
	static let ECONNREFUSED = ErrNo(rawValue: Darwin.C.errno.ECONNREFUSED)

	/// Too many levels of symbolic links
	static let ELOOP = ErrNo(rawValue: Darwin.C.errno.ELOOP)
	/// File name too long
	static let ENAMETOOLONG = ErrNo(rawValue: Darwin.C.errno.ENAMETOOLONG)

	/// Host is down
	static let EHOSTDOWN = ErrNo(rawValue: Darwin.C.errno.EHOSTDOWN)
	/// No route to host
	static let EHOSTUNREACH = ErrNo(rawValue: Darwin.C.errno.EHOSTUNREACH)
	/// Directory not empty
	static let ENOTEMPTY = ErrNo(rawValue: Darwin.C.errno.ENOTEMPTY)

/* quotas & mush */
	/// Too many processes
	static let EPROCLIM = ErrNo(rawValue: Darwin.C.errno.EPROCLIM)
	/// Too many users
	static let EUSERS = ErrNo(rawValue: Darwin.C.errno.EUSERS)
	/// Disc quota exceeded
	static let EDQUOT = ErrNo(rawValue: Darwin.C.errno.EDQUOT)

/* Network File System */
	/// Stale NFS file handle
	static let ESTALE = ErrNo(rawValue: Darwin.C.errno.ESTALE)
	/// Too many levels of remote in path
	static let EREMOTE = ErrNo(rawValue: Darwin.C.errno.EREMOTE)
	/// RPC struct is bad
	static let EBADRPC = ErrNo(rawValue: Darwin.C.errno.EBADRPC)
	/// RPC version wrong
	static let ERPCMISMATCH = ErrNo(rawValue: Darwin.C.errno.ERPCMISMATCH)
	/// RPC prog. not avail
	static let EPROGUNAVAIL = ErrNo(rawValue: Darwin.C.errno.EPROGUNAVAIL)
	/// Program version wrong
	static let EPROGMISMATCH = ErrNo(rawValue: Darwin.C.errno.EPROGMISMATCH)
	/// Bad procedure for program
	static let EPROCUNAVAIL = ErrNo(rawValue: Darwin.C.errno.EPROCUNAVAIL)

	/// No locks available
	static let ENOLCK = ErrNo(rawValue: Darwin.C.errno.ENOLCK)
	/// Function not implemented
	static let ENOSYS = ErrNo(rawValue: Darwin.C.errno.ENOSYS)

	/// Inappropriate file type or format
	static let EFTYPE = ErrNo(rawValue: Darwin.C.errno.EFTYPE)
	/// Authentication error
	static let EAUTH = ErrNo(rawValue: Darwin.C.errno.EAUTH)
	/// Need authenticator
	static let ENEEDAUTH = ErrNo(rawValue: Darwin.C.errno.ENEEDAUTH)

/* Intelligent device errors */
	/// Device power is off
	static let EPWROFF = ErrNo(rawValue: Darwin.C.errno.EPWROFF)
	/// Device error, e.g. paper out
	static let EDEVERR = ErrNo(rawValue: Darwin.C.errno.EDEVERR)

	/// Value too large to be stored in data type
	static let EOVERFLOW = ErrNo(rawValue: Darwin.C.errno.EOVERFLOW)

/* Program loading errors */
	/// Bad executable
	static let EBADEXEC = ErrNo(rawValue: Darwin.C.errno.EBADEXEC)
	/// Bad CPU type in executable
	static let EBADARCH = ErrNo(rawValue: Darwin.C.errno.EBADARCH)
	/// Shared library version mismatch
	static let ESHLIBVERS = ErrNo(rawValue: Darwin.C.errno.ESHLIBVERS)
	/// Malformed Macho file
	static let EBADMACHO = ErrNo(rawValue: Darwin.C.errno.EBADMACHO)

	/// Operation canceled
	static let ECANCELED = ErrNo(rawValue: Darwin.C.errno.ECANCELED)

	/// Identifier removed
	static let EIDRM = ErrNo(rawValue: Darwin.C.errno.EIDRM)
	/// No message of desired type
	static let ENOMSG = ErrNo(rawValue: Darwin.C.errno.ENOMSG)   
	/// Illegal byte sequence
	static let EILSEQ = ErrNo(rawValue: Darwin.C.errno.EILSEQ)
	/// Attribute not found
	static let ENOATTR = ErrNo(rawValue: Darwin.C.errno.ENOATTR)

	/// Bad message
	static let EBADMSG = ErrNo(rawValue: Darwin.C.errno.EBADMSG)
	/// Reserved
	static let EMULTIHOP = ErrNo(rawValue: Darwin.C.errno.EMULTIHOP)
	/// No message available on STREAM
	static let ENODATA = ErrNo(rawValue: Darwin.C.errno.ENODATA)
	/// Reserved
	static let ENOLINK = ErrNo(rawValue: Darwin.C.errno.ENOLINK)
	/// No STREAM resources
	static let ENOSR = ErrNo(rawValue: Darwin.C.errno.ENOSR)
	/// Not a STREAM
	static let ENOSTR = ErrNo(rawValue: Darwin.C.errno.ENOSTR)
	/// Protocol error
	static let EPROTO = ErrNo(rawValue: Darwin.C.errno.EPROTO)
	/// STREAM ioctl timeout
	static let ETIME = ErrNo(rawValue: Darwin.C.errno.ETIME)

	/// Operation not supported on socket
	static let EOPNOTSUPP = ErrNo(rawValue: Darwin.C.errno.EOPNOTSUPP)

	/// No such policy registered
	static let ENOPOLICY = ErrNo(rawValue: Darwin.C.errno.ENOPOLICY)

	/// Must be equal largest errno
	static let ELAST = ErrNo(rawValue: Darwin.C.errno.ELAST)

/* pseudo-errors returned inside kernel to modify return to process */
	/// restart syscall
	static let ERESTART = ErrNo(rawValue: Darwin.C.errno.ERESTART)
	/// don't modify regs, just return
	static let EJUSTRETURN = ErrNo(rawValue: Darwin.C.errno.EJUSTRETURN)
	/// restart lookup under heavy vnode pressure/recycling
	static let ERECYCLE = ErrNo(rawValue: Darwin.C.errno.ERECYCLE)
	/// restart with the drive open
	static let EREDRIVEOPEN = ErrNo(rawValue: Darwin.C.errno.EREDRIVEOPEN)
}
#endif
