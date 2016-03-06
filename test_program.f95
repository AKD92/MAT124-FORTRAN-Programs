
PROGRAM test_prog

IMPLICIT NONE

INTEGER :: a, b, c

WRITE (*, *) "Enter a and b"
READ (*, *) a, b
c = a + b

WRITE (*, *)
WRITE (*, *) "A ", a, " B ", b
WRITE (*, *) "C = A + B ", c

STOP
END PROGRAM
