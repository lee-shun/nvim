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
                "cache": {
                    "directory": "/tmp/ccls"
                },
                "highlight": {
                    "lsRanges": true
                },
                "clang": {
                    "extraArgs": [
                        "-I",
                        "/opt/ros/melodic/include/ /home/ls/catkin_ws/devel/include/dji_osdk_ros/"
                    ]
                }
            }
        }
    }

```
