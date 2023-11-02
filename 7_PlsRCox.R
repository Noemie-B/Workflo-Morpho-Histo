#install.packages("devtools")
#devtools::install_github("fbertran/plsRcox")

library(plsRcox)
library(MASS)
library(ipred)

df_PCNSL_PSL<- read.csv("/media/user/Seagate_RNA/PCNSL_PSL/5_df_survie/with_zscore/df_median.csv")

X_PCNSL_PSL_radiomics = df_PCNSL_PSL[-c(1:2, 477:482)]
X_PCNSL_PSL_clinical = df_PCNSL_PSL[-c(1:476, 481:482)]
X_PCNSL_PSL_tot = df_PCNSL_PSL[-c(1:2,481:482)]

y = df_PCNSL_PSL[c(481:482)]
y$time = y$Overall.Survival.Months
y$censor = y$censor

##RADIOMICS
set.seed(678)
#set.seed(234)

(cv.plsRcox.res=cv.plsRcox(list(x=X_PCNSL_PSL_tot,time=y$time,status=y$censor),nt=20,nfold = 5, plot.it = T, allCVcrit = T, scaleX = FALSE)) #or X_PCNSL_PSL_clinical or X_PCNSL_PSL_radiomics 

plsRcox_PCNSL_PSL.res <- plsRcox(X_PCNSL_PSL_tot,time=y$time,event=y$censor,nt=15, pvals.expli = TRUE,allres = T, sparse=TRUE, scaleX = FALSE)
plsRcox_PCNSL_PSL.res$FinalModel$concordance['std']
plsRcox_PCNSL_PSL.res$FinalModel$concordance['concordance']