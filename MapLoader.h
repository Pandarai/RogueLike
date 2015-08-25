#ifndef Included_NameModel_H
#define Included_NameModel_H

#include <iostream>
#include <cstdlib>
#include <fstream>
#include <vector>
using namespace std;

class MapLoader
{
private:
    string path;
    int x;
    int y = 5;
public:
    MapLoader(string path){
        this->path = path;
    }
    MapLoader();
    
    string GetPath(){
        return path;
    }
    
    void SetPath(string path){
        this->path = path;
    }
    
    string FileMapper(){
        string buffer;
        string line;
        int lineCount = 0;
            ifstream mapFile;
            mapFile.open(path.c_str());
            if(mapFile.is_open()){
                while ( getline (mapFile,line) )
                {
                  lineCount++;
                  buffer += line;
                }
                mapFile.close();
                x = line.size();
                y = lineCount;
            } else {
                cout << "Unable to locate " << path << " Map File.";
            }
        return buffer;
    }
    
    int GetX(){
        return this->x;
    }
    
    int GetY(){
        return this->y;
    }
    
    char** GetMap(string map, int x, int y){
        char** mapArr = 0;
        mapArr = new char*[x];
        for(int k = 0; k < x; k++){
            mapArr[k] = new char[y];
        }
        for(int j = 0; j < y; j++){
            for(int i = 0; i < x; i++){
                mapArr[i][j] = map.at((x*j)+i);
            }
        }
        return mapArr;
    }
};

#endif // MAPLOADER_H