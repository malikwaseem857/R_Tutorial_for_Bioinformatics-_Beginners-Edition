# Data Visulization in R ( Bar Chats)

# Horizontal Bar Charts

snp_count <- c(17, 10, 2, 13)
print(snp_count)


sample_ID <- c("P001", "P002", "P003", "P004")
print(sample_ID)
print(snp_count)
print(sample_ID)


# how to draw horizontal bar plots

barplot(snp_count, horiz= TRUE)


# add nore information such as lables


barplot(snp_count, horiz= TRUE, col= 'blue', names.arg = sample_ID)

# properly format the labels
barplot(snp_count, horiz= TRUE, col= 'blue', names.arg = sample_ID, cex.names =0.7)

# how to add axis
barplot(snp_count, horiz= TRUE, col= 'blue', names.arg = sample_ID,
        cex.names =0.7, cex.axis = 0.7)
# how to add more labels

barplot(snp_count, horiz= TRUE, col= 'blue', names.arg = sample_ID,
        cex.names =0.7, cex.axis = 0.7,
        xlab = 'Numbers of snps', ylab= 'Sample',
        main= 'SNP Count', cex.lab= 0.7)
