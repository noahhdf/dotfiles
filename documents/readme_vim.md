# How to use vim

## Modes

Vim consists of four modes:

1. Normal
2. Insert
3. Visual
4. Replace

For now we will focus on the first two.

### Normal Mode

When starting Vim you will be placed in *normal mode*.
This mode is also called *command mode*, because from here all commands will be invoked.

The two most important commands are:

`:w`
    Write (save) the file

`:q`
    Quit (the current file).

These commands can be concatenated (`:wq`) and there is also a short version:
`:x`, which will save and quit the current file.

To start a command simply type `:` and execute it with `<ENTER>` (`<RETURN>`).

### Insert Mode

To get from *normal mode* into *insert mode* simply press `i`.

The insert mode is basically standard way to write in every other editor.

To get out of *insert mode* back into *normal mode* again, press `<ESC>`.

## Navigating

Vim uses no mouse, so every move in the editor is made with the keyboard.
To change the position of the cursor you can use on of the arrow keys.

There is another way of changing the cursor position, which is

- `h`: left
- `j`: down
- `k`: up
- `l`: right

Once you get used to it it will be very comfortable, because your hands don't
need to leave their position on the keyboard.

## Commands

The power of Vim lays in the commands and the heavy usage of the *normal mode*.
It is called "normal" because you will spend the most of the time in this mode.
The *insert mode* is really just used for inserting new text!

We learned about a type of commands earlier: commands starting with a colon.

There is another type of commands, basically shortcuts for colon-commands.

Most commands will have the following structure:
`<command letter><move>`.

But let's start with the moves.

### Moves

We learned about the moves which move the cursor one letter or line (`hjkl`).

We can insert a `<number>` in front of the command (or typing the number before one of `hjkl`),
which will make the moves `<number>` of times (hint: try `3l`, which will move the cursor to the
right 3 times, like pressing `lll`).

There are more powerful moves than just moving `<number>` times left, right, up and down:

- `w`: Move to the beginning of the next **w**ord.
- `e`: Move to the **e**nd of the current word (if already at the end of the current word, move to the end
  of the next word).
- `b`: Move to the **b**eginning of the current word (if already at the beginning of the current word, move to the beginning
  of the next word).

These can also be appended to a number, of course.

There are three special moves which can not be appended to a number:

- `$`: Move to the end of the current line.
- `0`: Move to the beginning of the current line.
- `_`: Move to the first non-whitespace character of the current line.

### Command Letters

The most used command letters are:

- `d`: delete
- `c`: change
- `y`: yank (copy)

As mentioned earlier you need to add a move to the letter.
If you want to delete, change or yank the current line completely,
type `dd`, `cc` or `yy`, respectively.

Paste yanked lines or characters with `p`.
