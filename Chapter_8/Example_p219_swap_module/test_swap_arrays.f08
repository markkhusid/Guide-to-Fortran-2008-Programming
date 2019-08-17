module swap_module

    implicit none

    public          :: swap
    private         :: swap_reals, swap_integers

    interface swap
        procedure swap_reals, swap_integers
    end interface

contains

    elemental subroutine swap_reals (a, b)
        real, intent (in out)   :: a, b
        real                    :: temp
        temp = a
        a = b
        b = temp
    end subroutine swap_reals

    elemental subroutine swap_integers (a, b)
        integer, intent (in out)    :: a, b
        integer                     :: temp
        temp = a
        a = b
        b = temp
    end subroutine swap_integers

end module swap_module

program test_swap_arrays

    use swap_module
    implicit none
    integer, dimension (3)          :: &
        i = [1, 2, 3], &
        j = [7, 8, 9]

    print *, "[*] The array i is: ", i
    print *, "[*] The array j is: ", j
    
    print *, "[*] Now calling swap...."

    call swap(i, j)

    print *, "[*] After swapping, the array i is: ", i
    print *, "[*] After swapping, the array j is: ", j

end program

