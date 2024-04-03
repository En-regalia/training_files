Notes on the Python Basics

Variables - Things that you define not the ususal named functions such as 'If'

Expressions - Code that returns a value.
    Eg - 1+1 will return 2
Statments - Things that will do somthing to the Expressions

        One thing you can also do is to ';' to split in the same way as you do the next line

        name = 'Mike'
        print(name)

        Is the same as

        name = 'Mike'; print(name)

Data types
        Can use the 'type' function to find the data type
        type(name)
        also can use
        isinstance(name, str)
            Will return True

    Strings = Most of these are text data eg the name above is Mike
    interger = Whole numbers
    Float = decimel numbers
    booleian = True or False Essentally values that can only be one or the other

Operators essentally things that can be used in Statmets e.g. +
Important note about operators is that they can be combined += example
    arithmical
    ** = Squarered
    // = floor devision (Rounds down to the closest int)
    + = Can be used in both arithmical and to combine ints.

        Combined example    
            age = 8
            age = age + 1
                this is the same as
            age = 8
            age += 8
                can also be age -=8 
    comparible Operators
        == = Equal to
        != = Not equal too
        < - Less than
        > = greater than
    booleian operators Simaler to the above these can either be set values and will only output booleian output (True or False)
        Not
        and
        or (This actualy produces the first Non-False value or the final value)
    Bitwise operators
            
    is and in operators
        in = owership operation (used in lists to look in lists)
    
    Turnary operators
        Essneally combines the If statements if needed. The next two statments are the same but more efficent in the second

        def adult:
            if age > 18
                return 'adult'
            else
                return 'child
        
        def adult:
            return 'adult' if age > 18 else 'child'        '


booleian Queries

Looking at if fiunctions, essentally checking to see if they are true or False.
    Strings are false only when empty
    Can also use the two following functions
        any([example1, example2]) - This will confirm if any of the values (need to be formatted in a list) are true, it will return True.
        all([example1, example2]) - This will confirm if all of the values (need to be formatted in a list) are true, it will return True. if not will return false. 
            NOTE:If data is put in that is not booleian then will ignore

Complex Numbers

Python can deal with complex numbers in the same way that maths does with the appex 'J' rather than the usual i 

Numbers
    abs(-22) = this finction will make the number +value
    round(5.43,1) = This will round to the first DP. this changes with the '1' value in the function.

    There is also a function that can be used to create a constant but this needs to be imported. from enum
        from enum import Enum

        class State(Enum)
            constant1 = 0
            constant2 = 1

    This will endable the class to be set as 'state' and the two variables are set below. meaning to extract the value of the constant use 'state.constant1.value'
    can also use the function list(State) to list the constants within 'State'. As well as Len to count the nubmer of constants in 'State'

User input

Main fuction to use is the input() function. Usually you will need to asign a varable to the input. user_input = input()

lists

These are essentally Python data types. and can be any types of data (booleian, interger, string) 

Dictionary

These are data sets that contact 'keys' These are referances that alow the data to be pulled. Eg
    game = {'xbox' : 'Halo', 'PS' : 'Hell Divers', 'console' : 'Switch'}
    print(game['xbox']) will output 'Halo'

    There are a number of ways to manipulate a Dictionary 
        .get = this will return the value. One key note about get is that it will alow you to enter a default value should the key not be found. game.get('dreamcast', 'Console not found') will return the second if the key is not found
        .pop = will return the last value but also then remove this from the list. 
        .values = Will return only the values in the Dictionary
        .keys = Will return only the keys in the Dictionary
    
    To add to a Dictionary just use the Dictionary ref and the = sign. So like game['dreamcast'] = 'Sonic adventure' will add ['dreamcast' : 'Sonic adventure'] to the Dictionary.

sets

Sets are very Simaler to lists however, these data sets are not sorted and therefore cannot be referanced in the same way as lists. these are more efficent than list so if you are just storing infomraiton then sets are better
you can combine sets but also unlike lists, sets cannot have duplicat values. so if you need to combine sets to have no duplicate values then use a set. 

functions

Essentally a block of code/program where you can call on throughout the program. in the below the function is called hello and instead of putting print(hello) you will just need to type hello and it will call the function
    def hello():
        print('Hello')

    You can also add in arguments to the function
    
    def hello(name)
        print('Hello' + name)

    This will need to be run as hello('Mike') as it will not run without the argument. You can make it optional with the = sign int he below DEFAULT will output if there is no argument entered when calling the function.

    def hello(name='DEFAULT')
        print('Hello' + name)

You can also define and make functions within functions. These are functions that will only be usefull inside the functions. There are some comlications when calling varables and using nested functions
        nonlocal = used to referance functions outside the nexted function
        global = can be used to call on a referance outside of the fuction. 