#ifndef RENDERENGINE_H
#define RENDERENGINE_H
#include "MapLoader.h"
#include "rlutil.h"
#include "Image.h"

class RenderEngine
{
private:
       string environment = "house";
public:
    MapLoader mapLoader;
    RenderEngine(MapLoader mapLoader){
        this->mapLoader = mapLoader;
    }
    RenderEngine();
    
    void SetEnvironment(string environment){
        this->environment = environment;
    }
    
    string GetEnvironment(){
        return this->environment;
    }
    
    void DrawMap(char** mapArr, int x, int y){
        for(int j = 0; j < y; j++){
            for(int i = 0; i < x; i++){
                if(i % x == 0){
                    cout << "\n";
                }
                switch(mapArr[i][j]){
                    case '#': rlutil::setColor(15); printf("%c", 178); rlutil::setColor(7);
                        break;
                    case '/': if(GetEnvironment() == "fields"){rlutil::setColor(2);}else{rlutil::setColor(8);}
                              printf("%c", 176); rlutil::setColor(7);
                        break;
                    case '\\': if(GetEnvironment() == "fields"){rlutil::setColor(6);}else{rlutil::setColor(7);}
                              printf("%c", 176); rlutil::setColor(7);
                        break;
                    case 'w': rlutil::setColor(3);  printf("%c", 176); rlutil::setColor(7);
                        break;
                    case 'h': rlutil::setColor(2);  printf("%c", 178); rlutil::setColor(7);
                        break;
                    case '-': rlutil::setColor(15);  printf("%c", 205); rlutil::setColor(7);
                        break;
                    case '0': rlutil::setColor(3); printf("%c", 4); rlutil::setColor(7);
                        break;
                    case '|': rlutil::setColor(15); printf("%c", 186);; rlutil::setColor(7);
                        break;
                    case '=': rlutil::setColor(8); printf("%c", 177);; rlutil::setColor(7);
                        break;
                    case '1': rlutil::setColor(15); printf("%c", 201); rlutil::setColor(7);
                        break;
                    case '2': rlutil::setColor(15); printf("%c", 200); rlutil::setColor(7);
                        break;
                    case '3': rlutil::setColor(15); printf("%c", 187); rlutil::setColor(7);
                        break;
                    case '4': rlutil::setColor(15); printf("%c", 188); rlutil::setColor(7);
                        break;
                    case 'l': rlutil::setColor(15); printf("%c", 204); rlutil::setColor(7);
                        break;
                    case 'r': rlutil::setColor(15); printf("%c", 185); rlutil::setColor(7);
                        break;
                    case '_': rlutil::setColor(9); printf("%c", 95); rlutil::setColor(7);
                        break;
                    case '^': rlutil::setColor(5); printf("%c", 178); rlutil::setColor(7);
                        break;
                    case 't': rlutil::setColor(15); printf("%c", 203); rlutil::setColor(7);
                        break;
                    case 'i': rlutil::setColor(15); printf("%c", 202); rlutil::setColor(7);
                        break;
                    case 'y': rlutil::setColor(2); printf("%c", 5); rlutil::setColor(7);
                        break;
                    case 'u': rlutil::setColor(2); printf("%c", 6); rlutil::setColor(7);
                        break;
                    default: cout << "@";
                }
            }
        }
    }
    
    void Render(Image image){
        image.PrintImage();
    }
};

#endif // RENDERENGINE_H
