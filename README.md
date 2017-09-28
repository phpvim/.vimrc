# GIT.io/VIM 

homepage [visit](https://GIT.io/VIM)

## Demo
![clipboard.png](https://sfault-image.b0.upaiyun.com/224/563/2245633107-59c80a2076074)

## Feature
- auto completion for PHP (Trigger: auto display or double <tab>) by phpcd.vim.
- goto definition for PHP (Trigger: &#96;kk to go, &#96;jj to back) by phpcd.vim.
- code folding for PHP (Trigger: auto fold, and zm to expand) by phpfold.vim
- morden ui theme by oceanic-next

## Install
```bash
curl -L -s https://git.io/ide | sh
```

## Trouble shooting
- Completion and definition mis-detecting: try to check if composer.json autoload/psr-4 is the mis-detected namespace defined?
- Display wrong channel 2: try `cd ~/.vim/plugged/phpcd.vim && composer update -vvv`
- Currently, GIT.io/VIM support and only support neovim.

## License
Copyleft
