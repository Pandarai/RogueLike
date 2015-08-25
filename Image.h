#ifndef IMAGE_H
#define IMAGE_H

#include <iostream>
#include <cstdlib>
#include <fstream>
using namespace std;

class Image
{
private:
    string source;
public:
    Image();
    Image(string source){
        this->source = source;
    }
    
    void ImageMapper(){
        string buffer;
        string line;
        int lineCount = 0;
            ifstream image;
            image.open(source.c_str());
        if(image.is_open()){
            while ( getline (image,line) )
            {
                cout << line << "\n";
            }
            image.close();
        } else {
            cout << "Unable to locate " << source << " Image File.";
        }
    }
    
    void PrintImage(){
        ImageMapper();
    }

};

#endif // IMAGE_H
