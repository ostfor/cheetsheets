while :
do
    N=$(( ( RANDOM % 60 )  + 5 ))
    sleep $N;  xte 'key g'; xte 'key T'; 

    for (( a = 1; a < 10; a++ ))
    do
        N=$(( ( RANDOM % 60 )  + 5 ))
        sleep $N; xte 'key j'
    done

    for (( a = 1; a < 10; a++ ))
    do
        N=$(( ( RANDOM % 60 )  + 5 ))
        sleep $N; xte 'key l'
    done

    for (( a = 1; a < 10; a++ ))
    do
       N=$(( ( RANDOM % 60 )  + 5 ))
       sleep $N; xte 'key h'
    done

    for (( a = 1; a < 10; a++ ))
    do
        N=$(( ( RANDOM % 60 )  + 5 ))
        sleep $N; xte 'key k'
    done
    
    N=$(( ( RANDOM % 10 )  + 1 ))
    sleep $N 
done
