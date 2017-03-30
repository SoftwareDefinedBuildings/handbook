#EXAMPLE: Car Class
class Car:

    #Constructor
    def __init__(self, brandName, colorName): #Method header, with parameters
        #Assign parameters to variables
        self.brand = brandName
        self.color = colorName
        self.features = [] #Creates an array

    #EXAMPLE: For Loop
    def sampleForLoop(self):
        fruitsArray = ['banana', 'apple',  'mango']
        for fruit in fruitsArray:
            print('Current fruit: ', fruit)

    #EXAMPLE: While Loop
    def sampleWhileLoop(self):
        count = 0
        while count < 5:
            print('Current count: ', count)
            count += 1

    #EXAMPLE: If-Else / Conditional
    def sampleConditional(self, number):
        if (number > 5):
            print('Greater than 5!')
        else:
            print('Less than or equal to 5!')

    #EXAMPLE: Using variables in methods
    def addTrick(self, newFeature):
        self.features.append(newFeature) #Remember, tricks is in the constructor
        print('New feature added: ', newFeature)

Car("Porsche", "red") #EXAMPLE: Creating a new object
myCar = Car("BMW", "blue") #EXAMPLE: Creating a new object and Assigning to variable

#EXAMPLE: Calling a method
myCar.sampleConditional(5)
myCar.addTrick("GPS Navigation")
myCar.sampleWhileLoop()
