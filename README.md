# jaspOnArch
Build Jasp on Archlinux

Current Progress: failed with 
```
...
[  7%] Building CXX object Common/CMakeFiles/Common.dir/jaspColumnEncoder/json/json_writer.cpp.o
Warning in install.packages(c("ggplot2", "gridExtra", "gridGraphics", "jsonlite",  :
  'lib = "/usr/lib/R/library"' is not writable
Error in install.packages(c("ggplot2", "gridExtra", "gridGraphics", "jsonlite",  : 
  unable to install packages
Execution halted
make[2]: *** [CMakeFiles/jaspBase.dir/build.make:75: Modules/jaspBase-installed-successfully.log] Error 1
make[1]: *** [CMakeFiles/Makefile2:186: CMakeFiles/jaspBase.dir/all] Error 2
make[1]: *** Waiting for unfinished jobs....
```
We have to package `r-jaspbase` [jaspBase](https://github.com/jasp-stats/jaspBase) to archlinux,
which further depends on the follow R packages (some of them are not in AUR or [bioarchlinux](https://github.com/BioArchLinux/Packages))
```R
if ('jaspBase' %in% installed.packages()) {
  cat(NULL, file='/tmp/makepkg/jasp-desktop/src/jasp-desktop-0.16.2/build/Modules/jaspBase-installed-successfully.log')
} else {
  install.packages(c('ggplot2', 'gridExtra', 'gridGraphics',
                    'jsonlite', 'modules', 'officer', 'pkgbuild',
                    'plyr', 'qgraph', 'ragg', 'R6', 'renv',
                    'rjson', 'rvg', 'svglite', 'systemfonts',
                    'withr', 'testthat',
                    'data.table', 'httr', 'lifecycle',
                    'pkgload', 'remotes', 'stringi', 'stringr',
                    'vdiffr'), type='source', repos='http://cran.r-project.org' , lib='/usr/lib/R/library')
  install.packages('/tmp/makepkg/jasp-desktop/src/jasp-desktop-0.16.2/Engine/jaspBase/', type='source', repos=NULL , lib='/usr/lib/R/library',INSTALL_opts='--no-multiarch --no-docs --no-test-load')
}
```

Now, all dependencies are put in `makedepends`, when it is able to build the package, the dependencies will be then be checked carefully.