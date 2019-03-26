//  Copyright (c) 2017 Neil Pankey & Jacob Williams. All rights reserved.

#if os(Linux)
import Glibc

/// Wrapper around errno values from the C standard library.
public extension ErrNo {
    /// Resource temporarily unavailable (POSIX.1)
    static let EAGAIN = ErrNo(rawValue: Glibc.EAGAIN)
    /// Operation would block
    static let EWOULDBLOCK = ErrNo(rawValue: Glibc.EWOULDBLOCK)
    /// Resource deadlock would occur
    static let EDEADLK = ErrNo(rawValue: Glibc.EDEADLK)
    static let EDEADLOCK = ErrNo(rawValue: Glibc.EDEADLOCK)
    /// File name too long
    static let ENAMETOOLONG = ErrNo(rawValue: Glibc.ENAMETOOLONG)
    /// No record locks available
    static let ENOLCK = ErrNo(rawValue: Glibc.ENOLCK)

/*
 * This error code is special: arch syscall entry code will return
 * -ENOSYS if users try to call a syscall that doesn't exist.  To keep
 * failures of syscalls that really do exist distinguishable from
 * failures due to attempts to use a nonexistent syscall, syscall
 * implementations should refrain from returning -ENOSYS.
 */
    /// Invalid system call number
    static let ENOSYS = ErrNo(rawValue: Glibc.ENOSYS)

    /// Directory not empty
    static let ENOTEMPTY = ErrNo(rawValue: Glibc.ENOTEMPTY)
    /// Too many symbolic links encountered
    static let ELOOP = ErrNo(rawValue: Glibc.ELOOP)
    /// No message of desired type
    static let ENOMSG = ErrNo(rawValue: Glibc.ENOMSG)
    /// Identifier removed
    static let EIDRM = ErrNo(rawValue: Glibc.EIDRM)
    /// Channel number out of range
    static let ECHRNG = ErrNo(rawValue: Glibc.ECHRNG)
    /// Level 2 not synchronized
    static let EL2NSYNC = ErrNo(rawValue: Glibc.EL2NSYNC)
    /// Level 3 halted
    static let EL3HLT = ErrNo(rawValue: Glibc.EL3HLT)
    /// Level 3 reset
    static let EL3RST = ErrNo(rawValue: Glibc.EL3RST)
    /// Link number out of range
    static let ELNRNG = ErrNo(rawValue: Glibc.ELNRNG)
    /// Protocol driver not attached
    static let EUNATCH = ErrNo(rawValue: Glibc.EUNATCH)
    /// No CSI structure available
    static let ENOCSI = ErrNo(rawValue: Glibc.ENOCSI)
    /// Level 2 halted
    static let EL2HLT = ErrNo(rawValue: Glibc.EL2HLT)
    /// Invalid exchange
    static let EBADE = ErrNo(rawValue: Glibc.EBADE)
    /// Invalid request descriptor
    static let EBADR = ErrNo(rawValue: Glibc.EBADR)
    /// Exchange full
    static let EXFULL = ErrNo(rawValue: Glibc.EXFULL)
    /// No anode
    static let ENOANO = ErrNo(rawValue: Glibc.ENOANO)
    /// Invalid request code
    static let EBADRQC = ErrNo(rawValue: Glibc.EBADRQC)
    /// Invalid slot
    static let EBADSLT = ErrNo(rawValue: Glibc.EBADSLT)

