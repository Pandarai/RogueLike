#ifndef COMMAND_H
#define COMMAND_H

#include <iostream>
#include <cstdlib>
#include <fstream>
using namespace std;

class Command
{
public:
    Command();
    
    char Interact(char currentBlock){
        switch(currentBlock){
            case '_': return 'a';
                break;
            case '^': return 'p';
                break;
            default: return 'n';
        }
    }
};

#endif // COMMAND_H
