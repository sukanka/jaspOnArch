#!/usr/bin/bash
modules=(
    #Common
    "jaspDescriptives"
    "jaspTTests"
    "jaspAnova"
    "jaspMixedModels"
    "jaspRegression"
    "jaspFrequencies"
    "jaspFactor"
    
    #Extra
    "jaspAudit"
    "jaspBain"
    "jaspCircular"
    "jaspCochrane"
    "jaspDistributions"
    "jaspEquivalenceTTests"
    "jaspJags"
    "jaspLearnBayes"
    "jaspMachineLearning"
    "jaspMetaAnalysis"
    "jaspNetwork"
    # "jaspProcessControl"
    "jaspReliability"
    "jaspSem"
    "jaspSummaryStatistics"
    "jaspVisualModeling"
    "jaspProphet"
    )

mkdir modules
for module in ${modules[@]}; do
    echo "adding ${module}"
    test -d r-${module,,} || cp -r r-jasptemplate modules/r-${module,,}
    sed -i "s|MODULE|${module}|g" modules/r-${module,,}/PKGBUILD
done


