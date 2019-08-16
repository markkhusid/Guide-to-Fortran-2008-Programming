module precision_types
    use, intrinsic             :: iso_fortran_env
    implicit none
    private

    ! Define real types
    integer, public, parameter :: sp = REAL32
    integer, public, parameter :: dp = REAL64
    integer, public, parameter :: qp = REAL128

    ! Define integer types
    integer, public, parameter :: i8 = INT8
    integer, public, parameter :: i16 = INT16
    integer, public, parameter :: i32 = INT32
    integer, public, parameter :: i64 = INT64

    ! Define integer and real types with lots of arbitrary precision
    integer, public, parameter :: int_kind_30 = selected_int_kind(30)
    integer, public, parameter :: real_kind_30_100 = selected_real_kind(30, 100)

    public                     :: calc_expression_lots_of_precision, &
                                  calc_expression_sp, &
                                  calc_expression_dp, &
                                  calc_expression_qp, &
                                  factorial_spdp, &
                                  factorial_qp, &
                                  calc_e_series_sp, &
                                  calc_e_series_dp, &
                                  calc_e_series_qp, &
                                  calc_e_series_lop

    contains

    function calc_expression_lots_of_precision(i, power) result(f_result)
        integer(kind = int_kind_30), intent(in)     :: i, power
        real(kind = real_kind_30_100)               :: f_result

        f_result = (1 + (1/real(power ** i, real_kind_30_100))) ** real(power ** i, real_kind_30_100)
    end function calc_expression_lots_of_precision

    function calc_expression_sp(i, power) result(f_result)
        integer(kind = i32), intent(in)     :: i, power
        real(kind = sp)                     :: f_result

        f_result = (1 + (1/real(power ** i, sp))) ** real(power ** i, sp)
    end function calc_expression_sp

    function calc_expression_dp(i, power) result(f_result)
        integer(kind = i32), intent(in)     :: i, power
        real(kind = dp)                     :: f_result

        f_result = (1 + (1/real(power ** i, dp))) ** real(power ** i, dp)
    end function calc_expression_dp

    function calc_expression_qp(i, power) result(f_result)
        integer(kind = i64), intent(in)     :: i, power
        real(kind = qp)                     :: f_result

        f_result = (1 + (1/real(power ** i, qp))) ** real(power ** i, qp)
    end function calc_expression_qp

    function factorial_spdp(n) result(factorial_result)
        integer(kind = i32), intent(in)     :: n
        integer(kind = i32)                 :: factorial_result
        integer(kind = i32)                 :: i

        factorial_result = 1_i32
        do i = 2_i32, n
            factorial_result = i * factorial_result
        end do
    end function factorial_spdp

    function factorial_qp(n) result(factorial_result)
        integer(kind = i64), intent(in)     :: n
        integer(kind = i64)                 :: factorial_result
        integer(kind = i64)                 :: i

        factorial_result = 1_i64
        do i = 2_i64, n
            factorial_result = i * factorial_result
        end do
    end function factorial_qp

    function calc_e_series_lop(n) result(e_series_result)
        integer(kind = i64), intent(in)     :: n
        real(kind = real_kind_30_100)       :: e_series_result
        integer(kind = i64)                 :: i

        e_series_result = 0_real_kind_30_100
        do i = 0_i64, n
            e_series_result = e_series_result + (1_real_kind_30_100 / real(factorial_qp(i), real_kind_30_100))
        end do
    end function calc_e_series_lop

    function calc_e_series_sp(n) result(e_series_result)
        integer(kind = i32), intent(in)     :: n
        real(kind = sp)                     :: e_series_result
        integer(kind = i32)                 :: i

        e_series_result = 0_sp
        do i = 0_i32, n
            e_series_result = e_series_result + (1_sp / real(factorial_spdp(i), sp))
        end do
    end function calc_e_series_sp

    function calc_e_series_dp(n) result(e_series_result)
        integer(kind = i32), intent(in)     :: n
        real(kind = dp)                     :: e_series_result
        integer(kind = i32)                 :: i

        e_series_result = 0_dp
        do i = 0_i32, n
            e_series_result = e_series_result + (1_dp / real(factorial_spdp(i), dp))
        end do
    end function calc_e_series_dp

    function calc_e_series_qp(n) result(e_series_result)
        integer(kind = i64), intent(in)     :: n
        real(kind = qp)                     :: e_series_result
        integer(kind = i64)                 :: i

        e_series_result = 0_qp
        do i = 0_i64, n
            e_series_result = e_series_result + (1_qp / real(factorial_qp(i), qp))
        end do
    end function calc_e_series_qp

