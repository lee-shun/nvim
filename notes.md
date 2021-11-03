# if add ccls, with bug on ros

```json
    "languageserver": {
        "ccls": {
            "command": "ccls",
            "filetypes": [
                "c",
                "cc",
                "cpp",
                "c++",
                "objc",
                "objcpp"
            ],
            "rootPatterns": [
                ".ccls",
                "compile_commands.json",
                ".git/",
                ".hg/"
            ],
            "initializationOptions": {
                "highlight": {
                    "lsRanges": true
                }
            }
        },
    }

```
