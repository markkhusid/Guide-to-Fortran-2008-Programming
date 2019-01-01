program series

    implicit none
    integer, parameter :: n = 100
    print *, series_sum(n+300, 2*n+500, 100.0, 0.1)
    
contains

function series_sum(m, n, s, d) result (series_sum_result)

    integer, intent (in) :: m, n
    real, intent (in) :: s, d
    real :: series_sum_result
    integer :: i
    
    series_sum_result = 0
    do i = m, n
        series_sum_result = series_sum_result + s + d * i
    end do
    
end function series_sum

end program series

