program quadratic_equation_solver

! Calculates and prints the roots
! of a quadratic equation

    implicit none

    ! Variables
    !   a, b, c: coefficients
    !   x1, x2: roots

    real :: a, b, c, x1, x2

    ! Read the coefficients
    print *, "Enter a, the coefficient of x ** 2 -->"
    read *, a

    print *, "Enter b, the coefficient of x -->"
    read *, b

    print *, "Enter c, the constant term -->"
    read *, c

    ! Calculate the roots by the quadratic formula
    x1 = (-b + (sqrt(b ** 2 - (4 * a * c)))) / (2 * a)
    x2 = (-b - (sqrt(b ** 2 - (4 * a * c)))) / (2 * a)

    ! Print the roots
    print *, "The roots are:"
    print *, "x1 = ", x1
    print *, "x2 = ", x2

end program quadratic_equation_solver
