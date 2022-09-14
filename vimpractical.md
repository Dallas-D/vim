# GENERAL

- `<Esc>` - exit current mode (back to NORMAL) -or- cancel current command
- _number_`<command>` - repeat \<command\> _x_ number of times

# MOVEMENT

`  k  `

`h j l` - basic arrow keys

## Scan on current line

- `f_` - `f`ind character
- `F_` - reverse `f`ind
- `t_` - find `t`ill character (stop _before_ character)
- `T_` - reverse find `t`ill character (stop _after_ character)
- `;` - repeat previous scan movement
- `,` - repeat previous scan movement in reverse

## Word-Wise

- `w` - jump forwards to beginning of next `w`ord
- `W` - jump forwards to beginning of next `W`ORD
- `b` - jump `b`ackwards to beginning of next word
- `B` - jump backwards to beginning of next WORD
- `e` - jump forwards to `e`nd of next word (reverse with `ge`)
- `E` - jump forwards to end of next WORD (reverse with `gE`)

<_Aside: word vs. WORD_>
> A WORD is just a bigger version of a word. words are separated by whitespace and punctuation. WORDS are only separated by whitespace.
> Example: `test.api.py is a file` has 8 words but only 4 WORDS.

## Line-Based

- `0` - jump to beginning of line (column `0`)
- `^` - jump to first `^`o^-whitespace character
- `$` - jump to end of line (la`$`T character)

## Other

- `%` - jump to matching character of a match pair
  - Default Pairs: () [] {}
  - `:h matchpairs` for more info

# EDITING

## Insert

- `i` - enter `i`NSERT mode before cursor
- `I` - enter `I`NSERT mode at beginning of line
- `a` - enter INSERT mode `a`fter cursor
- `A` - enter INSERT mode `A`fter the line

## Deleting and Changing

- `d_<movement>_` - `d`elete up to movement
- `c_<movement>_` - `c`hange up to movement
- `cc` - `c`hange the current line (delete & replace)
- `dd` - `d`elete the current line
- `cc` - `c`hange the current line (delete & replace)
- `D` - delete to end of line
- `C` - change to end of line

