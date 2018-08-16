# 1 "case_study_3_17.f08"
# 1 "<built-in>"
#define __STDC_HOSTED__ 0
#define __GNUC__ 8
#define __GNUC_MINOR__ 1
#define __GNUC_PATCHLEVEL__ 0
#define __VERSION__ "8.1.0"
#define __ATOMIC_RELAXED 0
#define __ATOMIC_SEQ_CST 5
#define __ATOMIC_ACQUIRE 2
#define __ATOMIC_RELEASE 3
#define __ATOMIC_ACQ_REL 4
#define __ATOMIC_CONSUME 1
#define __pic__ 2
#define __PIC__ 2
#define __pie__ 2
#define __PIE__ 2
#define __NO_MATH_ERRNO__ 1
#define __FINITE_MATH_ONLY__ 0
#define __SIZEOF_INT__ 4
#define __SIZEOF_LONG__ 4
#define __SIZEOF_LONG_LONG__ 8
#define __SIZEOF_SHORT__ 2
#define __SIZEOF_FLOAT__ 4
#define __SIZEOF_DOUBLE__ 8
#define __SIZEOF_LONG_DOUBLE__ 12
#define __SIZEOF_SIZE_T__ 4
#define __CHAR_BIT__ 8
#define __BIGGEST_ALIGNMENT__ 16
#define __ORDER_LITTLE_ENDIAN__ 1234
#define __ORDER_BIG_ENDIAN__ 4321
#define __ORDER_PDP_ENDIAN__ 3412
#define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __SIZEOF_POINTER__ 4
#define __GFORTRAN__ 1
#define _LANGUAGE_FORTRAN 1
# 1 "<command-line>"
# 1 "/home/haxor/Engineering/Programming/Guide to Fortran 2008 Programing/Chapter 3/Case_study_3_17/i386//"
# 1 "case_study_3_17.f08"
module math_module
    implicit none
    private
    real, public, parameter :: pi    = 3.1415926
    real, public, parameter :: e     = 2.7182818
    real, public, parameter :: gamma = 0.5772156
end module math_module

module function_module

    implicit none
    private
    public :: f

contains
    function f(x) result (f_result)
        real, intent(in)        :: x
        real                    :: f_result

        f_result = exp(-x**2.0)
    end function f
end module function_module


module integral_module

    implicit none
    private
    public :: integral

contains

    recursive function integral(f, a, b, tolerance) result (integral_result)

        intrinsic :: abs

        interface
            function f(x) result (f_result)
                real, intent(in) :: x
                real :: f_result
            end function f
        end interface

        real, intent(in)    :: a, b, tolerance
        real                :: integral_result
        real                :: h, mid
        real                :: one_trapezoid_area, two_trapezoid_area
        real                :: left_area, right_area

        h = b - a
        mid = (a + b) / 2
        one_trapezoid_area = h * (f(a) + f(b)) / 2.0
        two_trapezoid_area = h/2 * (f(a) + f(mid)) / 2.0 + &
                                h/2 * (f(mid) + f(b)) / 2.0
        if (abs(one_trapezoid_area - two_trapezoid_area) < 3.0 * tolerance) then
            integral_result = two_trapezoid_area
        else
            left_area = integral (f, a, mid, tolerance / 2)
            right_area = integral (f, mid, b, tolerance / 2)
            integral_result = left_area + right_area
        end if

    end function integral

end module integral_module

program integrate

    use function_module
    use integral_module
    use math_module, only : pi
    implicit none

    real        :: x_min, x_max
    real        :: answer

    x_min = -4.0
    x_max = 4.0
    answer = integral(f, x_min, x_max, tolerance = 0.01)
    print "(a, f11.6)", "The integral is approximately ", answer
    print "(a, f11.6)", "The exact answer is ", sqrt(pi)

end program integrate

