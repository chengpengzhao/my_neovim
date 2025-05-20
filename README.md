# INSTALL


1. install `nvim` in `app` directory;  
2. copy nvim plugin to `~/.local/share/nvim`:  in `app` directory, run `./install_plugin.sh`;  
2. copy coc.vimm plugin to `~/.config/coc`:  in `app` directory, run `./install_plugin.sh`;  
3. install `ccls`:  `sudo apt-get install ccls`;  
4. install `node` in `app` directory;  
5. install `python3` and `pip`, then `python3 -m pip install --user --upgrade pynvim`;  
6. install `clangd`:  `sudo apt-get install clangd`;  
7. install `clang-format`:  `sudo apt-get install clang-format`;  

# Problem

- `version 'GLIBC_2.34' not found` in old Ubuntu

```bash
sudo vi /etc/apt/sources.list
deb http://th.archive.ubuntu.com/ubuntu jammy main    #higher version
sudo apt update
sudo apt install libc6
strings /lib/x86_64-linux-gnu/libc.so.6 |grep GLIBC_
```
