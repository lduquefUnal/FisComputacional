!  EjemploFortran.f90 
!
!  FUNCTIONS:
!  EjemploFortran - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: EjemploFortran
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

    program EjemploFortran
    !el implicit obliga a definir las variables
    implicit none

    ! Variables
    integer :: i, j,n
    real :: x, y, z
    x= 5
    !real(kind=8) :: d
    !complex :: zc
    character(len=20) :: nombre
    nombre = "Luis"
    ! Body of EjemploFortran
    print *, 'Hello World , this my first code , awesome ¡'
    print *, "i am Luis ,  i  going to learn a new code lenguage"
    print *, "i hope learn a lot¡" , nombre
    end program EjemploFortran

! operadores  + - * / ** 
    !operadores relacionales  == /= < <=
    ! operadores lógicos  .AND. .OR. .NOT.
! Condicionales
    if x<0 then
    print *, "x es negativo"
! else if ( ) then    
    else
        print *, "es positivo"
        
! SElect Case
    select case(valor)
        case (1)
            print *, "caso1"
        case(2,3) 
            print *, "caso 2 o 3 "
        case default
        end select
! Do like For en python
        do  i= 1,10 
            print *, "iteración",i