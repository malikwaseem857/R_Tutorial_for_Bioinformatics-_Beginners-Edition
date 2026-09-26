
# Data Visulization in R ( Bar Chats)

# Vertical Bar Charts

snp_count <- c(17, 10, 2, 13)
print(snp_count)


sample_ID <- c("P001", "P002", "P003", "P004")
print(sample_ID)


# Plot the bar chart
barplot(snp_count)

# add the any color
barplot(snp_count, col= 'blue')
barplot(snp_count, col= 'orange')

# Add bar lables
barplot(snp_count, col= 'blue', names.arg= sample_ID)
# Add X and Y lables
barplot(snp_count, col='purple', names.arg= sample_ID,
        xlab='Sample', ylab= 'Number of snps' )

# Add a title 

barplot(snp_count, col='purple', names.arg= sample_ID,
        xlab='Sample', ylab= 'Number of snps', main = 'SNP Count' )


# Add the data lable ranges
# for data lables, we use the text function which requires x and y values

# set ylimit for the bar plot
y_axis_limit <- c(0, max(snp_count)*1.2)
print(y_axis_limit)

# assign the bar plot to a variable
bar_plot_object <- barplot(snp_count, ylim=y_axis_limit, col= 'brown',
                           names.arg=sample_ID,
                           xlab= 'Sample', ylab= 'Number of snps',
                           main= 'SNP Count')



text(x=bar_plot_object, y=snp_count+1, labels= snp_count)

# set color of the data labels
text(x=bar_plot_object, y=snp_count+1, labels= snp_count, col= 'blue')








# 





