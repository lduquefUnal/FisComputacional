!===============================================================================
!  Parcial.f90
!
!  PROGRAMA: Parcial
!  PROPÓSITO: Segunda parte del parcial de Física Computacional. 
!             Lee dos matrices complejas (4×5), las suma, calcula la matriz 
!             de módulos de la suma y obtiene el mínimo de dichos módulos.
!===============================================================================

 
module  definiciones
        implicit none
    !---------------------------------------------------------------
    ! Variables de módulo (visibles en todo el programa):
    !   mat1    - Primera matriz de entrada (compleja 4×5)
    !   mat2    - Segunda matriz de entrada (compleja 4×5)
    !   mat_sum - Matriz resultado de sumar mat1 + mat2 (compleja 4×5)
    !   mat_mod - Matriz de módulos de mat_sum (real   4×5)
    !   min      - Valor mínimo encontrado en mat_mod (real)
    !---------------------------------------------------------------
        complex , dimension(4,5) :: mat1 , mat2 , mat_sum
        real , dimension(4,5) ::mat_mod
        real :: min
        
    contains
    subroutine suma_mat(m1,m2,m3)
    ! la subroutine funciona para cualquier par de matriz n*m
    implicit none
        complex ,intent(in) :: m1(:,:),m2(:,:)
        complex ,intent(out) :: m3(:,:)
        integer :: n, m
        n = SIZE(m1,1)
        m = SIZE(m1,2)
        m3 = m1+m2
    end subroutine
    
    subroutine modu_mat(ms,md)
        implicit none
        complex , dimension(4,5) ,intent(in) :: ms
        real , dimension(4,5) ,intent(out) :: md
        integer :: i,j
        do i = 1 , 4
            do j=1,5
                md(i,j) = abs(ms(i,j))
            end do
        end do 
    end subroutine
    
    subroutine matriz2vector(m,v)
    !sin usar la función intrinseca v = reshape(m, [size(m)])
        implicit none
        real , dimension(4,5) ,intent(in) :: m
        real, dimension(20), intent(out) :: v
        integer :: i,j,k=0
        do i = 1 ,4
            do j = 1 ,5
                k = k+1 !acumulador del indice
                v(k)= m(i,j)
            end do   
        end do
    end subroutine matriz2vector
    
    subroutine min_val(m,min_out)
        real , dimension(4,5) ,intent(in) :: m
        real , intent(out) :: min_out
        real, dimension(20) :: vec_fila
        integer ::  i
        call matriz2vector(m, vec_fila)
        min_out = vec_fila(1)
        do i=2,20
            if (vec_fila(i)< min_out) then
                min_out = vec_fila(i)
            end if
        end do
    end subroutine 
end module
    
program Parcial
    
    use definiciones
    implicit none   

    !-----------------------------------------------------
    ! 1) Lectura de las dos matrices complejas (4×5)
    !-----------------------------------------------------
    open (unit=1, file="mat1.txt", status="old")
    read (1, *) mat1
    close(1)
    open (unit=2, file="mat2.txt", status="old")
    read (2, *) mat2
    close(2)
    !-----------------------------------------------------
    ! 2) Suma de mat1 y mat2 → mat_sum
    !-----------------------------------------------------
    call suma_mat(mat1, mat2, mat_sum)
    !-----------------------------------------------------
    ! 3) Cálculo de la matriz de módulos → mat_mod
    !-----------------------------------------------------
    call modu_mat(mat_sum, mat_mod)
    !-----------------------------------------------------
    ! 4) Obtención del mínimo de mat_mod → min
    !-----------------------------------------------------
    call min_val(mat_mod, min)
    write(*, *) "Valor minimo de la matriz de modulos: "
    write(*, *) min
    !-----------------------------------------------------
    ! Fin del programa
    !-----------------------------------------------------
    write(*, *) "Pulse ENTER para salir..."
    read(*,*)
end program Parcial

