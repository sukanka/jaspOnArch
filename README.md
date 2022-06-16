# jaspOnArch
Build [jasp-desktop](https://github.com/jasp-stats/jasp-desktop) on Archlinux from source the arch way.

Current Progress: 
* Build: pass
* Run: Ok
* Test: Unknown.

**Note**: This project is now moved to [BioArchLinux](https://github.com/BioArchLinux/Packages/tree/master/BioArchLinux/jasp-desktop). 


## Needed R packages
The R modules of jasp need some dependencies from CRAN.
Hopefully, all of them can be found at [BioArchLinux](https://github.com/BioArchLinux/Packages).

Some dependencies are from github, not included in cran, they are 
- [x] [vandenman/conting](https://github.com/vandenman/conting)
- [x] [bayesstuff/stanova](https://github.com/bayesstuff/stanova)
- [x] [AlexanderLyNL/bstats](https://github.com/AlexanderLyNL/bstats)
- [x] [dustinfife/flexplot](https://github.com/dustinfife/flexplot)


## Jasp R module build status
### Common
- [x] jaspDescriptives
- [x] jaspTTests
- [x] jaspAnova
- [x] jaspMixedModels
- [x] jaspRegression
- [x] jaspFrequencies
- [x] jaspFactor

### Extra
- [x] jaspAudit
- [x] jaspBain
- [x] jaspCircular
- [x] jaspCochrane
- [x] jaspDistributions
- [x] jaspEquivalenceTTests
- [x] jaspJags
- [x] jaspLearnBayes
- [x] jaspMachineLearning
- [x] jaspMetaAnalysis
- [x] jaspNetwork
- [x] jaspProcessControl (not used in jasp-desktop currently)
- [x] jaspReliability
- [x] jaspSem
- [x] jaspSummaryStatistics
- [x] jaspVisualModeling
- [x] jaspProphet





## Acknowledgement
This project uses many packages from [BioArchLinux](https://github.com/BioArchLinux/Packages).

This project also uses [pkgbuild-generator-for-r](https://github.com/hubutui/pkgbuild-generator-for-r) to automatically generate PKGBUILDs for r packages, which are then contributed to [BioArchLinux](https://github.com/BioArchLinux/Packages).