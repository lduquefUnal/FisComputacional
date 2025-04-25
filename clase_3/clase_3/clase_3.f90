!  clase_3.f90 
!
!  FUNCTIONS:
!  clase_3 - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: clase_3
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

    program clase_3

    implicit none

    ! Variables
    real :: x , y

    ! Body of clase_3
    write(*,*) "dele un valor a X"
    read (*,*) x
    
    !verif: if (x<0) then
    !    y=exp((-x/2.0))
    !elseif (x>0 .and. x<=3.1) then 
    !    y=(x)**(3./2.)
    !elseif(3.1>x .and. x<10.3) then
    !    y=log(x**2) - sin(x)
    !else
    !    y=cosh(1./x)
    !    
    !end if verif
    
    select case (x)
    case(:0.)
        y = x/2
    
    end selectcase
    
    write(*,*) y
    
    end program clase_3

