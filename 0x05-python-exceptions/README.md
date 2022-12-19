## Python - Exceptions

### Syntax Errors
Syntax errors, also known as parsing errors,the parser repeats the offending line and displays a little arrow pointing at the earliest point in the line where the error was detected. The error is caused by (or at least detected at) the token preceding the arrow.

### Exceptions
Even if a statement or expression is syntactically correct, it may cause an error when an attempt is made to execute it. Errors detected during execution are called exceptions and are not unconditionally fatal.


### Handling Exceptions
It is possible to write programs that handle selected exceptions.
The try statement works as follows.

First, the try clause (the statement(s) between the try and except keywords) is executed.

If no exception occurs, the except clause is skipped and execution of the try statement is finished.

If an exception occurs during execution of the try clause, the rest of the clause is skipped. Then, if its type matches the exception named after the except keyword, the except clause is executed, and then execution continues after the try/except block.

If an exception occurs which does not match the exception named in the except clause, it is passed on to outer try statements; if no handler is found, it is an unhandled exception and execution stops with a message as shown above.

A try statement may have more than one except clause, to specify handlers for different exceptions. At most one handler will be executed. Handlers only handle exceptions that occur in the corresponding try clause, not in other handlers of the same try statement. An except clause may name multiple exceptions as a parenthesized tuple.


