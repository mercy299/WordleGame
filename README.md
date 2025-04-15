# 🟩 Wordle Game & Utility Scripts

This project contains two mini tools:

1. **A CLI-based Wordle game** recreated in both **Python** and **Bash**
2. **A migration-checking utility** that simulates automated checks using a regex match on a file.

Inspired by scripting practice and automation challenges!

---

## 📁 Project Structure

```
.
├── program/
│   ├── execute.sh        # Script to check if migration should be applied based on file contents
│   └── read.py           # Reads and prints content from filename.txt
│
└── wordle/
    ├── main.py           # Wordle game written in Python
    ├── word.sh           # Wordle game written in Bash
    ├── words.txt         # Word list for the game
```

---

## 🧠 Game Rules (Wordle)

- The game picks a **random 5-letter word**.
- You have **6 tries** to guess it.
- After each guess, feedback is given:
  - 🟩 `G` (Green) → correct letter, correct position  
  - 🟨 `Y` (Yellow) → correct letter, wrong position  
  - ⬜ `W` (White) → incorrect letter  

Example: `2G 1Y 2W` means 2 letters are in the right place, 1 is in the word but misplaced, and 2 are wrong.

---

## ▶️ How to Run

### 🔸 Wordle Game

#### Python version:
```bash
cd wordle
python3 main.py
```

#### Bash version:
```bash
cd wordle
chmod +x word.sh
./word.sh
```

You can edit or extend `words.txt` with more 5-letter words.

---

### 🔸 Migration Simulation (Regex Checker)

#### Setup and run:
```bash
cd program
chmod +x execute.sh
./execute.sh
```

Make sure a `filename.txt` exists in the same directory with a timestamp line that may look like:

```
2025/04/15 12:00:00 Pending
```

If a line matches the regex for a pending timestamp, it simulates applying migrations.

---

## 📦 Purpose

This repo helps you:

- Practice parsing and matching logic in both **Bash** and **Python**
- Build CLI games and automation tools
- Understand how basic scripting can be used for real-world DevOps-style tasks

---

## 👩‍💻 Author

Built by Annie — scripting, gaming, and automating with style ✨  
More mini-projects coming soon!
