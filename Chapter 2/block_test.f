program block_test

    implicit none
    real, parameter :: x = 1.1

    block
        integer :: x
        do x = 1, 3
            print *, x
        end do
    end block

    print *, x

end program block_test

