program time_matrix_multiply

    ! Compare times of the matmul intrinsic cs DO loops

    implicit none
    integer, parameter :: n = 500
    real, dimension (n, n) :: a, b, c1, c2
    character(len=8) :: date
    real :: start_time, stop_time
    integer :: i, j, k
    character(len=*), parameter :: form = "(t2, a, f0.3, a)"

    ! Get date to print on report

    call date_and_time(date = date)

    print *, "Timing report dated: " // date(1:4) &
        // "-" // date(5:6) // "-" // date(7:8)

    call random_seed()
    call random_number(a)
    call random_number(b)
    call cpu_time(start_time)
    
    c1 = 0

    do k = 1, n
        do j = 1, n
            do i = 1, n
                c1(i, j) = c1(i, j) + a(i, k) * b(k, j)
            end do
        end do
    end do

    call cpu_time(stop_time)

    print *

    print form, "Time of Do loop version is: ", stop_time - start_time, " seconds."

    call cpu_time(start_time)
    c2 = matmul(a, b)
    call cpu_time(stop_time)

    print *

    print form, "Time of matmul version is: ", stop_time - start_time, " seconds."

    print *

    if (any(abs(c1-c2) > 1.0e-4)) then
        print *, "There are significantly different values."
    else
        print *, "The results are approximately the same."
    end if

end program time_matrix_multiply

