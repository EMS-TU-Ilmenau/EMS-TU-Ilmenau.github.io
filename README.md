# EMS Hub Website

## Developers

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
