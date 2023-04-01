while true; do
    echo "1. Rock"
    echo "2. Paper"
    echo "3. Scissors"
    echo "4. Done"
    read -p "Your choice [1-4]? " choice

    case $choice in
        1)
            echo "You chose 1. Rock"
            computer=$(( ( RANDOM % 3 ) + 1 ))
            if (( "$computer" == 1 )); then
                echo "Computer chose 1. Rock"
                echo "You tied. Try again."
            elif (( "$computer" == 2 )); then
                echo "Computer chose 2. Paper"
                echo "You lost."
            else
                echo "Computer chose 3. Scissors"
                echo "You win."
            fi
            ;;
        2)
            echo "You chose 2. Paper"
            computer=$(( ( RANDOM % 3 ) + 1 ))
            if (( "$computer" == 1 )); then
                echo "Computer chose 1. Rock"
                echo "You win."
            elif (( "$computer" == 2 )); then
                echo "Computer chose 2. Paper"
                echo "You tied. Try again."
            else
                echo "Computer chose 3. Scissors"
                echo "You lost."
            fi
            ;;
        3)
            echo "You chose 3. Scissors"
            computer=$(( ( RANDOM % 3 ) + 1 ))
            if (( "$computer" == 1 )); then
                echo "Computer chose 1. Rock"
                echo "You lost."
            elif (( "$computer" == 2 )); then
                echo "Computer chose 2. Paper"
                echo "You win."
            else
                echo "Computer chose 3. Scissors"
                echo "You tied. Try again."
            fi
            ;;
        4)
            echo "Bye"
            break
            ;;
        *)
            echo "Invalid option. Try again."
            ;;
    esac
done
