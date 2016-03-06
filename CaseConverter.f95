

PROGRAM CaseConverter

    !
    ! A Fortran program for converting lower-case characters
    ! To Upper-Case characters
    !
    ! Programmed by: Ashis Kumar Das (MAT124)
    !

    IMPLICIT NONE

    INTEGER :: i, strlen, ascival
    CHARACTER(len=40) :: string1            ! Holds input string
    CHARACTER(:), ALLOCATABLE :: string2    ! Allocatable char array, holds a TRIMMED string
    CHARACTER(len=1) :: singlechar          ! Holds a single character value

    WRITE (*, *) "This program will convert all lowercase characters"
    WRITE (*, *) "To Uppercase characters of the given input string"
    WRITE (*, *)
    WRITE (*, *) "Please enter a string"
    READ (*, '(A)') string1

    string2 = ADJUSTL(string1)              ! Transfers all front whitespace chars to the right
    string2 = TRIM(string2)                 ! Removes all whitespaces from the trail of string
    strlen = LEN(string2)                   ! Determines the final length of string

    DO i = 1, strlen, 1
        singlechar = string2(i:i)           ! Obtain a single character at index i
        ascival = iachar(singlechar)        ! Obtain ascii integer variable of that character

        IF (ascival >= 97 .AND. ascival <= 122) THEN
            ascival = ascival - 32          ! Determine the Uppercase letter
            string2(i:i) = achar(ascival)   ! Replace a lowercase letter with corresponding uppercase letter
        END IF

    END DO

    WRITE (*, *)
    WRITE (*, *) "Length before TRIM : ", LEN(string1)
    WRITE (*, *) "Length after TRIM : ", strlen
    WRITE (*, *) "Final String is : ", string2

END PROGRAM
