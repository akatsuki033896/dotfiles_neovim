## nvim-treesitter

dependencies(WINDOWS): LLVM, cargo(rustup-init.exe)

### install tree-sitter-cli

windows使用rust的cargo安装，让cargo可以找到`libclang.dll`，添加一个新的环境变量，unix环境使用系统自带的包管理器安装

```bash
$env:LIBCLANG_PATH="YOUR_PATH_TO_LLVM\LLVM\bin"
```
