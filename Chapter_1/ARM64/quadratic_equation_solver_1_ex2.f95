program quadratic_equation_solver

! Calculates and prints the roots
! of a quadratic equation

    implicit none

    ! Variables
    !   a, b, c: coefficients
    !   x1, x2: roots

    real        :: a, b, c, x1, x2, x3, x4
    complex     :: z1, z2

    real        :: difference

    ! Read the coefficients
    print *, "Enter a, the coefficient of x ** 2 -->"
    read *, a

    print *, "Enter b, the coefficient of x -->"
    read *, b

    print *, "Enter c, the constant term -->"
    read *, c

    ! Handle case if a == 0 and b /= 0
    if ((a == 0) .and. (b /= 0) .and. (c /= 0)) then
        x1 = -c / b
        x2 = x1
        z1 = x1
        z2 = x1


    else if (((a /= 0) .and. (b /= 0)) .or. ((a /= 0) .and. (b == 0)))  then

    ! Calculate the roots by the quadratic formula
        x1 = (-b + (sqrt(b ** 2 - (4 * a * c)))) / (2 * a)
        x2 = (-b - (sqrt(b ** 2 - (4 * a * c)))) / (2 * a)

        z1 = (-b + sqrt (cmplx (b**2 - 4 * a * c))) / (2 * a)
        z2 = (-b - sqrt (cmplx (b**2 - 4 * a * c))) / (2 * a)

        if (x1 <= x2) then
            x3 = abs(c / (a * x2))
        else if (x1 >= x2) then
            x4 = abs(c / (a * x1))
        end if

    else if ((a == 0) .and. (b == 0)) then
            print *, "Coefficients of a x**2 and x cannot both be zero!"

    end if

    if ((a /= 0) .or. (b /= 0)) then
        ! Print the roots
        print *, "The roots are (using just sqrt):"
        print *, "x1 = ", x1
        print *, "x2 = ", x2
        print *
        print *, "The roots are (using sqrt and cmplx):"
        print *, "z1 = ", z1
        print *, "z2 = ", z2
        print *
        print *, "The smaller root according to x2 = c/ax1 are:"
        if (x1 <= x2) then
            print *, "x1 = ", x3
        else if (x1 >= x2) then
            print *, "x2 = ", x4
        end if

    end if

end program quadratic_equation_solver
