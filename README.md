# jaspOnArch
Build [jasp-desktop](https://github.com/jasp-stats/jasp-desktop) on Archlinux from source the arch way.

Current Progress: 
* Build: pass
* Run: basically ok, only some modules are packed currently.

Todo: add `group=('r-jasp')` for all jasp modules.

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

This project also uses [pkgbuild-generator-for-r](https://github.com/hubutui/pkgbuild-generator-for-r) to automatically generate PKGBUILDs for r packages, which are then contributed to [BioArchLinux](https://github.com/BioArchLinux/Packages).