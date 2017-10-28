//  Copyright (c) 2017 Neil Pankey & Jacob Williams. All rights reserved.

#if os(Linux)
import Glibc

/// Wrapper around errno values from the C standard library.
public extension ErrNo {
    /// Resource temporarily unavailable (POSIX.1)
    public static let EAGAIN = ErrNo(rawValue: Glibc.EAGAIN)
    /// Resource deadlock would occur
    public static let EDEADLK = ErrNo(rawValue: Glibc.EDEADLK)
    public static let EDEADLOCK = ErrNo.EDEADLK
    /// File name too long
    public static let ENAMETOOLONG = ErrNo(rawValue: Glibc.ENAMETOOLONG)
    /// No record locks available
    public static let ENOLCK = ErrNo(rawValue: Glibc.ENOLCK)

/*
 * This error code is special: arch syscall entry code will return
 * -ENOSYS if users try to call a syscall that doesn't exist.  To keep
 * failures of syscalls that really do exist distinguishable from
 * failures due to attempts to use a nonexistent syscall, syscall
 * implementations should refrain from returning -ENOSYS.
 */
    /// Invalid system call number
    public static let ENOSYS = ErrNo(rawValue: Glibc.ENOSYS)

    /// Directory not empty
    public static let ENOTEMPTY = ErrNo(rawValue: Glibc.ENOTEMPTY)
    /// Too many symbolic links encountered
    public static let ELOOP = ErrNo(rawValue: Glibc.ELOOP)
    /// No message of desired type
    public static let ENOMSG = ErrNo(rawValue: Glibc.ENOMSG)
    /// Identifier removed
    public static let EIDRM = ErrNo(rawValue: Glibc.EIDRM)
    /// Channel number out of range
    public static let ECHRNG = ErrNo(rawValue: Glibc.ECHRNG)
    /// Level 2 not synchronized
    public static let EL2NSYNC = ErrNo(rawValue: Glibc.EL2NSYNC)
    /// Level 3 halted
    public static let EL3HLT = ErrNo(rawValue: Glibc.EL3HLT)
    /// Level 3 reset
    public static let EL3RST = ErrNo(rawValue: Glibc.EL3RST)
    /// Link number out of range
    public static let ELNRNG = ErrNo(rawValue: Glibc.ELNRNG)
    /// Protocol driver not attached
    public static let EUNATCH = ErrNo(rawValue: Glibc.EUNATCH)
    /// No CSI structure available
    public static let ENOCSI = ErrNo(rawValue: Glibc.ENOCSI)
    /// Level 2 halted
    public static let EL2HLT = ErrNo(rawValue: Glibc.EL2HLT)
    /// Invalid exchange
    public static let EBADE = ErrNo(rawValue: Glibc.EBADE)
    /// Invalid request descriptor
    public static let EBADR = ErrNo(rawValue: Glibc.EBADR)
    /// Exchange full
    public static let EXFULL = ErrNo(rawValue: Glibc.EXFULL)
    /// No anode
    public static let ENOANO = ErrNo(rawValue: Glibc.ENOANO)
    /// Invalid request code
    public static let EBADRQC = ErrNo(rawValue: Glibc.EBADRQC)
    /// Invalid slot
    public static let EBADSLT = ErrNo(rawValue: Glibc.EBADSLT)