end module precision_types

program calc_e
    use precision_types
    use, intrinsic                          :: iso_fortran_env
    implicit none

    integer                     ::  counter
    integer                     ::  file_good
    integer                     ::  good_write
    integer, parameter          ::  stop_value = 10

    ! Define variables with lots of arbitrary precision
    real(kind = real_kind_30_100)                        :: partial_sum_even_lop, &
                                                            partial_sum_odd_lop, &
                                                            e_statement_lop, &
                                                            difference_even_lop, &
                                                            difference_odd_lop, &
                                                            percentage_difference_even_lop, &
                                                            percentage_difference_odd_lop, &
                                                            e_series_lop
    real(kind = real_kind_30_100), dimension(stop_value) :: real_ps_even_lop_array, &
                                                            real_ps_odd_lop_array, &
                                                            real_e_series_lop_array, &
                                                            real_ps_even_diff_lop_array, &
                                                            real_ps_odd_diff_lop_array, &
                                                            real_ps_even_percdiff_lop_array, &
                                                            real_ps_odd_percdiff_lop_array

    real(kind = sp)                                      :: partial_sum_even_sp, &
                                                            partial_sum_odd_sp, &
                                                            e_statement_sp, &
                                                            difference_ps_even_sp, &
                                                            difference_es_even_sp, &
                                                            difference_ps_odd_sp, &
                                                            difference_es_odd_sp, &
                                                            percentage_difference_ps_even_sp, &
                                                            percentage_difference_ps_odd_sp, &
                                                            percentage_difference_es_even_sp, &
                                                            percentage_difference_es_odd_sp, &
                                                            e_series_sp
    real(kind = sp), dimension(stop_value)               :: real_ps_even_sp_array, &
                                                            real_ps_odd_sp_array, &
                                                            real_e_series_sp_array, &
                                                            real_ps_even_diff_sp_array, &
                                                            real_ps_odd_diff_sp_array, &
                                                            real_es_even_diff_sp_array, &
                                                            real_es_odd_diff_sp_array, &
                                                            real_ps_even_percdiff_sp_array, &
                                                            real_ps_odd_percdiff_sp_array, &
                                                            real_es_even_percdiff_sp_array, &
                                                            real_es_odd_percdiff_sp_array

    real(kind = dp)                                      :: partial_sum_even_dp, &
                                                            partial_sum_odd_dp, &
                                                            e_statement_dp, &
                                                            difference_ps_even_dp, &
                                                            difference_ps_odd_dp, &
                                                            difference_es_even_dp, &
                                                            difference_es_odd_dp, &
                                                            percentage_difference_ps_even_dp, &
                                                            percentage_difference_ps_odd_dp, &
                                                            percentage_difference_es_even_dp, &
                                                            percentage_difference_es_odd_dp, &
                                                            e_series_dp
    real(kind = dp), dimension(stop_value)               :: real_ps_even_dp_array, &
                                                            real_ps_odd_dp_array, &
                                                            real_e_series_dp_array, &
                                                            real_ps_even_diff_dp_array, &
                                                            real_ps_odd_diff_dp_array, &
                                                            real_es_even_diff_dp_array, &
                                                            real_es_odd_diff_dp_array, &
                                                            real_ps_even_percdiff_dp_array, &
                                                            real_ps_odd_percdiff_dp_array, &
                                                            real_es_even_percdiff_dp_array, &
                                                            real_es_odd_percdiff_dp_array

    real(kind = qp)                                      :: partial_sum_even_qp, &
                                                            partial_sum_odd_qp, &
                                                            e_statement_qp, &
                                                            difference_even_qp, &
                                                            difference_odd_qp, &
                                                            percentage_difference_even_qp, &
                                                            percentage_difference_odd_qp, &
                                                            e_series_qp
    real(kind = qp), dimension(stop_value)               :: real_ps_even_qp_array, &
                                                            real_ps_odd_qp_array, &
                                                            real_e_series_qp_array, &
                                                            real_ps_even_diff_qp_array, &
                                                            real_ps_odd_diff_qp_array, &
                                                            real_es_even_diff_qp_array, &
                                                            real_es_odd_diff_qp_array, &
                                                            real_ps_even_percdiff_qp_array, &
                                                            real_ps_odd_percdiff_qp_array, &
                                                            real_es_even_percdiff_qp_array, &
                                                            real_es_odd_percdiff_qp_array

    ! Calculate the value of e^1 using the intrinsic function exp(n)
    calc_using_statement: block
        e_statement_lop = exp(real(1_real_kind_30_100, real_kind_30_100))
        e_statement_sp  = exp(real(1_sp, sp))
        e_statement_dp  = exp(real(1_dp, dp))
        e_statement_qp  = exp(real(1_qp, qp))
    end block calc_using_statement

    ! Perform calculations at successive powers of 2 and 3 and print out intermediate results.
    calc_sums_and_print: block
        print *, "Calculating (1+1/x)^x using successive powers of 2 and 3 with varying precision..."
        print *, "Calculating S(n=0, inf)[1/x!] using successive additional terms with varying precision..."
        print *

        print *, "***** SINGLE PRECISION WITH POWERS OF TWO *****"
        do counter = 1, stop_value
            partial_sum_even_sp  = calc_expression_sp               (int(counter, i32) , 2_i32)
            real_ps_even_sp_array(counter) = partial_sum_even_sp
            difference_ps_even_sp = abs(e_statement_sp - partial_sum_even_sp)
            real_ps_even_diff_sp_array(counter) = difference_ps_even_sp
            percentage_difference_ps_even_sp = (difference_ps_even_sp / e_statement_sp) * real(100)
            real_ps_even_percdiff_sp_array(counter) = percentage_difference_ps_even_sp
            print *, "(1+1/x)^x with single precision at counter =", counter, &
            " and even power = ", int(2**counter, i32), " = ", partial_sum_even_sp
            print *, "The intrinsic function exp(1) = ", e_statement_sp
            print *, "The absolute difference is ", difference_ps_even_sp
            print *, "The percentage difference is ", percentage_difference_ps_even_sp
            print *

            e_series_sp = calc_e_series_sp(int(counter, i32))
            real_e_series_sp_array(counter) = e_series_sp
            difference_es_even_sp = abs(e_statement_sp - e_series_sp)
            real_es_even_diff_sp_array(counter) = difference_es_even_sp
            percentage_difference_es_even_sp = (difference_es_even_sp / e_statement_sp) * real(100)
            real_es_even_percdiff_sp_array(counter) = percentage_difference_es_even_sp
            print *, "S(n=0, inf)[1/x!] with single precision at counter =", counter, &
            " and denominator =", factorial_spdp(counter), " = ", e_series_sp
            print *, "The intrinsic function exp(1) = ", e_statement_sp
            print *, "The absolute difference is ", difference_es_even_sp
            print *, "The percentage difference is ", percentage_difference_es_even_sp
            print *
        end do

        print *

        print *, "***** SINGLE PRECISION WITH POWERS OF THREE *****"
        do counter = 1, stop_value
            partial_sum_odd_sp   = calc_expression_sp               (int(counter, i32) , 3_i32)
            real_ps_odd_sp_array(counter) = partial_sum_odd_sp
            difference_ps_odd_sp = abs(e_statement_sp - partial_sum_odd_sp)
            real_ps_odd_diff_sp_array(counter) = difference_ps_odd_sp
            percentage_difference_ps_odd_sp = (difference_ps_odd_sp / e_statement_sp) * real(100)
            real_ps_odd_percdiff_sp_array(counter) = percentage_difference_ps_odd_sp
            print *, "(1+1/x)^x with single precision at counter =", counter, &
            " and odd power = ", int(3**counter, i32), " = ", partial_sum_odd_sp
            print *, "The intrinsic function exp(1) = ", e_statement_sp
            print *, "The absolute difference is ", difference_ps_odd_sp
            print *, "The percentage difference is ", percentage_difference_ps_odd_sp
            print *

            e_series_sp = calc_e_series_sp(int(counter, i32))
            difference_es_odd_sp = abs(e_statement_sp - e_series_sp)
            real_es_odd_diff_sp_array(counter) = difference_es_odd_sp
            percentage_difference_es_odd_sp = (difference_es_odd_sp / e_statement_sp) * real(100)
            real_es_odd_percdiff_sp_array(counter) = percentage_difference_es_odd_sp
            print *, "S(n=0, inf)[1/x!] with single precision at counter =", counter, &
            " and denominator =", factorial_spdp(counter), " = ", e_series_sp
            print *, "The intrinsic function exp(1) = ", e_statement_sp
            print *, "The absolute difference is ", difference_es_odd_sp
            print *, "The percentage difference is ", percentage_difference_es_odd_sp
            print *
        end do

        print *

        print *, "***** DOUBLE PRECISION WITH POWERS OF TWO *****"
        do counter = 1, stop_value
            partial_sum_even_dp  = calc_expression_dp               (int(counter, i32) , 2_i32)
            real_ps_even_dp_array(counter) = partial_sum_even_dp
            difference_ps_even_dp = abs(e_statement_dp - partial_sum_even_dp)
            real_ps_even_diff_dp_array(counter) = difference_ps_even_dp
            percentage_difference_ps_even_dp = (difference_ps_even_dp / e_statement_dp) * real(100)
            real_ps_even_percdiff_dp_array(counter) = percentage_difference_ps_even_dp
            print *, "(1+1/x)^x with double precision at counter =", counter, &
            " and even power = ", int(2**counter, i32), " = ", partial_sum_even_dp
            print *, "The intrinsic function exp(1) = ", e_statement_dp
            print *, "The absolute difference is ", difference_ps_even_dp
            print *, "The percentage difference is ", percentage_difference_ps_even_dp
            print *

            e_series_dp = calc_e_series_dp(int(counter, i32))
            real_e_series_dp_array(counter) = e_series_dp
            difference_es_even_dp = abs(e_statement_dp - e_series_dp)
            real_es_even_diff_dp_array(counter) = difference_es_even_dp
            percentage_difference_es_even_dp = (difference_es_even_dp / e_statement_dp) * real(100)
            real_es_even_percdiff_dp_array(counter) = percentage_difference_es_even_dp
            print *, "S(n=0, inf)[1/x!] with double precision at counter =", counter, &
            " and denominator =", factorial_spdp(counter), " = ", e_series_dp
            print *, "The intrinsic function exp(1) = ", e_statement_dp
            print *, "The absolute difference is ", difference_es_even_dp
            print *, "The percentage difference is ", percentage_difference_es_even_dp
            print *
        end do

        print *

        print *, "***** DOUBLE PRECISION WITH POWERS OF THREE *****"
        do counter = 1, stop_value
            partial_sum_odd_dp   = calc_expression_dp               (int(counter, i32) , 3_i32)
            real_ps_odd_dp_array(counter) = partial_sum_odd_dp
            difference_ps_odd_dp = abs(e_statement_dp - partial_sum_odd_dp)
            real_ps_odd_diff_dp_array(counter) = difference_ps_odd_dp
            percentage_difference_ps_odd_dp = (difference_ps_odd_dp / e_statement_dp) * real(100)
            real_ps_odd_percdiff_dp_array(counter) = percentage_difference_ps_odd_dp
            print *, "(1+1/x)^x with double precision at counter =", counter, &
            " and odd power = ", int(3**counter, i32), " = ", partial_sum_odd_dp
            print *, "The intrinsic function exp(1) = ", e_statement_dp
            print *, "The absolute difference is ", difference_ps_odd_dp
            print *, "The percentage difference is ", percentage_difference_ps_odd_dp
            print *

            e_series_dp = calc_e_series_dp(int(counter, i32))
            difference_es_odd_dp = abs(e_statement_dp - e_series_dp)
            real_es_odd_diff_dp_array(counter) = difference_es_odd_dp
            percentage_difference_es_odd_dp = (difference_es_odd_dp / e_statement_dp) * real(100)
            real_es_odd_percdiff_dp_array(counter) = percentage_difference_es_odd_dp
            print *, "S(n=0, inf)[1/x!] with double precision at counter =", counter, &
            " and denominator =", factorial_spdp(counter), " = ", e_series_dp
            print *, "The intrinsic function exp(1) = ", e_statement_dp
            print *, "The absolute difference is ", difference_es_odd_dp
            print *, "The percentage difference is ", percentage_difference_es_odd_dp
            print *
        end do

        print *

        print *, "***** QUAD PRECISION WITH POWERS OF TWO *****"
        do counter = 1, stop_value
            partial_sum_even_qp  = calc_expression_qp               (int(counter, i64) , 2_i64)
            real_ps_even_qp_array(counter) = partial_sum_even_qp
            difference_even_qp = abs(e_statement_qp - partial_sum_even_qp)
            real_ps_even_diff_qp_array(counter) = difference_even_qp
            percentage_difference_even_qp = (difference_even_qp / e_statement_qp) * real(100)
            real_ps_even_percdiff_qp_array(counter) = percentage_difference_even_qp
            print *, "(1+1/x)^x with quad precision at counter =", counter, &
            " and even power = ", int(2**counter, i32), " = ", partial_sum_even_qp
            print *, "The intrinsic function exp(1) = ", e_statement_qp
            print *, "The absolute difference is ", difference_even_qp
            print *, "The percentage difference is ", percentage_difference_even_qp
            print *

            e_series_qp = calc_e_series_qp(int(counter, i64))
            real_e_series_qp_array(counter) = e_series_qp
            difference_even_qp = abs(e_statement_qp - e_series_qp)
            real_es_even_diff_qp_array(counter) = difference_even_qp
            percentage_difference_even_qp = (difference_even_qp / e_statement_qp) * real(100)
            real_es_even_percdiff_qp_array(counter) = percentage_difference_even_qp
            print *, "S(n=0, inf)[1/x!] with quad precision at counter =", counter, &
            " and denominator =", factorial_qp(int(counter, i64)), " = ", e_series_qp
            print *, "The intrinsic function exp(1) = ", e_statement_qp
            print *, "The absolute difference is ", difference_even_qp
            print *, "The percentage difference is ", percentage_difference_even_qp
            print *
        end do

        print *

        print *, "***** QUAD PRECISION WITH POWERS OF THREE *****"
        do counter = 1, stop_value
            partial_sum_odd_qp   = calc_expression_qp               (int(counter, i64) , 3_i64)
            real_ps_odd_qp_array(counter) = partial_sum_odd_qp
            difference_odd_qp = abs(e_statement_qp - partial_sum_odd_qp)
            real_ps_odd_diff_qp_array(counter) = difference_odd_qp
            percentage_difference_odd_qp = (difference_odd_qp / e_statement_qp) * real(100)
            real_ps_odd_percdiff_qp_array(counter) = percentage_difference_odd_qp
            print *, "(1+1/x)^x with quad precision at counter =", counter, &
            " and odd power = ", int(3**counter, i32), " = ", partial_sum_odd_qp
            print *, "The intrinsic function exp(1) = ", e_statement_qp
            print *, "The absolute difference is ", difference_odd_qp
            print *, "The percentage difference is ", percentage_difference_odd_qp
            print *

            e_series_qp = calc_e_series_qp(int(counter, i64))
            difference_odd_qp = abs(e_statement_qp - e_series_qp)
            real_es_odd_diff_qp_array(counter) = difference_odd_qp
            percentage_difference_odd_qp = (difference_odd_qp / e_statement_qp) * real(100)
            real_es_odd_percdiff_qp_array(counter) = percentage_difference_odd_qp
            print *, "S(n=0, inf)[1/x!] with quad precision at counter =", counter, &
            " and denominator =", factorial_qp(int(counter, i64)), " = ", e_series_qp
            print *, "The intrinsic function exp(1) = ", e_statement_qp
            print *, "The absolute difference is ", difference_odd_qp
            print *, "The percentage difference is ", percentage_difference_odd_qp
            print *
        end do

        print *

        print *, "***** LOTS OF PRECISION WITH POWERS OF TWO *****"
        do counter = 1, stop_value
            partial_sum_even_lop = calc_expression_lots_of_precision(int(counter, int_kind_30) , 2_int_kind_30)
            real_ps_even_lop_array(counter) = partial_sum_even_lop
            difference_even_lop = abs(e_statement_lop - partial_sum_even_lop)
            percentage_difference_even_lop = (difference_even_lop / e_statement_lop) * real(100)
            print *, "(1+1/x)^x with lots of precision at counter =", counter, &
            " and even power = ", int(2**counter, i32), " = ", partial_sum_even_lop
            print *, "The intrinsic function exp(1) = ", e_statement_lop
            print *, "The absolute difference is ", difference_even_lop
            print *, "The percentage difference is ", percentage_difference_even_lop
            print *

            e_series_lop = calc_e_series_lop(int(counter, i64))
            real_e_series_lop_array(counter) = e_series_lop
            difference_even_lop = abs(e_statement_lop - e_series_lop)
            percentage_difference_even_qp = (difference_even_qp / e_statement_qp) * real(100)
            print *, "S(n=0, inf)[1/x!] with lots of precision at counter =", counter, &
            " and denominator =", factorial_qp(int(counter, i64)), " = ", e_series_lop
            print *, "The intrinsic function exp(1) = ", e_statement_lop
            print *, "The absolute difference is ", difference_even_lop
            print *, "The percentage difference is ", percentage_difference_even_lop
            print *
        end do

        print *

        print *, "***** LOTS OF PRECISION WITH POWERS OF THREE *****"
        do counter = 1, stop_value
            partial_sum_odd_lop = calc_expression_lots_of_precision(int(counter, int_kind_30) , 2_int_kind_30)
            real_ps_odd_lop_array(counter) = partial_sum_odd_lop
            difference_odd_lop = abs(e_statement_lop - partial_sum_odd_lop)
            percentage_difference_odd_lop = (difference_odd_lop / e_statement_lop) * real(100)
            print *, "(1+1/x)^x with lots of precision at counter =", counter, &
            " and odd power = ", int(3**counter, i32), " = ", partial_sum_odd_lop
            print *, "The intrinsic function exp(1) = ", e_statement_lop
            print *, "The absolute difference is ", difference_odd_lop
            print *, "The percentage difference is ", percentage_difference_odd_lop
            print *

            e_series_lop = calc_e_series_lop(int(counter, i64))
            difference_odd_lop = abs(e_statement_lop - e_series_lop)
            percentage_difference_odd_lop = (difference_odd_lop / e_statement_qp) * real(100)
            print *, "S(n=0, inf)[1/x!] with lots of precision at counter =", counter, &
            " and denominator =", factorial_qp(int(counter, i64)), " = ", e_series_lop
            print *, "The intrinsic function exp(1) = ", e_statement_lop
            print *, "The absolute difference is ", difference_odd_lop
            print *, "The percentage difference is ", percentage_difference_odd_lop
            print *
        end do

    end block calc_sums_and_print

    print_summary_results: block
        counter = 0
        ! Print results for single precision
        print *, "********************************"
        print *, "*****...Single Precision...*****"
        print *, "********************************"

        print *, "*****...Even Single Precision Array...*****"
        do counter = 1, stop_value
            print *, "The value in Even Single Precision Array at counter =", counter, " is = ", &
                real_ps_even_sp_array(counter)
        end do
        print *, "The value of the intrinsic function exp(1) = ", e_statement_sp

        print *

        print *, "*****...Partial Sum Even Single Precision Difference Array...*****"
        do counter = 1, stop_value
            print *, "The value in the partial sum even single precision difference array at counter =", &
                counter, " is = ", real_ps_even_diff_sp_array(counter)
        end do

        print *

        print *, "*****..Partial Sum Even Single Precision Percentage Difference Array...*****"
        do counter = 1, stop_value
            write (*,*) "The value in the partial sum even single precision ", &
            "percentage difference array at counter =", &
                counter, " is = ", real_ps_even_percdiff_sp_array(counter)
        end do

        print *

        print *, "*****...Odd Single Precision Array...******"
        do counter = 1, stop_value
            print *, "The value in Odd Single Precision Array at counter =", counter, " is = ", &
                real_ps_odd_sp_array(counter)
        end do
        print *, "The value of the intrinsic function exp(1) = ", e_statement_sp

        print *

        print *, "*****...Partial Sum Odd Single Precision Difference Array...*****"
        do counter = 1, stop_value
            print *, "The value in the partial sum odd single precision difference array at counter =", counter, " is = ", &
                real_ps_odd_diff_sp_array(counter)
        end do

        print *

        print *, "*****...Partial Sum Odd Single Precision Percentage Difference Array...*****"
        do counter = 1, stop_value
            write (*,*) "The value in the partial sum odd single precision ", &
            "percentage difference array at counter =", &
                counter, " is = ", real_ps_odd_percdiff_sp_array(counter)
        end do


        print *

        print *, "*****...Series Single Precision Array...*****"
        do counter = 1, stop_value
            print *, "The value in Series Single Precision Array at counter =", counter, " is = ", &
                real_e_series_sp_array(counter)
        end do
        print *, "The value of the intrinsic function exp(1) = ", e_statement_sp

        print *

        print *, "*****...Even Series Single Precision Difference Array...*****"
        do counter = 1, stop_value
            print *, "The value in the even series single precision difference array at counter =", counter, " is = ", &
                real_es_even_diff_sp_array(counter)
        end do

        print *

        print *, "*****...Even Series Single Precision Percentage Difference Array...*****"
        do counter = 1, stop_value
            print *, "The value in the even series single precision percentage difference array at counter =", counter, " is = ", &
                real_es_even_percdiff_sp_array(counter)
        end do

        print *

        print *, "*****...Odd Series Difference Array...*****"
        do counter = 1, stop_value
            print *, "The value in the odd series single precision difference array at counter =", counter, " is = ", &
                real_es_odd_diff_sp_array(counter)
        end do

        print *

        print *, "*****...Odd Series Single Precision Percentage Difference Array...*****"
        do counter = 1, stop_value
            print *, "The value in the odd series single precision percentage difference array at counter =", counter, " is = ", &
                real_es_odd_percdiff_sp_array(counter)
        end do

        print *

        ! Print results for double precision
        print *, "********************************"
        print *, "*****...Double Precision...*****"
        print *, "********************************"

        print *, "*****...Even Double Precision Array...*****"
        do counter = 1, stop_value
            print *, "The value in Even Double Precision Array at counter =", counter, " is = ", &
                real_ps_even_dp_array(counter)
        end do
        print *, "The value of the intrinsic function exp(1) = ", e_statement_dp

        print *

        print *, "*****...Partial Sum Even Double Precision Difference Array...*****"
        do counter = 1, stop_value
            print *, "The value in the partial sum even double precision difference array at counter =", counter, " is = ", &
                real_ps_even_diff_dp_array(counter)
        end do

        print *

        print *, "*****...Odd Double Precision Array...*****"
        do counter = 1, stop_value
            print *, "The value in Odd Double Precision Array at counter =", counter, " is = ", &
                real_ps_odd_dp_array(counter)
        end do
        print *, "The value of the intrinsic function exp(1) = ", e_statement_dp

        print *

        print *, "*****...Partial Sum Odd Double Precision Difference Array...*****"
        do counter = 1, stop_value
            print *, "The value in the partial sum odd double precision difference array at counter =", counter, " is = ", &
                real_ps_odd_diff_dp_array(counter)
        end do

        print *

        print *, "*****...Series Double Precision Array...*****"
        do counter = 1, stop_value
            print *, "The value in Series Double Precision Array at counter =", counter, " is = ", &
                real_e_series_dp_array(counter)
        end do
        print *, "The value of the intrinsic function exp(1) = ", e_statement_dp

        print *

        print *, "*****...Even Series Double Precision Difference Array...*****"
        do counter = 1, stop_value
            print *, "The value in the even series double precision difference array at counter =", counter, " is = ", &
                real_es_even_diff_dp_array(counter)
        end do

        print *

        print *, "*****...Odd Series Double Precision Difference Array...*****"
        do counter = 1, stop_value
            print *, "The value in the odd series double precision difference array at counter =", counter, " is = ", &
                real_es_odd_diff_dp_array(counter)
        end do

        print *

        ! Print results for quad precision
        print *, "******************************"
        print *, "*****...Quad Precision...*****"
        print *, "******************************"

        print *, "*****...Even Quad Precision Array...*****"
        do counter = 1, stop_value
            print *, "The value in Even Quad Precision Array at counter =", counter, " is = ", &
                real_ps_even_qp_array(counter)
        end do
        print *, "The value of the intrinsic function exp(1) = ", e_statement_qp

        print *

        print *, "*****...Odd Quad Precision Array...*****"
        do counter = 1, stop_value
            print *, "The value in Odd Quad Precision Array at counter =", counter, " is = ", &
                real_ps_odd_qp_array(counter)
        end do
        print *, "The value of the intrinsic function exp(1) = ", e_statement_qp

        print *

        print *, "*****...Series Quad Precision Array...*****"
        do counter = 1, stop_value
            print *, "The value in Series Quad Precision Array at counter =", counter, " is = ", &
                real_e_series_qp_array(counter)
        end do
        print *, "The value of the intrinsic function exp(1) = ", e_statement_qp

        print *

        ! Print results lots of precision quad precision
        print *, "*********************************"
        print *, "*****...Lots of Precision...*****"
        print *, "*********************************"

        print *, "*****...Even Lots Of Precision Array...*****"
        do counter = 1, stop_value
            print *, "The value in Even Lots of Precision Array at counter =", counter, " is = ", &
                real_ps_even_lop_array(counter)
        end do
        print *, "The value of the intrinsic function exp(1) = ", e_statement_lop

        print *

        print *, "*****...Odd Lots Of Precision Array...*****"
        do counter = 1, stop_value
            print *, "The value in Odd Lots of Precision Array at counter =", counter, " is = ", &
                real_ps_odd_lop_array(counter)
        end do
        print *, "The value of the intrinsic function exp(1) = ", e_statement_lop

        print *

        print *, "*****...Series Lots Of Precision Array...*****"
        do counter = 1, stop_value
            print *, "The value in Series Lots of Precision Array at counter =", counter, " is = ", &
                real_e_series_lop_array(counter)
        end do
        print *, "The value of the intrinsic function exp(1) = ", e_statement_lop

        print *
    end block print_summary_results

    write_data_to_files: block
        ! Write single precision data to files

        print *, "************************************************"
        print *, "*****...Single Precision Writing To File...*****"
        print *, "************************************************"
        print *, "...Writing Partial Sum Even Single Precision Data to File..."
        open (unit=10, file=TRIM("Partial_Sum_Even_sp.dat"), status="old", IOSTAT=file_good, form="formatted", &
            access="sequential", action="write")
            if (file_good .ne. 0) then
                print *, "*****...Error opening file!...*****"
                close (10)
            else if (file_good .eq. 0) then
                print *, "*****...File opened for writing successfully...*****"
                do counter = 1, stop_value
                    write (10, '(i10, f30.20)', IOSTAT = good_write) counter, real_ps_even_sp_array(counter)
                end do
                close (10)
            end if
    end block write_data_to_files

end program calc_e

