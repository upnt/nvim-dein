local path = vim.fn.expand("<sfile>:h") .. "/vimrc";
vim.cmd("source " .. path);