    /// Bad font file format
    static let EBFONT = ErrNo(rawValue: Glibc.EBFONT)
    /// Device not a stream
    static let ENOSTR = ErrNo(rawValue: Glibc.ENOSTR)
    /// No data available
    static let ENODATA = ErrNo(rawValue: Glibc.ENODATA)
    /// Timer expired
    static let ETIME = ErrNo(rawValue: Glibc.ETIME)
    /// Out of streams resources
    static let ENOSR = ErrNo(rawValue: Glibc.ENOSR)
    /// Machine is not on the network
    static let ENONET = ErrNo(rawValue: Glibc.ENONET)
    /// Package not installed
    static let ENOPKG = ErrNo(rawValue: Glibc.ENOPKG)
    /// Object is remote
    static let EREMOTE = ErrNo(rawValue: Glibc.EREMOTE)
    /// Link has been severed
    static let ENOLINK = ErrNo(rawValue: Glibc.ENOLINK)
    /// Advertise error
    static let EADV = ErrNo(rawValue: Glibc.EADV)
    /// Srmount error
    static let ESRMNT = ErrNo(rawValue: Glibc.ESRMNT)
    /// Communication error on send
    static let ECOMM = ErrNo(rawValue: Glibc.ECOMM)
    /// Protocol error
    static let EPROTO = ErrNo(rawValue: Glibc.EPROTO)
    /// Multihop attempted
    static let EMULTIHOP = ErrNo(rawValue: Glibc.EMULTIHOP)
    /// RFS specific error
    static let EDOTDOT = ErrNo(rawValue: Glibc.EDOTDOT)
    /// Not a data message
    static let EBADMSG = ErrNo(rawValue: Glibc.EBADMSG)
    /// Value too large for defined data type
    static let EOVERFLOW = ErrNo(rawValue: Glibc.EOVERFLOW)
    /// Name not unique on network
    static let ENOTUNIQ = ErrNo(rawValue: Glibc.ENOTUNIQ)
    /// File descriptor in bad state
    static let EBADFD = ErrNo(rawValue: Glibc.EBADFD)
    /// Remote address changed
    static let EREMCHG = ErrNo(rawValue: Glibc.EREMCHG)
    /// Can not access a needed shared library
    static let ELIBACC = ErrNo(rawValue: Glibc.ELIBACC)
    /// Accessing a corrupted shared library
    static let ELIBBAD = ErrNo(rawValue: Glibc.ELIBBAD)
    /// .lib section in a.out corrupted
    static let ELIBSCN = ErrNo(rawValue: Glibc.ELIBSCN)
    /// Attempting to link in too many shared libraries
    static let ELIBMAX = ErrNo(rawValue: Glibc.ELIBMAX)
    /// Cannot exec a shared library directly
    static let ELIBEXEC = ErrNo(rawValue: Glibc.ELIBEXEC)
    /// Illegal byte sequence
    static let EILSEQ = ErrNo(rawValue: Glibc.EILSEQ)
    /// Interrupted system call should be restarted
    static let ERESTART = ErrNo(rawValue: Glibc.ERESTART)
    /// Streams pipe error
    static let ESTRPIPE = ErrNo(rawValue: Glibc.ESTRPIPE)
    /// Too many users
    static let EUSERS = ErrNo(rawValue: Glibc.EUSERS)
    /// Socket operation on non-socket
    static let ENOTSOCK = ErrNo(rawValue: Glibc.ENOTSOCK)
    /// Destination address required
    static let EDESTADDRREQ = ErrNo(rawValue: Glibc.EDESTADDRREQ)
    /// Message too long
    static let EMSGSIZE = ErrNo(rawValue: Glibc.EMSGSIZE)
    /// Protocol wrong type for socket
    static let EPROTOTYPE = ErrNo(rawValue: Glibc.EPROTOTYPE)
    /// Protocol not available
    static let ENOPROTOOPT = ErrNo(rawValue: Glibc.ENOPROTOOPT)
    /// Protocol not supported
    static let EPROTONOSUPPORT = ErrNo(rawValue: Glibc.EPROTONOSUPPORT)
    /// Socket type not supported
    static let ESOCKTNOSUPPORT = ErrNo(rawValue: Glibc.ESOCKTNOSUPPORT)
    /// Operation not supported on transport endpoint
    static let EOPNOTSUPP = ErrNo(rawValue: Glibc.EOPNOTSUPP)
    /// Protocol family not supported
    static let EPFNOSUPPORT = ErrNo(rawValue: Glibc.EPFNOSUPPORT)
    /// Address family not supported by protocol
    static let EAFNOSUPPORT = ErrNo(rawValue: Glibc.EAFNOSUPPORT)
    /// Address already in use
    static let EADDRINUSE = ErrNo(rawValue: Glibc.EADDRINUSE)
    /// Cannot assign requested address
    static let EADDRNOTAVAIL = ErrNo(rawValue: Glibc.EADDRNOTAVAIL)
    /// Network is down
    static let ENETDOWN = ErrNo(rawValue: Glibc.ENETDOWN)
    /// Network is unreachable
    static let ENETUNREACH = ErrNo(rawValue: Glibc.ENETUNREACH)
    /// Network dropped connection because of reset
    static let ENETRESET = ErrNo(rawValue: Glibc.ENETRESET)
    /// Software caused connection abort
    static let ECONNABORTED = ErrNo(rawValue: Glibc.ECONNABORTED)
    /// Connection reset by peer
    static let ECONNRESET = ErrNo(rawValue: Glibc.ECONNRESET)
    /// No buffer space available
    static let ENOBUFS = ErrNo(rawValue: Glibc.ENOBUFS)
    /// Transport endpoint is already connected
    static let EISCONN = ErrNo(rawValue: Glibc.EISCONN)
    /// Transport endpoint is not connected
    static let ENOTCONN = ErrNo(rawValue: Glibc.ENOTCONN)
    /// Cannot send after transport endpoint shutdown
    static let ESHUTDOWN = ErrNo(rawValue: Glibc.ESHUTDOWN)
    /// Too many references: cannot splice
    static let ETOOMANYREFS = ErrNo(rawValue: Glibc.ETOOMANYREFS)
    /// Connection timed out
    static let ETIMEDOUT = ErrNo(rawValue: Glibc.ETIMEDOUT)
    /// Connection refused
    static let ECONNREFUSED = ErrNo(rawValue: Glibc.ECONNREFUSED)
    /// Host is down
    static let EHOSTDOWN = ErrNo(rawValue: Glibc.EHOSTDOWN)
    /// No route to host
    static let EHOSTUNREACH = ErrNo(rawValue: Glibc.EHOSTUNREACH)
    /// Operation already in progress
    static let EALREADY = ErrNo(rawValue: Glibc.EALREADY)
    /// Operation now in progress
    static let EINPROGRESS = ErrNo(rawValue: Glibc.EINPROGRESS)
    /// Stale file handle
    static let ESTALE = ErrNo(rawValue: Glibc.ESTALE)
    /// Structure needs cleaning
    static let EUCLEAN = ErrNo(rawValue: Glibc.EUCLEAN)
    /// Not a XENIX named type file
    static let ENOTNAM = ErrNo(rawValue: Glibc.ENOTNAM)
    /// No XENIX semaphores available
    static let ENAVAIL = ErrNo(rawValue: Glibc.ENAVAIL)
    /// Is a named type file
    static let EISNAM = ErrNo(rawValue: Glibc.EISNAM)
    /// Remote I/O error
    static let EREMOTEIO = ErrNo(rawValue: Glibc.EREMOTEIO)
    /// Quota exceeded
    static let EDQUOT = ErrNo(rawValue: Glibc.EDQUOT)

