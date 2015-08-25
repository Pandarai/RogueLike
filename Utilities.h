#ifndef UTILITIES_H
#define UTILITIES_H

class Utilities
{
public:
    Utilities();
    int GetCharAscii(char input){
        int a = input;
        return a;
    }
    
    char GetChar(int input){
        return (char) input;
    }
};

#endif // UTILITIES_H
