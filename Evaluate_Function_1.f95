

PROGRAM function_evaluation_1

    IMPLICIT NONE
    REAL :: X, Y, OUTPUT
    LOGICAL :: logic1, logic2, logic3, logic4

    WRITE (*, *) "Enter the value of X and Y to determine f(X, Y)"
    READ (*, *) X, Y

    logic1 = X >= 0 .AND. Y >=0
    logic2 = X >= 0 .AND. Y < 0
    logic3 = X < 0 .AND. Y >= 0
    logic4 = X < 0 .AND. Y < 0

    IF (logic1 .EQV. .TRUE.) THEN
        OUTPUT = X + Y
    ELSE IF (logic2 .EQV. .TRUE.) THEN
        OUTPUT = X + Y**2
    ELSE IF (logic3 .EQV. .TRUE.) THEN
        OUTPUT = X**2 + Y
    ELSE IF (logic4 .EQV. .TRUE.) THEN
        OUTPUT = X**2 + Y**2
    END IF

    WRITE (*, *) "The function f(X, Y) is ", OUTPUT

END PROGRAM
