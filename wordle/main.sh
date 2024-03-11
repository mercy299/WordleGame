#!/bin/bash

read_random_word() {
    shuf -n 1 words.txt
}

calculate_result() {
    word=$1
    guess=$2
    correct_positions=0
    correct_letters=0
    incorrect_positions=0
    for ((i = 0; i < 5; i++)); do
        if [ "${guess:$i:1}" == "${word:$i:1}" ]; then
            ((correct_positions++))
        elif [[ "$word" == *"${guess:$i:1}"* ]]; then
            ((incorrect_positions++))
        fi
    done
    correct_letters=$((correct_positions + incorrect_positions))
    wrong_letters=$((5 - correct_letters))
    echo "$correct_positions G $incorrect_positions Y $wrong_letters W"
}

echo "Let's play Wordle:"
echo "Type a 5-letter word below and press Enter. You have 6 tries to guess the random word."

word=$(read_random_word)

for ((attempt = 1; attempt <= 6; attempt++)); do
    read -p "Attempt $attempt: " guess
    result=$(calculate_result "$word" "$guess")
    echo "Result: $result"
    echo "Guessed word: $guess"
    if [ "$guess" == "$word" ]; then
        echo "Congratulations! You guessed the word in $attempt attempts."
        break
    elif [ $attempt -eq 6 ]; then
        echo "You didn't guess the word within 6 tries. The word was '$word'."
    fi
done
