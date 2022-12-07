## More Data Structures: Set, Dictionary

### Lambda Operator, filter, reduce and map
The lambda operator or lambda function is a way to create small anonymous functions, i.e. functions without a name. These functions are throw-away functions, i.e. they are just needed where they have been created. Lambda functions are mainly used in combination with the functions filter(), map() and reduce(). The lambda feature was added to Python due to the demand from Lisp programmers.

The general syntax of a lambda function is quite simple:

lambda argument :list: expression

The argument list consists of a comma separated list of arguments and the expression is an arithmetic expression using these arguments. You can assign the function to a variable to give it a name.

### The map() Function
As we have mentioned earlier, the advantage of the lambda operator can be seen when it is used in combination with the map() function. map() is a function which takes two arguments:

r = map(func, seq)

The first argument func is the name of a function and the second a sequence (e.g. a list) seq. map() applies the function func to all the elements of the sequence seq. Before Python3, map() used to return a list, where each element of the result list was the result of the function func applied on the corresponding element of the list or tuple "seq". With Python 3, map() returns an iterator.

### Mapping a List of Functions
The map function of the previous chapter was used to apply one function to one or more iterables. We will now write a function which applies a bunch of functions, which may be an iterable such as a list or a tuple.


### Filtering
The function:

filter(function, sequence)

offers an elegant way to filter out all the elements of a sequence "sequence", for which the function function returns True. i.e. an item will be produced by the iterator result of filter(function, sequence) if item is included in the sequence "sequence" and if function(item) returns True.

In other words: The function filter(f,l) needs a function f as its first argument. f has to return a Boolean value, i.e. either True or False. This function will be applied to every element of the list l. Only if f returns True will the element be produced by the iterator, which is the return value of filter(function, sequence).

### Reducing a List
The function:

reduce(func, seq)

continually applies the function func() to the sequence seq. It returns a single value.

If seq = [ s1, s2, s3, ... , sn ], calling reduce(func, seq) works like this:

At first the first two elements of seq will be applied to func, i.e. func(s1,s2) The list on which reduce() works looks now like this: [ func(s1, s2), s3, ... , sn ]
In the next step func will be applied on the previous result and the third element of the list, i.e. func(func(s1, s2),s3)
The list looks like this now: [ func(func(s1, s2),s3), ... , sn ]
Continues like this until just one element is left and returns this element as the result of reduce().








