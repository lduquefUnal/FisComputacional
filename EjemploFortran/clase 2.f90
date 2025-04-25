!  clase_2.f90 
!
!  FUNCTIONS:
!

!****************************************************************************
!
!  PROGRAM: EjemploFortran
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************
    
program ECUATION 
    REAL a, b, c, x1, x2
    WRITE (*,*) "escribe las constantes de la ecuación cuadraticaa de la forma a^2+bx +c" 
    
    WRITE(*,*) "X1:" (-b + (b**2-4*a*c)**(1/2)) /(2*a)
    
end program ECUATION    