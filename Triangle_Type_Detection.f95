
PROGRAM triangle_type

    !
    ! A program which determines the type of a triangle
    ! given by the 3 sides as input
    !
    ! Programmed by: Ashis Kumar Das (ID 11301002)
    !

    IMPLICIT NONE                   ! Only allow explicitly declared variables

    ! Declare necessary variables
    INTEGER :: A, B, C
    LOGICAL :: isNotTriangle, isEquilateral, isIsosceles, isRight
    CHARACTER (len=30) :: outMessage

    WRITE (*, *) "Please enter 3 sides of a triangle"
    WRITE (*, *) "As A, B, C"
    READ (*, *) A, B, C

    ! Determine if a triangle can be formed
    ! Store result in a logical variable for decision making
    isNotTriangle = ((A == 0) .OR. (B == 0) .OR. (C == 0)) &
                    .OR. ((A .GT. B + C) .OR. (B .GT. A + C) .OR. (C .GT. A + B))

    IF (isNotTriangle .EQV. .TRUE.) THEN
        outMessage = "Not a triangle"

    ELSE

        ! Determine some properties of the triangle
        ! Store results in logical variables for decision making
        isEquilateral = (A == B) .AND. (B == C) .AND. (C == A)
        isIsosceles = (A == B .AND. C /= A) .OR. (B == C .AND. B /= A) &
                    .OR. (C == A .AND. C /= B)
        isRight = (A**2 + B**2 == C**2) .OR. (B**2 + C**2 == A**2) &
                .OR. (C**2 + A**2 == B**2)

        IF (isEquilateral .EQV. .TRUE.) THEN
            outMessage = "Equilateral Triangle"

        ELSE IF (isIsosceles .EQV. .TRUE.) THEN
            outMessage = "Isosceles Triangle"

        ELSE IF (isRight .EQV. .TRUE.) THEN
            outMessage = "Right Triangle"

        ELSE
            outMessage = "Ordinary triangle"
        END IF
    END IF

    WRITE (*, *) outMessage         ! Print output message to the console

STOP                                ! Return to the operating system
END PROGRAM