    /// Bad font file format
    public static let EBFONT = ErrNo(rawValue: Glibc.EBFONT)
    /// Device not a stream
    public static let ENOSTR = ErrNo(rawValue: Glibc.ENOSTR)
    /// No data available
    public static let ENODATA = ErrNo(rawValue: Glibc.ENODATA)
    /// Timer expired
    public static let ETIME = ErrNo(rawValue: Glibc.ETIME)
    /// Out of streams resources
    public static let ENOSR = ErrNo(rawValue: Glibc.ENOSR)
    /// Machine is not on the network
    public static let ENONET = ErrNo(rawValue: Glibc.ENONET)
    /// Package not installed
    public static let ENOPKG = ErrNo(rawValue: Glibc.ENOPKG)
    /// Object is remote
    public static let EREMOTE = ErrNo(rawValue: Glibc.EREMOTE)
    /// Link has been severed
    public static let ENOLINK = ErrNo(rawValue: Glibc.ENOLINK)
    /// Advertise error
    public static let EADV = ErrNo(rawValue: Glibc.EADV)
    /// Srmount error
    public static let ESRMNT = ErrNo(rawValue: Glibc.ESRMNT)
    /// Communication error on send
    public static let ECOMM = ErrNo(rawValue: Glibc.ECOMM)
    /// Protocol error
    public static let EPROTO = ErrNo(rawValue: Glibc.EPROTO)
    /// Multihop attempted
    public static let EMULTIHOP = ErrNo(rawValue: Glibc.EMULTIHOP)
    /// RFS specific error
    public static let EDOTDOT = ErrNo(rawValue: Glibc.EDOTDOT)
    /// Not a data message
    public static let EBADMSG = ErrNo(rawValue: Glibc.EBADMSG)
    /// Value too large for defined data type
    public static let EOVERFLOW = ErrNo(rawValue: Glibc.EOVERFLOW)
    /// Name not unique on network
    public static let ENOTUNIQ = ErrNo(rawValue: Glibc.ENOTUNIQ)
    /// File descriptor in bad state
    public static let EBADFD = ErrNo(rawValue: Glibc.EBADFD)
    /// Remote address changed
    public static let EREMCHG = ErrNo(rawValue: Glibc.EREMCHG)
    /// Can not access a needed shared library
    public static let ELIBACC = ErrNo(rawValue: Glibc.ELIBACC)
    /// Accessing a corrupted shared library
    public static let ELIBBAD = ErrNo(rawValue: Glibc.ELIBBAD)
    /// .lib section in a.out corrupted
    public static let ELIBSCN = ErrNo(rawValue: Glibc.ELIBSCN)
    /// Attempting to link in too many shared libraries
    public static let ELIBMAX = ErrNo(rawValue: Glibc.ELIBMAX)
    /// Cannot exec a shared library directly
    public static let ELIBEXEC = ErrNo(rawValue: Glibc.ELIBEXEC)
    /// Illegal byte sequence
    public static let EILSEQ = ErrNo(rawValue: Glibc.EILSEQ)
    /// Interrupted system call should be restarted
    public static let ERESTART = ErrNo(rawValue: Glibc.ERESTART)
    /// Streams pipe error
    public static let ESTRPIPE = ErrNo(rawValue: Glibc.ESTRPIPE)
    /// Too many users
    public static let EUSERS = ErrNo(rawValue: Glibc.EUSERS)
    /// Socket operation on non-socket
    public static let ENOTSOCK = ErrNo(rawValue: Glibc.ENOTSOCK)
    /// Destination address required
    public static let EDESTADDRREQ = ErrNo(rawValue: Glibc.EDESTADDRREQ)
    /// Message too long
    public static let EMSGSIZE = ErrNo(rawValue: Glibc.EMSGSIZE)
    /// Protocol wrong type for socket
    public static let EPROTOTYPE = ErrNo(rawValue: Glibc.EPROTOTYPE)
    /// Protocol not available
    public static let ENOPROTOOPT = ErrNo(rawValue: Glibc.ENOPROTOOPT)
    /// Protocol not supported
    public static let EPROTONOSUPPORT = ErrNo(rawValue: Glibc.EPROTONOSUPPORT)
    /// Socket type not supported
    public static let ESOCKTNOSUPPORT = ErrNo(rawValue: Glibc.ESOCKTNOSUPPORT)
    /// Operation not supported on transport endpoint
    public static let EOPNOTSUPP = ErrNo(rawValue: Glibc.EOPNOTSUPP)
    /// Protocol family not supported
    public static let EPFNOSUPPORT = ErrNo(rawValue: Glibc.EPFNOSUPPORT)
    /// Address family not supported by protocol
    public static let EAFNOSUPPORT = ErrNo(rawValue: Glibc.EAFNOSUPPORT)
    /// Address already in use
    public static let EADDRINUSE = ErrNo(rawValue: Glibc.EADDRINUSE)
    /// Cannot assign requested address
    public static let EADDRNOTAVAIL = ErrNo(rawValue: Glibc.EADDRNOTAVAIL)
    /// Network is down
    public static let ENETDOWN = ErrNo(rawValue: Glibc.ENETDOWN)
    /// Network is unreachable
    public static let ENETUNREACH = ErrNo(rawValue: Glibc.ENETUNREACH)
    /// Network dropped connection because of reset
    public static let ENETRESET = ErrNo(rawValue: Glibc.ENETRESET)
    /// Software caused connection abort
    public static let ECONNABORTED = ErrNo(rawValue: Glibc.ECONNABORTED)
    /// Connection reset by peer
    public static let ECONNRESET = ErrNo(rawValue: Glibc.ECONNRESET)
    /// No buffer space available
    public static let ENOBUFS = ErrNo(rawValue: Glibc.ENOBUFS)
    /// Transport endpoint is already connected
    public static let EISCONN = ErrNo(rawValue: Glibc.EISCONN)
    /// Transport endpoint is not connected
    public static let ENOTCONN = ErrNo(rawValue: Glibc.ENOTCONN)
    /// Cannot send after transport endpoint shutdown
    public static let ESHUTDOWN = ErrNo(rawValue: Glibc.ESHUTDOWN)
    /// Too many references: cannot splice
    public static let ETOOMANYREFS = ErrNo(rawValue: Glibc.ETOOMANYREFS)
    /// Connection timed out
    public static let ETIMEDOUT = ErrNo(rawValue: Glibc.ETIMEDOUT)
    /// Connection refused
    public static let ECONNREFUSED = ErrNo(rawValue: Glibc.ECONNREFUSED)
    /// Host is down
    public static let EHOSTDOWN = ErrNo(rawValue: Glibc.EHOSTDOWN)
    /// No route to host
    public static let EHOSTUNREACH = ErrNo(rawValue: Glibc.EHOSTUNREACH)
    /// Operation already in progress
    public static let EALREADY = ErrNo(rawValue: Glibc.EALREADY)
    /// Operation now in progress
    public static let EINPROGRESS = ErrNo(rawValue: Glibc.EINPROGRESS)
    /// Stale file handle
    public static let ESTALE = ErrNo(rawValue: Glibc.ESTALE)
    /// Structure needs cleaning
    public static let EUCLEAN = ErrNo(rawValue: Glibc.EUCLEAN)
    /// Not a XENIX named type file
    public static let ENOTNAM = ErrNo(rawValue: Glibc.ENOTNAM)
    /// No XENIX semaphores available
    public static let ENAVAIL = ErrNo(rawValue: Glibc.ENAVAIL)
    /// Is a named type file
    public static let EISNAM = ErrNo(rawValue: Glibc.EISNAM)
    /// Remote I/O error
    public static let EREMOTEIO = ErrNo(rawValue: Glibc.EREMOTEIO)
    /// Quota exceeded
    public static let EDQUOT = ErrNo(rawValue: Glibc.EDQUOT)

