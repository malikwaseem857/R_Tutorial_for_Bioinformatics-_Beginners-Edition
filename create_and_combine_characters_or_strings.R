"Bioinformatics"

'hello world'

mychar <- "bioinformatics"
print(mychar)




DNA <- "TCGATCGA"
print(DNA)

# let check the character of DNA
typeof(DNA)  # it will show character

# lets check the type of mychar
typeof(mychar)


# lets check the total words 
nchar(DNA)
# similar to mychar
nchar(mychar)


# how to merge/combine character

mychar2 <- "hello world"


firstname <- "Waseem"
secondname <- "Akram"

# lets combine it
paste(firstname, secondname)

# lets create another character

fullname <- paste(firstname, secondname)
print(fullname)


paste('dna', 'rna', 'sequences')

# how to add separation in words

paste(firstname, secondname, sep = ',')
# lets add blank space
paste(firstname, secondname, sep = ' ')

DNA1 <- 'TCGATCGA'
DNA2 <- "TTGGAA"

paste(DNA1, DNA2)


# how to write letter in Uppercase letters

toupper(firstname)


# how to change upperase to lower case

tolower(DNA1)






