# Lucas Pichette's .nvim

Leverages [AstroNvim](https://github.com/AstroNvim/AstroNvim)

Also consider reviewing my [.tmux.conf](https://github.com/lcpichette/tmux-conf/blob/main/.tmux.conf) uses tpm to synergize with this nvim conf

## Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Clone the repository

```shell
git clone https://github.com/lcpichette/nvim-config.git ~/.config/nvim
```

#### Start Neovim

```shell
nvim
```

## Preview

#### Demonstrating LSP working out of the gate on a file with multiple errors, and markdown preview in normal mode.

https://github.com/user-attachments/assets/b68d82eb-188e-4274-911f-12a3d2330466

#### Demonstrating harpoon

`<Leader>Ha` to Add a Harpoon target
`<Leader>Ht` to look at Harpoon targets with Telescope (fuzzy search)
`<Leader>Hl` to List Harpoon targets

https://github.com/user-attachments/assets/9994ad40-b68c-4fb0-9b15-c92c98b27cea

#### Demonstrating To-Dos

`<Leader>T` to view a list your todos/bugs/etc

https://github.com/user-attachments/assets/a2eba831-b598-47d5-a9fe-fa53d0289d7e


## Outstanding Differences

1. Harpoon
2. tmux-navigator
3. todo-highlighter
4. markview
5. updated colorscheme
6. Typescript support out the rip
7. custom autocmds and cmds that make life easier w/ plugins like harpoon
    1. Harpoon in particular can't be easily transferred from lazyvim to AstroVim as the way you declare mappings is a bit different. This fixes that, and instead of <leader>a and <C-h> we have <leader>Ha and <leader>Hl respectively. Having all Harpoon commands under <leader>H makes it easy to organize them and visually see them on which-key.
