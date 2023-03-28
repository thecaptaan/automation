
echo "Vim Setup is initialized...."
sudo apt install vim -y
touch ~/.vimrc


echo '"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               '
echo '"               '
echo '"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗'
echo '"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝'
echo '"               ██║   ██║██║██╔████╔██║██████╔╝██║     '
echo '"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     '
echo '"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗'
echo '"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝'
echo '"               '
echo '"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   '


echo '" Disable compatibility with vi which can cause unexpected issues.' >> ~/.vimrc
echo "set nocompatible" >> ~/.vimrc

echo '" Enable type file detection. Vim will be able to try to detect the type of file in use.' >> ~/.vimrc
echo "filetype on" >> ~/.vimrc

echo '" Enable plugins and load plugin for the detected file type.' >> ~/.vimrc
echo "filetype plugin on" >> ~/.vimrc

echo '" Load an indent file for the detected file type.' >> ~/.vimrc
echo "filetype indent on" >> ~/.vimrc

echo '" Turn syntax highlighting on.' >> ~/.vimrc
echo "syntax on" >> ~/.vimrc

echo '" Highlight cursor line underneath the cursor horizontally.' >> ~/.vimrc
echo "set cursorline" >> ~/.vimrc

echo '" Add numbers to each line on the left-hand side.' >> ~/.vimrc
echo "set number" >> ~/.vimrc

echo '" Set shift width to 4 spaces.' >> ~/.vimrc
echo "set shiftwidth=4" >> ~/.vimrc

echo '" Set tab width to 4 columns.' >> ~/.vimrc
echo "set tabstop=4" >> ~/.vimrc

echo '" Use space characters instead of tabs.' >> ~/.vimrc
echo "set expandtab" >> ~/.vimrc

echo '" Do not save backup files.' >> ~/.vimrc
echo "set nobackup" >> ~/.vimrc

echo '" Do not let cursor scroll below or above N number of lines when scrolling.' >> ~/.vimrc
echo "set scrolloff=10" >> ~/.vimrc

echo '" Do not wrap lines. Allow long lines to extend as far as the line goes.' >> ~/.vimrc
echo "set nowrap" >> ~/.vimrc

echo '" While searching though a file incrementally highlight matching characters as you type.' >> ~/.vimrc
echo "set incsearch" >> ~/.vimrc

echo '" Ignore capital letters during search.' >> ~/.vimrc
echo "set ignorecase" >> ~/.vimrc

echo '" Override the ignorecase option if searching for capital letters.' >> ~/.vimrc
echo '" This will allow you to search specifically for capital letters.' >> ~/.vimrc
echo "set smartcase" >> ~/.vimrc

echo '" Show partial command you type in the last line of the screen.' >> ~/.vimrc
echo "set showcmd" >> ~/.vimrc

echo '" Show the mode you are on the last line.' >> ~/.vimrc
echo "set showmode" >> ~/.vimrc

echo '" Show matching words during a search.' >> ~/.vimrc
echo "set showmatch" >> ~/.vimrc

echo '" Use highlighting when doing a search.' >> ~/.vimrc
echo "set hlsearch" >> ~/.vimrc

echo '" Set the commands to save in history default number is 20.' >> ~/.vimrc
echo "set history=1000" >> ~/.vimrc

cd ..
# curl -o molokai.vim https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim