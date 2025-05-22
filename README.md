# EMS Hub Website

This repository is ment to be the development place for our EMS-Hub webpage 
hosted via github pages. When the content is ready to be released, the changes
have to be pushed to the corresponding github repository.

### Contributing

This page is build with the hugo framework, which provides simple tools to
generate and build the webpage. To contribute to the following steps:

1. Clone this repository (including submodules)
    * Requires you to be able to clone the emshub-theme repository from GitHub (https://github.com/EMS-TU-Ilmenau/emshub-theme).
    * At minimum, if using SSH, configure your public key with a GitHub account. Alternatively, download a zip of the emshub-theme (should be possible).

2. Clone and install or download a binary of hugo and place it somewhere in your PATH
    * Instructions at https://gohugo.io/installation/

Execute ```hugo server``` in the main directory of this repo to build the 
webpage locally to be available at localhost.

To add new content execute e.g. ```hugo new content/docs/mynewdoc```. This
generates a new markdown file *content/docs/mynewdoc/index.md*, where the
content has to be added. In order to actually make the new page visible on
the build website, you have to set the attribute ```draft=false``` at the top of 
the index.md file.

## Details

### Cloning
After cloning, remember to pull the theme from the submodule
```
git submodule update --init --recursive
```

If you are working on `makalu69` the firewall blocks Github-SSH access.
Change the path in the `.gitmodules` to the https-version, then run
```
git submodule sync
```

and then update the submodules again. 

### Running the server
Run the server with 
```
hugo server -D
```

to include the pages marked as drafts.
