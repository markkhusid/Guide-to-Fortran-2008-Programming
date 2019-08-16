program series
    ! This program computes the series sum S(i=m, n) (s+d*i)
    implicit none
    integer, parameter :: n = 100
    print *, series_sum(d=0.1, m=400, n=700, s=100.0)
    
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

