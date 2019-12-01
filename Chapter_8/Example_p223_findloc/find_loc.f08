program find_loc

    implicit none

    intrinsic :: findloc

    real, dimension (3,3)   :: X =          &
        reshape (                           &
                    [   -11,  12, -13,      &
                         21,  22, -23,      &
                         31, -32, -33 ],    &
                    [ 3, 3 ], order = [ 2, 1 ] )

    logical, parameter      :: T = .true.

    print *, findloc( X > 0, T )            ! = [ 2, 1 ]
    print *, findloc( X > 0, back = T )     ! = [ 2, 2 ]
    print *, findloc( X > 0, T, dim = 2 )   ! = [ 2, 1, 1 ]

end program find_loc
