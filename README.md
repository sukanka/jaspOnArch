# jaspOnArch
Build [jasp-desktop](https://github.com/jasp-stats/jasp-desktop) on Archlinux from source the arch way.

Current Progress: 
* Build: pass
* Run: basically ok, some modules are not found.

## Needed R packages
The R modules of jasp need some dependencies from CRAN.
Hopefully, all of them can be found at [BioArchLinux](https://github.com/BioArchLinux/Packages).



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

This project also uses [pkgbuild-generator-for-r](https://github.com/hubutui/pkgbuild-generator-for-r) to automatically generate PKGBUILD for r packages.