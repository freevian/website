# 第二次网站

## 需求

* 首页有视频模块
* 右上角又donate图标
* 

## Helpful Commands

### This will recursively list all files in the current directory

**/.next and /node_modules are not included**

``` powershell
Get-ChildItem -Path . -Recurse -File -Force | Where-Object { 
    $_.DirectoryName -notlike "*\.next\*" -and $_.DirectoryName -notlike "*\node_modules\*" 
} | Select-Object FullName
```