    /// No medium found
    static let ENOMEDIUM = ErrNo(rawValue: Glibc.ENOMEDIUM)
    /// Wrong medium type
    static let EMEDIUMTYPE = ErrNo(rawValue: Glibc.EMEDIUMTYPE)
    /// Operation Canceled
    static let ECANCELED = ErrNo(rawValue: Glibc.ECANCELED)
    /// Required key not available
    static let ENOKEY = ErrNo(rawValue: Glibc.ENOKEY)
    /// Key has expired
    static let EKEYEXPIRED = ErrNo(rawValue: Glibc.EKEYEXPIRED)
    /// Key has been revoked
    static let EKEYREVOKED = ErrNo(rawValue: Glibc.EKEYREVOKED)
    /// Key was rejected by service
    static let EKEYREJECTED = ErrNo(rawValue: Glibc.EKEYREJECTED)

/* for robust mutexes */
    /// Owner died
    static let EOWNERDEAD = ErrNo(rawValue: Glibc.EOWNERDEAD)
    /// State not recoverable
    static let ENOTRECOVERABLE = ErrNo(rawValue: Glibc.ENOTRECOVERABLE)

    /// Operation not possible due to RF-kill
    static let ERFKILL = ErrNo(rawValue: Glibc.ERFKILL)

    /// Memory page has hardware error
    static let EHWPOISON = ErrNo(rawValue: Glibc.EHWPOISON)
}
#endif
