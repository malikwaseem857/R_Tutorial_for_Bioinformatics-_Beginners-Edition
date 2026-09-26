# Using a real world data / Plot by importing data

data_url <- "https://raw.githubusercontent.com/vappiah/bioinformatics-tutorials/refs/heads/main/R-tutorials/datasets/snp_count.csv"


# how to store the data

df <- read.csv(data_url, row.names= 1)
print(df)


# how to check the paritcular sample
plot_values <- df[, 'sample3']
print(plot_values)

# check the row names
bar_labels <- row.names(df)
print(bar_labels)


# create the bar plots
barplot(plot_values, col= 'brown', names.arg = bar_labels,
        xlab= 'Chromosome', ylab= 'Number of snps',
        main = 'SNP Count per chromosome')




# Stacked Bar charts

# import data from URL

data_url <- "https://raw.githubusercontent.com/vappiah/bioinformatics-tutorials/refs/heads/main/R-tutorials/datasets/snp_count.csv"
# how to store the data

df <- read.csv(data_url, row.names= 1)
print(df)


# convert dataframe object into matrix
df <- as.matrix(df)

# how to check the class of datafrome
class(df)
print(df)


# define colors to be used for chromosomes

colors <- c('green', 'orange', 'brown', 'pink' )
print(colors)


# sample names or sample_ID
sample_id <- colnames(df)
print(sample_id)

# draw barplot
# basic bar plot
barplot(df)


# add colors
barplot(df,col=colors)


# add labels
barplot(df,col=colors, xlab= 'Sample', ylab= 'No. of snps',
        main = 'SNP Count per chromome')

# add legend to display colors of the chromosomes
legend("topleft", row.names(df))

# define chromosomes
chromosomes <- row.names(df)


# add legend and properly format
barplot(df,col=colors, xlab= 'Sample', ylab= 'No. of snps',
        main = 'SNP Count per chromome')
legend("topleft", chromosomes, cex=0.7, fill=colors)

# save this plot in pdf
# Open a PDF device
pdf("SNP_Count_per_chromosome.pdf", width = 8, height = 6)

# Your plot code
barplot(df, col = colors, xlab = 'Sample', ylab = 'No. of snps',
        main = 'SNP Count per chromosome')
legend("topleft", chromosomes, cex = 0.7, fill = colors)

# Close the PDF device (this actually writes the file)
dev.off()






# Grouped Bar Chart
# same we need to import of data
# import data from URL

data_url <- "https://raw.githubusercontent.com/vappiah/bioinformatics-tutorials/refs/heads/main/R-tutorials/datasets/snp_count.csv"

df <- read.csv(data_url, row.names= 1)
print(df)


# convert dataframe object into matrix
df <- as.matrix(df)

# how to check the class of datafrome
class(df)
print(df)

# define chromosomes

chromosomes <- row.names(df)
colors <- c('green', 'orange', 'brown', 'pink')
print(colors)

print(df)

# sampl Ids or sample names

sample_id <- colnames(df)
print(sample_id)


# plot the grouped bar chart
barplot(df, beside=TRUE)

# now assign color to each group
barplot(df, beside=TRUE, col= colors)


 # add mroe information
barplot(df, beside=TRUE, col= colors, 
        xlab= "Sample", ylab= "Number of snps",
        main= "SNP Count per chromosomes per Sample ")


# add legened
legend("topleft", chromosomes, cex=0.7, fill=colors)

# how to save it or Open PDF device
pdf("SNP_Count_per_chromosome_per_sample.pdf", width = 10, height = 7)

# Grouped barplot
barplot(df, beside = TRUE, col = colors,
        xlab = "Sample", ylab = "Number of snps",
        main = "SNP Count per chromosomes per Sample")

# Legend
legend("topleft", chromosomes, cex = 0.7, fill = colors)

# Close device (writes the file)
dev.off()