    /// No medium found
    public static let ENOMEDIUM = ErrNo(rawValue: Glibc.ENOMEDIUM)
    /// Wrong medium type
    public static let EMEDIUMTYPE = ErrNo(rawValue: Glibc.EMEDIUMTYPE)
    /// Operation Canceled
    public static let ECANCELED = ErrNo(rawValue: Glibc.ECANCELED)
    /// Required key not available
    public static let ENOKEY = ErrNo(rawValue: Glibc.ENOKEY)
    /// Key has expired
    public static let EKEYEXPIRED = ErrNo(rawValue: Glibc.EKEYEXPIRED)
    /// Key has been revoked
    public static let EKEYREVOKED = ErrNo(rawValue: Glibc.EKEYREVOKED)
    /// Key was rejected by service
    public static let EKEYREJECTED = ErrNo(rawValue: Glibc.EKEYREJECTED)

/* for robust mutexes */
    /// Owner died
    public static let EOWNERDEAD = ErrNo(rawValue: Glibc.EOWNERDEAD)
    /// State not recoverable
    public static let ENOTRECOVERABLE = ErrNo(rawValue: Glibc.ENOTRECOVERABLE)

    /// Operation not possible due to RF-kill
    public static let ERFKILL = ErrNo(rawValue: Glibc.ERFKILL)

    /// Memory page has hardware error
    public static let EHWPOISON = ErrNo(rawValue: Glibc.EHWPOISON)
}
#endif
