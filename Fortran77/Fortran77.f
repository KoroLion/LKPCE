	PROGRAM ARRAY_SUM		
		INTEGER n, i, s
        INTEGER a(1000)
        
        WRITE(*,*) 'Enter size of an array (n <= 1000): '
        READ(*,*) n
        IF (n .LT. 1000) GOTO 1
            WRITE(*,*) 'ERROR: Array size is too big! Aborting...'
            GOTO 2
1       CONTINUE

		i = 1
10			READ(*,*) a(i)
			i = i + 1
		IF (i .LE. n) GOTO 10
        
        s = 0
        i = 1
20          s = s + a(i)
            i = i + 1
        IF (i .LE. n) GOTO 20
		
		WRITE(*,*) 'The sum of all elements is ', s
2	END