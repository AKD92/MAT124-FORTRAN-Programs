
PROGRAM sum_series

    IMPLICIT NONE

    INTEGER :: i_start
    REAL :: sum_1, num, denom, element

    i_start = 1;
    sum_1 = 0;
    num = 1.0;

    DO i_start = 1, 25, 2

        denom = REAL(i_start)
        element = num / denom
        sum_1 = sum_1 + element

    END DO

    WRITE (*, *) "Sum of the series is ", sum_1

END PROGRAM
