#include <iostream>
#include <cstdlib>
#include "MapLoader.h"
#include "RenderEngine.h"
#include "ConfigurationManager.h"
#include "Utilities.h"
#include "Image.h"
#include "Command.h"

using namespace std;

ConfigurationManager configuration;
MapLoader mapLoader;
RenderEngine renderEngine;
Utilities utility;
Command command;
int playerX, playerY;
string map;
int pos;

void init(){
    configuration = ConfigurationManager("next0.txt");
    mapLoader = configuration.GetMapLoader();
    renderEngine = configuration.GetRenderEngine();
    system("mode 650");
    utility = Utilities();
    playerX = 5;
    playerY = 7;
}

bool playerCanMove(char direction, char block){
    switch(block){
        case '/': return TRUE;
            break;
        case '^': return TRUE;
            break;
        case '\\': return TRUE;
            break;
        case '_': return TRUE;
            break;
        case '=': return TRUE;
            break;
        default:
            return FALSE;
    }
}

int main()
{ 
    init();
    map = mapLoader.FileMapper();
    int x = mapLoader.GetX();
    int y = mapLoader.GetY();
    char** mapArr = mapLoader.GetMap(map, x, y);
    char** safetyCopy = mapLoader.GetMap(map, x, y);
    ostringstream os;
    
        Image title = Image("title.txt");
        renderEngine.Render(title);
        getch();
        system("cls");
    mapArr[playerX][playerY] = '0';
    renderEngine.DrawMap(mapArr, x, y);
    
    while(true){
        mapArr[playerX][playerY] = safetyCopy[playerX][playerY];
        switch(getch()){
            case 'w': if(playerCanMove('w', safetyCopy[playerX][playerY-1])){playerY--;}
                break;
            case 's': if(playerCanMove('s', safetyCopy[playerX][playerY+1])){playerY++;}
                break;
            case 'a': if(playerCanMove('a', safetyCopy[playerX-1][playerY])){playerX--;}
                break;
            case 'd': if(playerCanMove('d', safetyCopy[playerX+1][playerY])){playerX++;}
                break;
            case '0': return EXIT_SUCCESS;
                break;
            default:
                break;
        }
        
        switch(command.Interact(safetyCopy[playerX][playerY])){
            case 'a':   pos++;
                        os.str("");
                        os << "next" << pos << ".txt";
                        mapLoader.SetPath(os.str());
                        renderEngine.SetEnvironment("fields");
                        map = mapLoader.FileMapper();
                        x = mapLoader.GetX();
                        y = mapLoader.GetY();
                        playerX = 20;
                        playerY = 2;
                        mapArr = mapLoader.GetMap(map, x, y);
                        safetyCopy = mapLoader.GetMap(map, x, y);
                break;
            case 'p':   pos--;
                        os.str("");
                        os << "next" << pos << ".txt";
                        mapLoader.SetPath(os.str());
                        renderEngine.SetEnvironment("house");
                        map = mapLoader.FileMapper();
                        x = mapLoader.GetX();
                        y = mapLoader.GetY();
                        playerX = 8;
                        playerY = 12;
                        mapArr = mapLoader.GetMap(map, x, y);
                        safetyCopy = mapLoader.GetMap(map, x, y);
                    break;
            case 'n':
                break;
        }
        system("cls");
        mapArr[playerX][playerY] = '0';
        renderEngine.DrawMap(mapArr, x, y);
    }
    
    return EXIT_SUCCESS;
    
}
