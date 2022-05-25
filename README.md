# jaspOnArch
Build [jasp-desktop](https://github.com/jasp-stats/jasp-desktop) on Archlinux from source the arch way.

Current Progress: 
* Build: pass
* Run: basically ok, some modules are not found.


Todo: write a script to generate pkgbuild from CRAN automatically, also dealing with dependencies.

## PKGBUILD Guideline for R packages.
1. Some r packages are provided by r itself, but doesn't appear in `provides`. 
```
base
compiler
datasets
graphics
grDevices
grid
methods
parallel
splines
stats
stats4
survival
tcltk
tools
translations
utils
```
They **may or may not** be written in `depends`, but if it is written in `depends`, it should be commented out. e.g.
```shell
depends=(r
# 'r-stats'
'r-ggplot2'
)
```

2. Other packages also provided by `r` itself, but **should always** be added to `depends` and commented out. They are 
```bash
boot
class
cluster
codetools
foreign
lattice
KernSmooth
MASS
Matrix
mgcv
nlme
nnet
rpart
spatial
```
A related issue can be found at https://bugs.archlinux.org/task/74850

## Needed R packages
The following are currently needed r packages, `optdepends` not included. The number is the time it is needed.

- [ ] 4 r-jaspttests
- [ ] 4 r-bayesfactor
- [ ] 3 r-semplot
- [ ] 2 r-metabma
- [ ] 2 r-jaspanova
- [x] 2 r-boot
- [ ] 2 r-afex
- [ ] 1 r-weightr
- [ ] 1 r-weibullness
- [ ] 1 r-vcdextra
- [ ] 1 r-toster
- [x] 1 r-stats
- [ ] 1 r-sgt
- [ ] 1 r-semtools
- [ ] 1 r-rstanarm
- [ ] 1 r-rspc
- [ ] 1 r-robma
- [ ] 1 r-restriktor
- [ ] 1 r-rcsdp
- [ ] 1 r-qcc
- [ ] 1 r-prophet
- [ ] 1 r-onewaytests
- [ ] 1 r-neuralnet
- [ ] 1 r-mle.tools
- [x] 1 r-mgcv
- [ ] 1 r-metamisc
- [ ] 1 r-mdscore
- [ ] 1 r-kernsmooth
- [ ] 1 r-jfa
- [ ] 1 r-jaspsem
- [ ] 1 r-jaspregression
- [ ] 1 r-jaspmetaanalysis
- [ ] 1 r-jaspfrequencies
- [ ] 1 r-isingsampler
- [ ] 1 r-hmeasure
- [x] 1 r-grid
- [x] 1 r-grdevices
- [ ] 1 r-gparotation
- [ ] 1 r-gnorm
- [ ] 1 r-gmedian
- [ ] 1 r-ggpol
- [ ] 1 r-ggparty
- [ ] 1 r-frf2
- [ ] 1 r-fadist
- [ ] 1 r-doe.base
- [ ] 1 r-digittests
- [ ] 1 r-desirability
- [ ] 1 r-daewr
- [ ] 1 r-cluster
- [ ] 1 r-bootnet
- [ ] 1 r-bayestools
- [ ] 1 r-bayesrel
- [ ] 1 r-bayesplay
- [ ] 1 r-bayesfactor 
- [ ] 1 r-bas
- [ ] 1 r-bain
- [ ] 1 r-auc
- [ ] 1 r-abtest

## Jasp R module build status
### Common
- [x] jaspDescriptives
- [ ] jaspTTests
- [ ] jaspAnova
- [ ] jaspMixedModels
- [ ] jaspRegression
- [ ] jaspFrequencies
- [ ] jaspFactor

### Extra
- [ ] jaspAudit
- [ ] jaspBain
- [x] jaspCircular
- [ ] jaspCochrane
- [ ] jaspDistributions
- [ ] jaspEquivalenceTTests
- [x] jaspJags
- [ ] jaspLearnBayes
- [ ] jaspMachineLearning
- [ ] jaspMetaAnalysis
- [ ] jaspNetwork
- [ ] jaspProcessControl (not used in jasp-desktop currently)
- [ ] jaspReliability
- [ ] jaspSem
- [ ] jaspSummaryStatistics
- [x] jaspVisualModeling
- [ ] jaspProphet





## Acknowledgement
This project uses many packages from [BioArchLinux](https://github.com/BioArchLinux/Packages).