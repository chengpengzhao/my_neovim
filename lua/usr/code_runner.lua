require('code_runner').setup {
  term = {
    position = "belowright",
    size = 15,
  },
  filetype = {
    python = "python3 $file",
    c = "cd $dir && gcc -Wall -lpthread -fno-omit-frame-pointer -pg -g -lm $fileName -o $fileNameWithoutExt.out  && $dir/$fileNameWithoutExt.out",
    cpp = "cd $dir && g++ -lpthread -g $fileName -o $fileNameWithoutExt.out  && $dir/$fileNameWithoutExt.out",
    sh = "bash $file",
    rust = "cargo run",
    r = "Rscript $file",
    lua = "lua $file",
    nix = "nix eval -f $file",
  },
}
