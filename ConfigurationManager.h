#ifndef CONFIGURATIONMANAGER_H
#define CONFIGURATIONMANAGER_H

#include "MapLoader.h"
#include "RenderEngine.h"

class ConfigurationManager
{
public:
    MapLoader mapLoader;
    RenderEngine renderEngine;
    ConfigurationManager();
    ConfigurationManager(string path){
        mapLoader = MapLoader(path);
        renderEngine = RenderEngine(mapLoader);
    }
    
    MapLoader GetMapLoader(){
        return mapLoader;
    }

    RenderEngine GetRenderEngine(){
        return renderEngine;
    }
};


#endif // CONFIGURATIONMANAGER_H
