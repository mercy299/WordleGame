import random

def read_random_word():
    with open("words.txt") as f:
        return random.choice(f.read().splitlines())

def calculate_result(word, guess):
    correct_letters = sum(1 for w, g in zip(word, guess) if w == g)
    correct_positions = correct_letters
    incorrect_positions = sum(1 for g in guess if g in word) - correct_letters
    wrong_letters = 5 - correct_positions - incorrect_positions
    return f"{correct_positions}G {incorrect_positions}Y {wrong_letters}W"

print("Let's play Wordle:")
print("Type a 5 letter word below and press Enter. You have 6 tries to guess the random word.\n")

word = read_random_word()

for attempt in range(1, 7):
    guess = input(f"Attempt {attempt}: ").lower()
    result = calculate_result(word, guess)
    print("Result:", result)
    print("Guessed word:", guess)
    if guess == word:
        print(f"Congratulations! You guessed the word in {attempt} guesses.")
        break
    elif attempt == 6:
        print(f"You didn't guess the word within 6 tries, it was '{word}'")
