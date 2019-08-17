program default_initialization

    implicit none

    type :: point
        real :: x = 1.1, y = 2.2
    end type point

    type(point) :: p

    print *, p % x, p % y

end program default_initialization
