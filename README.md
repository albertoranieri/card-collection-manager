# Card Collection Manager (MATLAB)

A small command-line tool I wrote a while ago to keep track of my collectible cards: which ones I own, how many copies I have, and which ones I'm still missing.

The collection is stored as a plain list of card numbers (from 1 to 721) in a text file. Duplicates are kept on purpose, so the same number appearing three times means three copies of that card.

The code is written entirely in MATLAB, and comments and console messages are in Italian.

## Features

- **Add cards**: type card numbers one at a time; numbers above 721 are rejected.
- **Remove cards**: either type them in manually, or remove a whole batch at once by listing them in `da_rimuovere.txt`. Each number removes one copy.
- **Sort** the collection in ascending order.
- **Check a list against your collection**: put a list of card numbers in `da_controllare.txt` (for example, the cards a friend is looking for) and the program tells you which ones you have. The results are saved to:
  - `controllati.txt`: cards from the list that you own
  - `mancanti.txt`: cards from the list that you don't own
- **Reset** the collection (requires typing `CONFERMA` to confirm) or clear the list to check.

## Requirements

- MATLAB R2019a or later (uses `writematrix` and string concatenation). No toolboxes needed.

## Usage

1. Open the project folder in MATLAB and make it the current folder.
2. Run `main.m`.
3. The program loads your collection from `lista.txt`, tells you how many cards you have, and shows a menu:

   | Option | Action |
   |---|---|
   | `0` | Reset the collection |
   | `1` | Add cards |
   | `2` | Remove cards |
   | `3` | Sort the collection |
   | `4` | Check cards from `da_controllare.txt` |
   | `5` | Clear `da_controllare.txt` |

4. When the operation ends, the updated collection is saved back to `lista.txt`.

Each run performs one operation, so run `main.m` again for the next one.

## Project structure

| File | Description |
|---|---|
| `main.m` | Entry point: loads the data, shows the menu and saves the result |
| `raccolta_dati.m` | Reads the collection from `lista.txt` |
| `aggiungi.m` | Adds cards to the collection |
| `elimina.m` | Removes cards, manually or from `da_rimuovere.txt` |
| `ordina.m` | Sorts the collection |
| `controlla.m` | Checks the cards in `da_controllare.txt` against the collection |
| `resett.m` | Empties the collection after confirmation |
| `resett_2.m` | Empties `da_controllare.txt` |
| `prova.m` | Small test script used during development to fill `da_controllare.txt` |

### Data files

All data files contain comma-separated card numbers, and they currently hold my own collection as example data.

| File | Content |
|---|---|
| `lista.txt` | The collection |
| `da_rimuovere.txt` | Cards to remove in bulk |
| `da_controllare.txt` | Cards to check against the collection |
| `controllati.txt` | Output: checked cards you own |
| `mancanti.txt` | Output: checked cards you're missing |

## Notes

- Removing a card deletes only its first occurrence, so if you own several copies the others stay in the collection.
- The input files are parsed by extracting every number they contain, so the exact formatting (commas, spaces, new lines) doesn't matter.
- This was a personal project written for fun, so the code favors simplicity over efficiency (the sorting, for example, is a hand-written exchange sort instead of MATLAB's built-in `sort`).
