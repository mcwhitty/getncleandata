#Present final data

## Merge data
final.df<-merge(meanDcast,stdDcast)

#show number of rows
nrow(final.df)
#[1] 180

#show number of columns
ncol(final.df)
#[1] 68

#write cleaned data to files
write.table(file="analysedData.txt",row.name=FALSE, x=final.df)