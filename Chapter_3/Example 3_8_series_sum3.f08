program series
    implicit none
    integer, parameter              :: n = 100
    print *, series_sum(0, 700, 100.0, 0.1)
    print *, series_sum(0, 700, d=0.1, s=100.0)
    print *, series_sum(n=700, d=0.1, s=100.0)
    print *, series_sum(d=0.1, s=100.0, n=700)
    print *, series_sum(m=0, n=700, d=0.1, s=100.0)
    
contains

function series_sum(m, n, s, d) result (series_sum_result)
    integer, optional, intent(in)   :: m
    integer, intent(in)             :: n
    real, intent(in)                :: s, d
    real                            :: series_sum_result
    integer                         :: i, temp_m
    
    if (present(m)) then
        temp_m = m
    else
        temp_m = 0
    end if
    
    series_sum_result = 0
    do i = temp_m, n
        series_sum_result = series_sum_result + s + i * d
    end do
    
end function series_sum

end program series

