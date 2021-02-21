program quadratic_equation_solver

! Calculates and prints the roots
! of a quadratic equation

    implicit none

    ! Variables
    !   a, b, c: coefficients
    !   x1, x2: roots

    real            :: a, b, c, x1, x2, x1_smaller, x2_smaller
    real            :: difference, percentage
    complex         :: z1, z2

    real            :: discriminant

    character(len=*), parameter     :: layout = "(a, f30.15)"

    ! Read the coefficients
    print *, "Enter a, the coefficient of x ** 2 -->"
    read *, a

    print *, "Enter b, the coefficient of x -->"
    read *, b

    print *, "Enter c, the constant term -->"
    read *, c

    if ((a == 0) .and. (b == 0)) then
        ! Handle impossible case a and b both equal to zero
        print *, "Coefficients of a and b cannot both be zero!"
    else if ((a == 0) .and. (b /= 0)) then
        ! Handle linear case
        x1 = -c / b
        x2 = x1

        ! Print the roots
        print *, "Linear case: the root is:"
        print *, "x = ", x1

    else if ((a /= 0) .and. (b /= 0)) then
        ! Handle 2nd order cases by first calculating the discriminant
        discriminant = ((b ** 2) - (4 * a * c))

        if (discriminant > 0) then
        ! Calculate real, non-degenerate roots by the quadratic formula

            x1 = (-b + sqrt(discriminant)) / (2 * a)
            x2 = (-b - sqrt(discriminant)) / (2 * a)

        else if (discriminant == 0) then
        ! Calculate real, degenerate roots by the quadratic formula
            x1 = (-b + sqrt(discriminant)) / (2 * a)
            x2 = x1

        else if (discriminant < 0) then
            x1 = 0
            x2 = 0
            z1 = (-b + sqrt (cmplx (discriminant))) / (2 * a)
            z2 = (-b - sqrt (cmplx (discriminant))) / (2 * a)

        end if

        ! Calculate the smaller root using x1 = c / (a * x2) and taking abs value
        if (abs(x1) < abs(x2)) then
            x1_smaller = abs(c / (a * x2))
            difference = abs(x1)- x1_smaller
            percentage = (difference / x1_smaller) * 100
        else if (abs(x1) > abs(x2)) then
            x2_smaller = abs(c / (a * x1))
            difference = abs(x2) - x2_smaller
            percentage = (difference / x2_smaller) * 100
        else if (abs(x1) == abs(x2)) then
            x1_smaller = abs (c / (a * x2))
            x2_smaller = x1_smaller
            difference = 0
            percentage = 0
        end if

        ! Print the roots
        if (discriminant >= 0) then
            print *, "The roots are (using just sqrt):"
            print layout, "x1 = ", x1
            print layout, "x2 = ", x2
            print *
            print *, "The absolute value of the smaller root according to x2 = c/ax1 is:"

            if (abs(x1) <= abs(x2)) then
                print layout, "x1 = ", x1_smaller
            else if (abs(x1) >= abs(x2)) then
                print layout, "x2 = ", x2_smaller
            end if

            print layout, "The difference is:", difference
            print "(a, f15.10, a)", "The percentage difference is:", percentage, "%"

        else if (discriminant < 0) then
            print *, "The roots are (using sqrt and cmplx):"
            print *, "z1 = ", z1
            print *, "z2 = ", z2

        end if
    end if

 end program quadratic_equation_solver
